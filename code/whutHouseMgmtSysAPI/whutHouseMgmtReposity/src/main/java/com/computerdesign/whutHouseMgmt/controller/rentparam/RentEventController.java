package com.computerdesign.whutHouseMgmt.controller.rentparam;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.computerdesign.whutHouseMgmt.bean.Msg;
import com.computerdesign.whutHouseMgmt.bean.internetselecthouse.StaffSelectHouse;
import com.computerdesign.whutHouseMgmt.bean.rentparam.RentEvent;
import com.computerdesign.whutHouseMgmt.bean.rentparam.RentEventModel;
import com.computerdesign.whutHouseMgmt.bean.staffmanagement.Staff;
import com.computerdesign.whutHouseMgmt.bean.staffparam.StaffParameter;
import com.computerdesign.whutHouseMgmt.service.internetselecthouse.StaffSelectHouseService;
import com.computerdesign.whutHouseMgmt.service.rentparam.RentEventService;
import com.computerdesign.whutHouseMgmt.service.staffmanagement.StaffService;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@RequestMapping("/rentEvent/")
@Controller
public class RentEventController {

	@Autowired
	private RentEventService rentEventService;

	@Autowired
	private StaffSelectHouseService staffSelectHouseService;

	@Autowired
	private StaffService staffService;

	@ResponseBody
	@RequestMapping(value = "modify", method = RequestMethod.PUT)
	public Msg modifyRentEvent(@RequestBody RentEventModel rentEventModel) {
		RentEvent rentEvent = rentEventService.get(rentEventModel.getRentEventId());
		if (rentEvent.getRentIsOpenSel() == false) {
			return Msg.error("只能编辑正在使用的选房规则");
		}
		//允许为当前时间前一小时范围内
		if(rentEventModel.getRentTimeBegin().getTime() < (new Date().getTime() - 3600000)){
			return Msg.error("选房开始时间必须在当前时间之后");
		}
		System.out.println(rentEventModel.getRentTimeBegin());
		if (rentEvent != null) {
			rentEvent.setRentSelValReq(rentEventModel.getRentSelValReq());
			rentEvent.setRentSelRules(rentEventModel.getRentSelRules());
			rentEvent.setRentTimeBegin(rentEventModel.getRentTimeBegin());
			rentEvent.setRentTimeRanges(rentEventModel.getRentTimeRanges());

			// 每日选房时间范围
			// Integer dayRentTimeBegin = rentEventModel.getDayRentTimeBegin();
			// Integer dayRentTimeEnd = rentEventModel.getDayRentTimeEnd();

			// 获取每日选房开始时间
			String dayRentTimeBegin = rentEventModel.getDayRentTimeBegin();
			Integer dayRentTimeBeginHour = Integer.parseInt(dayRentTimeBegin.split(":")[0]);
			Integer dayRentTimeBeginMin = Integer.parseInt(dayRentTimeBegin.split(":")[1]);

			// 获取每日选房结束时间
			String dayRentTimeEnd = rentEventModel.getDayRentTimeEnd();
			Integer dayRentTimeEndHour = Integer.parseInt(dayRentTimeEnd.split(":")[0]);
			Integer dayRentTimeEndMin = Integer.parseInt(dayRentTimeEnd.split(":")[1]);

			System.out.println(dayRentTimeBeginHour + "-" + dayRentTimeBeginMin + "-" + dayRentTimeEndHour + " - "
					+ dayRentTimeEndMin);

			// if(dayRentTimeEndHour < 0 || dayRentTimeBegin > 24 ||
			// dayRentTimeEnd < 0 || dayRentTimeEnd > 24){
			// return Msg.error("每日选房时间范围只能在0~24之间");
			// }

			rentEvent.setDaySelectTimeRange(dayRentTimeBegin + "~" + dayRentTimeEnd);

			rentEventService.update(rentEvent);

			// 获取设置的选房开始时间以及选房时间
			Date rentTimeBegin = rentEvent.getRentTimeBegin();
			Calendar calendar = Calendar.getInstance();
			calendar.setTime(rentTimeBegin);

			// 创建哈希表key为staffId,值为totalValue
			HashMap<Integer, Double> staffScore = new HashMap<Integer, Double>();
			// 获取StaffSelectHouse数据库中所有canselect数据
			List<StaffSelectHouse> staffSelectHouses = staffSelectHouseService.getAll();
			// 将数据添加至哈希表
			for (StaffSelectHouse staffSelectHouse2 : staffSelectHouses) {
				Staff staff2 = staffService.get(staffSelectHouse2.getStaffId());
				staffScore.put(staff2.getId(), staff2.getTotalVal());
			}
			// 根据职工总分对哈希表排序：键为staffId,值为totalValue
			List<Map.Entry<Integer, Double>> list = new ArrayList<Map.Entry<Integer, Double>>(staffScore.entrySet());
			Collections.sort(list, new Comparator<Map.Entry<Integer, Double>>() {
				// 降序排序
				@Override
				public int compare(java.util.Map.Entry<Integer, Double> o1, java.util.Map.Entry<Integer, Double> o2) {
					return o2.getValue().compareTo(o1.getValue());
				}
			});

			// 标记第一个职工，第一个职工设置完成后设置其为false
			boolean isNumOne = true;
			// System.out.println(staffScore);
			// System.out.println(list);
			// 遍历排序后的数据，并根据其key值获取StaffSelectHouse对象，同时设置其selectStart及selectEnd值
			for (Map.Entry<Integer, Double> mapping : list) {
				// System.out.println(mapping.getKey() + ":" +
				// mapping.getValue());
				StaffSelectHouse staffSelectHouse3 = staffSelectHouseService
						.getByStaffIdAndRecordStatus(mapping.getKey(), "canselect");
				Staff staff = staffService.get(staffSelectHouse3.getStaffId());
				if (staff.getTotalVal() < Integer.parseInt(rentEvent.getRentSelValReq())) {
					staff.setRelation("active");
					staffSelectHouse3.setRecordStatus("inactive");
					staffService.update(staff);
					staffSelectHouseService.update(staffSelectHouse3);
					continue;
				}
				// 设置选房开始时间
				staffSelectHouse3.setSelectStart(calendar.getTime());
				// System.out.println(calendar.get(Calendar.YEAR));
				// System.out.println(calendar.get(Calendar.MONTH));
				// System.out.println(calendar.get(Calendar.DATE));
				// 设置选房结束时间
				calendar.add(Calendar.MINUTE, rentEvent.getRentTimeRanges());
				// System.out.println(calendar.get(Calendar.HOUR));
				// System.out.println(calendar.get(Calendar.HOUR_OF_DAY));
				// System.out.println(calendar.get(Calendar.MINUTE));

				// 当前职工选房结束时间的小时
				Integer calendarHour = calendar.get(Calendar.HOUR_OF_DAY);
				// 当前职工选房结束时间的分钟
				Integer calendarMin = calendar.get(Calendar.MINUTE);
				// System.out.println(calendar.get(Calendar.MINUTE));

				// 若第一个选房职工的时间初始设置不在每日选房时间范围内，则进行调整
				Calendar calendar2 = Calendar.getInstance();
				calendar2.setTime(staffSelectHouse3.getSelectStart());
				Integer calendar2Hour = calendar2.get(Calendar.HOUR_OF_DAY);
				Integer calendar2Min = calendar2.get(Calendar.MINUTE);
				if (isNumOne && (calendar2Hour < dayRentTimeBeginHour
						|| calendar2Hour == dayRentTimeBeginHour && calendar2Min <= dayRentTimeBeginMin)) {
					// 若第一个选房职工的时间初始设置不在每日选房时间范围内，则进行调整
					int year = calendar.get(Calendar.YEAR);
					int month = calendar.get(Calendar.MONTH);
					int date = calendar.get(Calendar.DATE);
					int hour = dayRentTimeBeginHour;
					int min = dayRentTimeBeginMin;
					calendar.set(year, month, date, hour, min);
					staffSelectHouse3.setSelectStart(calendar.getTime());
					calendar.add(Calendar.MINUTE, rentEvent.getRentTimeRanges());
					staffSelectHouse3.setSelectEnd(calendar.getTime());
					isNumOne = false;
				} else {
					// 判断是否推迟到下一天
					if (((calendarHour == dayRentTimeBeginHour && calendarMin >= dayRentTimeBeginMin)
							|| calendarHour > dayRentTimeBeginHour)
							&& (calendarHour == dayRentTimeEndHour && calendarMin <= dayRentTimeEndMin
									|| calendarHour < dayRentTimeEndHour)) {
						staffSelectHouse3.setSelectEnd(calendar.getTime());
					} else {
						int year = calendar.get(Calendar.YEAR);
						// 选房推迟到第二天早上
						calendar.add(Calendar.DATE, 1);
						int month = calendar.get(Calendar.MONTH);
						int date = calendar.get(Calendar.DATE);
						int hour = dayRentTimeBeginHour;
						int min = dayRentTimeBeginMin;
						calendar.set(year, month, date, hour, min);
						staffSelectHouse3.setSelectStart(calendar.getTime());
						calendar.add(Calendar.MINUTE, rentEvent.getRentTimeRanges());
						staffSelectHouse3.setSelectEnd(calendar.getTime());
					}
				}
				staffSelectHouseService.update(staffSelectHouse3);
			}

			return Msg.success().add("data", rentEventModel);
		} else {
			return Msg.error();
		}
		// return Msg.success().add("data", rentEventModel);
	}

	@ResponseBody
	@RequestMapping(value = "delete/{rentEventId}", method = RequestMethod.DELETE)
	public Msg deleteRentEvent(@PathVariable Integer rentEventId) {
		RentEvent rentEvent = rentEventService.get(rentEventId);
		if (rentEvent != null) {
			rentEvent.setIsDelete(true);
			rentEventService.update(rentEvent);
			return Msg.success();
		} else {
			return Msg.error("无该数据");
		}

	}

	@ResponseBody
	@RequestMapping(value = "add", method = RequestMethod.POST)
	public Msg addRentEvent(@RequestBody RentEventModel rentEventModel) {
		if (rentEventService.getOpenRuleCount() > 0) {
			return Msg.error("已有选房规则正在进行，添加失败！");
		} else if(rentEventModel.getRentTimeBegin().getTime() < (new Date().getTime() - 3600000)){
			//允许在当前选房时间一小时之前
			return Msg.error("选房开始时间必须在当前时间之后");
		}else{
			RentEvent rentEvent = new RentEvent(15, "选房选项", true, false);
			exchange(rentEvent, rentEventModel);
			rentEventService.add(rentEvent);

			if (rentEvent != null) {
				// 获取设置的选房开始时间以及选房时间
				Date rentTimeBegin = rentEvent.getRentTimeBegin();
				Calendar calendar = Calendar.getInstance();
				calendar.setTime(rentTimeBegin);

				// 获取每日选房开始时间
				String dayRentTimeBegin = rentEventModel.getDayRentTimeBegin();
				Integer dayRentTimeBeginHour = Integer.parseInt(dayRentTimeBegin.split(":")[0]);
				Integer dayRentTimeBeginMin = Integer.parseInt(dayRentTimeBegin.split(":")[1]);

				// 获取每日选房结束时间
				String dayRentTimeEnd = rentEventModel.getDayRentTimeEnd();
				Integer dayRentTimeEndHour = Integer.parseInt(dayRentTimeEnd.split(":")[0]);
				Integer dayRentTimeEndMin = Integer.parseInt(dayRentTimeEnd.split(":")[1]);

				// 创建哈希表key为staffId,值为totalValue
				HashMap<Integer, Double> staffScore = new HashMap<Integer, Double>();
				// 获取StaffSelectHouse数据库中所有canselect数据
				List<StaffSelectHouse> staffSelectHouses = staffSelectHouseService.getAll();
				// 将数据添加至哈希表
				for (StaffSelectHouse staffSelectHouse2 : staffSelectHouses) {
					Staff staff2 = staffService.get(staffSelectHouse2.getStaffId());
					staffScore.put(staff2.getId(), staff2.getTotalVal());
				}
				// 根据职工总分对哈希表排序：键为staffId,值为totalValue
				List<Map.Entry<Integer, Double>> list = new ArrayList<Map.Entry<Integer, Double>>(
						staffScore.entrySet());
				Collections.sort(list, new Comparator<Map.Entry<Integer, Double>>() {
					// 降序排序
					@Override
					public int compare(java.util.Map.Entry<Integer, Double> o1,
							java.util.Map.Entry<Integer, Double> o2) {
						return o2.getValue().compareTo(o1.getValue());
					}
				});

				// 标记第一个职工，第一个职工设置完成后设置其为false
				boolean isNumOne = true;
				// System.out.println(staffScore);
				// System.out.println(list);
				// 遍历排序后的数据，并根据其key值获取StaffSelectHouse对象，同时设置其selectStart及selectEnd值
				for (Map.Entry<Integer, Double> mapping : list) {
					// System.out.println(mapping.getKey() + ":" +
					// mapping.getValue());
					StaffSelectHouse staffSelectHouse3 = staffSelectHouseService
							.getByStaffIdAndRecordStatus(mapping.getKey(), "canselect");
					Staff staff = staffService.get(staffSelectHouse3.getStaffId());
					if (staff.getTotalVal() < Integer.parseInt(rentEvent.getRentSelValReq())) {
						staff.setRelation("active");
						staffSelectHouse3.setRecordStatus("inactive");
						staffService.update(staff);
						staffSelectHouseService.update(staffSelectHouse3);
						continue;
					}
					// 设置选房开始时间
					staffSelectHouse3.setSelectStart(calendar.getTime());
					// 设置选房结束时间
					calendar.add(Calendar.MINUTE, rentEvent.getRentTimeRanges());

					// 当前职工选房结束时间的小时
					Integer calendarHour = calendar.get(Calendar.HOUR_OF_DAY);
					// 当前职工选房结束时间的分钟
					Integer calendarMin = calendar.get(Calendar.MINUTE);
					// System.out.println(calendar.get(Calendar.MINUTE));

					// 若第一个选房职工的时间初始设置不在每日选房时间范围内，则进行调整
					Calendar calendar2 = Calendar.getInstance();
					calendar2.setTime(staffSelectHouse3.getSelectStart());
					Integer calendar2Hour = calendar2.get(Calendar.HOUR_OF_DAY);
					Integer calendar2Min = calendar2.get(Calendar.MINUTE);
					if (isNumOne && (calendar2Hour < dayRentTimeBeginHour
							|| calendar2Hour == dayRentTimeBeginHour && calendar2Min <= dayRentTimeBeginMin)) {
						// 若第一个选房职工的时间初始设置不在每日选房时间范围内，则进行调整
						int year = calendar.get(Calendar.YEAR);
						int month = calendar.get(Calendar.MONTH);
						int date = calendar.get(Calendar.DATE);
						int hour = dayRentTimeBeginHour;
						int min = dayRentTimeBeginMin;
						calendar.set(year, month, date, hour, min);
						staffSelectHouse3.setSelectStart(calendar.getTime());
						calendar.add(Calendar.MINUTE, rentEvent.getRentTimeRanges());
						staffSelectHouse3.setSelectEnd(calendar.getTime());
						isNumOne = false;
					} else {
						// 判断是否推迟到下一天
						if (((calendarHour == dayRentTimeBeginHour && calendarMin >= dayRentTimeBeginMin)
								|| calendarHour > dayRentTimeBeginHour)
								&& (calendarHour == dayRentTimeEndHour && calendarMin <= dayRentTimeEndMin
										|| calendarHour < dayRentTimeEndHour)) {
							staffSelectHouse3.setSelectEnd(calendar.getTime());
						} else {
							int year = calendar.get(Calendar.YEAR);
							// 选房推迟到第二天早上
							calendar.add(Calendar.DATE, 1);
							int month = calendar.get(Calendar.MONTH);
							int date = calendar.get(Calendar.DATE);
							int hour = dayRentTimeBeginHour;
							int min = dayRentTimeBeginMin;
							calendar.set(year, month, date, hour, min);
							staffSelectHouse3.setSelectStart(calendar.getTime());
							calendar.add(Calendar.MINUTE, rentEvent.getRentTimeRanges());
							staffSelectHouse3.setSelectEnd(calendar.getTime());
						}
					}
					staffSelectHouseService.update(staffSelectHouse3);
				}
			}

			return Msg.success().add("data", rentEvent);
		}

	}

	public void exchange(RentEvent rentEvent, RentEventModel rentEventModel) {
		rentEvent.setRentSelValReq(rentEventModel.getRentSelValReq());
		rentEvent.setRentSelRules(rentEventModel.getRentSelRules());
		rentEvent.setRentTimeBegin(rentEventModel.getRentTimeBegin());
		rentEvent.setRentTimeRanges(rentEventModel.getRentTimeRanges());
		rentEvent
				.setDaySelectTimeRange(rentEventModel.getDayRentTimeBegin() + "~" + rentEventModel.getDayRentTimeEnd());
	}

	@ResponseBody
	@RequestMapping("get")
	public Msg getRentEvent(@RequestParam(value = "page", defaultValue = "1") Integer page,
			@RequestParam(value = "size", defaultValue = "10") Integer size) {

		PageHelper.startPage(page, size);

		List<RentEvent> rentEvents = rentEventService.getAll();
		System.out.println(rentEvents.get(0).getRentIsOpenSel());

		// 获取StaffSelectHouse数据库中所有canselect数据，并根据选房时间排序
		List<StaffSelectHouse> staffSelectHouses = staffSelectHouseService.getAllAndOrderBySelectTime();
		System.out.println(staffSelectHouses.get(0).getSelectEnd());

		if (rentEvents.get(0).getRentIsOpenSel()
				&& staffSelectHouses.get(0).getSelectEnd().getTime() < new Date().getTime()) {
			rentEvents.get(0).setRentIsOpenSel(false);
			rentEventService.update(rentEvents.get(0));
		}
		// 格式化日期后封装在另一个bean的list
		// List<RentEventModel> rentEventModels = dateFormat(rentEvents);
		// isBegin(rentEvents);
		// List<RentEventModel> rentEventModels = isBegin(rentEvents);
		// for(RentEvent rentEvent : rentEvents){
		// if(rentEvent.getDaySelectTimeRange() != null){
		// String begin = rentEvent.getDaySelectTimeRange().split("-")[0];
		// String end = rentEvent.getDaySelectTimeRange().split("-")[1];
		// rentEvent.setDaySelectTimeRange(begin + ":00 ~ " + end + ":00");
		// }
		// }

		PageInfo pageInfo = new PageInfo(rentEvents);
		// 将封装好的数据设置到pageInfo返回
		// pageInfo.setList(rentEventModels);
		if (rentEvents != null) {
			return Msg.success().add("data", pageInfo);
		} else {
			return Msg.error("无数据");
		}
	}

	// 判断当前日期是否在开始时间和结束时间之间(待修改，选房结束时间需要根据选房人数确定)
	public void isBegin(List<RentEvent> rentEvents) {
		// List<RentEventModel> rentEventModels = new
		// ArrayList<RentEventModel>();
		for (RentEvent rentEvent : rentEvents) {
			// 获取当前时间
			Date now = new Date();
			// System.out.println(now.getTime());
			// 获取开始时间
			Date rentTimeBegin = rentEvent.getRentTimeBegin();
			// System.out.println(rentTimeBegin.getTime());

			// 获取结束时间
			// Date rentTimeEnd = rentEvent.getRentTimeRanges();
			// System.out.println(rentTimeEnd.getTime());
			// System.out.println("--------");
			// if (now.getTime() >= rentTimeBegin.getTime() && now.getTime() <=
			// rentTimeEnd.getTime()) {
			if (now.getTime() >= rentTimeBegin.getTime()) {
				rentEvent.setRentIsOpenSel(true);
				// 更新数据库数据
				rentEventService.update(rentEvent);
			}
			// RentEventModel rentEventModel = new RentEventModel();
			// System.out.println(rentEvent.getRentTimeBegin());
			// System.out.println(rentEvent.getRentTimeRanges());
			// rentEventModel.setRentEventId(rentEvent.getRentEventId());
			// rentEventModel.setRentSelRules(rentEvent.getRentSelRules());
			// rentEventModel.setRentSelValReq(rentEvent.getRentSelValReq());
			// rentEventModel.setRentTimeBegin(rentEvent.getRentTimeBegin());
			// rentEventModel.setRentTimeRanges(rentEvent.getRentTimeRanges());
			// rentEventModels.add(rentEventModel);
		}
		// return rentEventModels;
	}

	// //日期格式化: 日期→字符串 并与当前时间进行比较
	// public List<RentEventModel> dateFormat(List<RentEvent> rentEvents){
	// List<RentEventModel> rentEventModels = new ArrayList<RentEventModel>();
	// for (RentEvent rentEvent : rentEvents){
	// //获取当前时间
	// Date now = new Date();
	//// System.out.println(now.getTime());
	// Date rentTimeBegin = rentEvent.getRentTimeBegin();
	// Date rentTimeEnd = rentEvent.getRentTimeRanges();
	// if(now.getTime() >= rentTimeBegin.getTime() && now.getTime() <=
	// rentTimeEnd.getTime()){
	// rentEvent.setRentIsOpenSel(true);
	// //更新数据库数据
	// rentEventService.update(rentEvent);
	// }
	// String beginDate = null;
	// String endDate = null;
	// if(rentTimeBegin != null){
	// beginDate = new SimpleDateFormat("yyyy-MM-dd").format(rentTimeBegin);
	// }
	// if(rentTimeEnd != null){
	// endDate = new SimpleDateFormat("yyyy-MM-dd").format(rentTimeEnd);
	// }
	//// System.out.println(date);
	// RentEventModel rentEventModel = new RentEventModel();
	// rentEventModel.setRentEventId(rentEvent.getRentEventId());
	// rentEventModel.setParamTypeId(rentEvent.getParamTypeId());
	// rentEventModel.setParamTypeName(rentEvent.getParamTypeName());
	// rentEventModel.setRentIsOpenSel(rentEvent.getRentIsOpenSel());
	// rentEventModel.setRentTimeBegin(beginDate);
	// rentEventModel.setRentTimeRanges(endDate);
	// rentEventModel.setRentSelRules(rentEvent.getRentSelRules());
	// rentEventModel.setIsDelete(rentEvent.getIsDelete());
	// rentEventModels.add(rentEventModel);
	// }
	//
	// return rentEventModels;
	// }
	//

}
