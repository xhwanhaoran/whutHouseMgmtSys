package com.computerdesign.whutHouseMgmt.controller.internetselecthouse;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.computerdesign.whutHouseMgmt.bean.Msg;
import com.computerdesign.whutHouseMgmt.bean.hire.common.Hire;
import com.computerdesign.whutHouseMgmt.bean.internetselecthouse.HireRecent;
import com.computerdesign.whutHouseMgmt.bean.internetselecthouse.IsSelectingHouseInfo;
import com.computerdesign.whutHouseMgmt.bean.internetselecthouse.SelectedStaffHouseInfo;
import com.computerdesign.whutHouseMgmt.bean.internetselecthouse.SelfHelpSelectHouse;
import com.computerdesign.whutHouseMgmt.bean.internetselecthouse.SelfHelpStaffCanselectShowModel;
import com.computerdesign.whutHouseMgmt.bean.internetselecthouse.StaffSelectHouse;
import com.computerdesign.whutHouseMgmt.bean.rentparam.RentEvent;
import com.computerdesign.whutHouseMgmt.bean.staffmanagement.Staff;
import com.computerdesign.whutHouseMgmt.service.hire.HireService;
import com.computerdesign.whutHouseMgmt.service.internetselecthouse.HireRecentService;
import com.computerdesign.whutHouseMgmt.service.internetselecthouse.SelfHelpSelectHouseService;
import com.computerdesign.whutHouseMgmt.service.internetselecthouse.StaffSelectHouseService;
import com.computerdesign.whutHouseMgmt.service.rentparam.RentEventService;
import com.computerdesign.whutHouseMgmt.service.staffmanagement.StaffService;
import com.computerdesign.whutHouseMgmt.service.staffparam.StaffParameterService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@RequestMapping(value = "/selfHelpSelectHouse/")
@Controller
public class SelfHelpSelectHouseController {

	@Autowired
	private SelfHelpSelectHouseService selfHelpSelectHouseService;

	@Autowired
	private HireService hireService;

	@Autowired
	private StaffService staffService;

	@Autowired
	private StaffParameterService staffParameterService;

	@Autowired
	private StaffSelectHouseService staffSelectHouseService;

	@Autowired
	private HireRecentService hireRecentService;

	@Autowired
	private RentEventService rentEventService;

	@ResponseBody
	@RequestMapping(value = "isSelectingHouse/{staffId}", method = RequestMethod.GET)
	public Msg isSelectingHouse(@PathVariable("staffId") Integer staffId) {
		// 获取当前员工选房信息
		StaffSelectHouse staffSelectHouseNow = staffSelectHouseService.getByStaffId(staffId);

		List<SelfHelpSelectHouse> selfHelpSelectHouses = selfHelpSelectHouseService.getAllCanselectHouse();
		Collections.sort(selfHelpSelectHouses, new Comparator<SelfHelpSelectHouse>() {
			@Override
			public int compare(SelfHelpSelectHouse o1, SelfHelpSelectHouse o2) {
				// 升序
				if (o1.getHouseSelectEnd().getTime() - o2.getHouseSelectEnd().getTime() > 0) {
					return 1;
				} else if (o1.getHouseSelectEnd().getTime() - o2.getHouseSelectEnd().getTime() < 0) {
					return -1;
				} else {
					return 0;
				}
			}
		});
		// 验证是否排序成功
		// for (SelfHelpSelectHouse selfHelpSelectHouse : selfHelpSelectHouses){
		// System.out.println(selfHelpSelectHouse.getHouseSelectEnd());
		// }

		// 用于保存正在选房人的信息
		SelfHelpSelectHouse isSelecting = new SelfHelpSelectHouse();
		// 用于保存下一个正在选房人的信息
		SelfHelpSelectHouse nextSelecting = new SelfHelpSelectHouse();
		int flag = 0;
		// 遍历排好序后的数据
		for (SelfHelpSelectHouse selfHelpSelectHouse : selfHelpSelectHouses) {
			flag++;
			long begin = selfHelpSelectHouse.getHouseSelectStart().getTime();
			long end = selfHelpSelectHouse.getHouseSelectEnd().getTime();
			if (begin <= new Date().getTime() && end >= new Date().getTime()) {
				isSelecting = selfHelpSelectHouse;
				break;
			}
		}
		// 如果当前选房人有数据，且不是最后一个选房者，则获取下一个选房者
		if (isSelecting.getStaffName() != null && flag != selfHelpSelectHouses.size()) {
			nextSelecting = selfHelpSelectHouses.get(flag);
		}

		// 获取选房结束时间
		SelfHelpSelectHouse selfHelpSelectHouse = selfHelpSelectHouses.get(selfHelpSelectHouses.size() - 1);
		long endTime = selfHelpSelectHouse.getHouseSelectEnd().getTime();
		System.out.println(selfHelpSelectHouse.getHouseSelectEnd());
		// 获取选房开始时间,默认先使用id为1的选房参数
		RentEvent rentEvent = rentEventService.get(1);
		long beginTime = rentEvent.getRentTimeBegin().getTime();
		// 判断当前是否还有选房活动
		if (beginTime <= new Date().getTime() && endTime >= new Date().getTime()) {
			Date staffStartTimeNow = staffSelectHouseNow.getSelectStart();
			Date staffEndTimeNow = staffSelectHouseNow.getSelectEnd();
			// 封装需要返回的数据
			IsSelectingHouseInfo isSelectingHouseInfo = new IsSelectingHouseInfo();
			isSelectingHouseInfo.setStaffStartTimeNow(staffStartTimeNow);
			isSelectingHouseInfo.setStaffEndTimeNow(staffEndTimeNow);
			isSelectingHouseInfo.setIsSelectingStaffName(isSelecting.getStaffName());
			isSelectingHouseInfo.setIsSelectingStaffEndTime(isSelecting.getHouseSelectEnd());
			if (nextSelecting.getStaffName() != null) {
				isSelectingHouseInfo.setNextSelectingStaffName(nextSelecting.getStaffName());
			}
			return Msg.success().add("data", isSelectingHouseInfo);
		} else {
			return Msg.success("当前无选房活动，或选房活动已结束！");
		}
	}

	/**
	 * 获取已选房职工信息
	 * 
	 * @param page
	 * @param size
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "getAllSelectedStaff", method = RequestMethod.GET)
	public Msg getAllSelectedStaff(@RequestParam(value = "page", defaultValue = "1") Integer page,
			@RequestParam(value = "size", defaultValue = "10") Integer size) {
		PageHelper.startPage(page, size);
		List<HireRecent> hireRecents = hireRecentService.getAll();
		List<SelectedStaffHouseInfo> selectedStaffHouseInfos = new ArrayList<SelectedStaffHouseInfo>();
		for (HireRecent hireRecent : hireRecents) {
			SelectedStaffHouseInfo selectedStaffHouseInfo = new SelectedStaffHouseInfo();
			selectedStaffHouseInfo.setStaffName(hireRecent.getStaffName());
			selectedStaffHouseInfo.setStaffNo(hireRecent.getStaffNo());
			selectedStaffHouseInfo.setStaffTitleName(hireRecent.getStaffTitleName());
			selectedStaffHouseInfo.setStaffPostName(hireRecent.getStaffPostName());
			selectedStaffHouseInfo.setStaffTypeName(hireRecent.getStaffTypeName());
			selectedStaffHouseInfo.setStaffStatusName(hireRecent.getStaffStatusName());
			selectedStaffHouseInfo.setStaffDeptName(hireRecent.getStaffDeptName());
			selectedStaffHouseInfo.setStaffPostVal(hireRecent.getStaffPostVal());
			selectedStaffHouseInfo.setStaffTitleVal(hireRecent.getStaffTitleVal());
			selectedStaffHouseInfo.setStaffSpousePostVal(hireRecent.getStaffSpousePostVal());
			selectedStaffHouseInfo.setStaffSpouseTitleVal(hireRecent.getStaffSpouseTitleVal());
			selectedStaffHouseInfo.setStaffTimeVal(hireRecent.getStaffTimeVal());
			selectedStaffHouseInfo.setStaffOtherVal(hireRecent.getStaffOtherVal());
			selectedStaffHouseInfo.setStaffTotalVal(hireRecent.getStaffTotalVal());
			selectedStaffHouseInfo.setStaffSelectStart(hireRecent.getStaffSelectStart());
			selectedStaffHouseInfo.setStaffSelectEnd(hireRecent.getStaffSelectEnd());
			selectedStaffHouseInfo.setHouseNo(hireRecent.getHouseNo());
			selectedStaffHouseInfo.setHouseBuildArea(hireRecent.getHouseBuildArea());
			selectedStaffHouseInfo.setHouseAddress(hireRecent.getHouseAddress());
			selectedStaffHouseInfos.add(selectedStaffHouseInfo);
		}

		PageInfo pageInfo = new PageInfo(hireRecents);
		pageInfo.setList(selectedStaffHouseInfos);
		return Msg.success().add("data", pageInfo);
	}

	/**
	 * 提交自助选房申请
	 * 
	 * @param staffId
	 * @param houseId
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "submitSelectHouseApplication", method = RequestMethod.GET)
	public Msg submitSelectHouseApplication(@RequestParam(value = "staffId") Integer staffId,
			@RequestParam(value = "houseId") Integer houseId) {
		Date date = new Date();
		long currentTime = date.getTime();
		long selectStart = staffSelectHouseService.getByStaffId(staffId).getSelectStart().getTime();
		long selectEnd = staffSelectHouseService.getByStaffId(staffId).getSelectEnd().getTime();
		// System.out.println("currentTime" + currentTime);
		// System.out.println("selectStart" + selectStart);
		// System.out.println("selectEnd" + selectEnd);
		if (currentTime > selectStart && currentTime < selectEnd) {
			Hire hire = new Hire();
			Staff staff = staffService.get(staffId);
			hire.setStaffId(staffId);
			hire.setHouseId(houseId);
			hire.setApplyTime(new Date());
			hire.setReason("自助点房");
			hire.setPhone(staff.getTel());
			hire.setHireState("待审批");
			hire.setTotalVal(staff.getTotalVal());
			hire.setTitleVal((double) staffParameterService.get(staff.getTitle()).getStaffParamVal());
			hire.setTimeVal(staff.getTimeVal());
			hire.setOtherVal(staff.getOtherVal());
			hire.setAcceptNote("自助点房自动受理");
			hire.setAcceptState("通过");
			hire.setAcceptTime(new Date());
			hire.setAgreeNote("自助点房自动审核");
			hire.setAgreeState("通过");
			hire.setAgreeTime(new Date());
			hire.setIsOver(false);
			hireService.add(hire);

			staff.setRelation("selected");
			staffService.update(staff);
			staffSelectHouseService.getByStaffId(staffId).setRecordStatus("selected");
			staffSelectHouseService.update(staffSelectHouseService.getByStaffId(staffId));
			return Msg.success("提交成功").add("data", hire);
		} else {
			return Msg.error("您的点房时间已到");
		}

	}

	/**
	 * 显示所有未选房职工
	 * 
	 * @param page
	 * @param size
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "getAllCanselectHouse", method = RequestMethod.GET)
	public Msg getAllCanselectHouse(@RequestParam(value = "page", defaultValue = "1") Integer page,
			@RequestParam(value = "size", defaultValue = "10") Integer size) {
		PageHelper.startPage(page, size);
		List<SelfHelpSelectHouse> selfHelpSelectHouses = selfHelpSelectHouseService.getAllCanselectHouse();
		List<SelfHelpStaffCanselectShowModel> selfHelpStaffCanselectShowModels = new ArrayList<SelfHelpStaffCanselectShowModel>();
		for (SelfHelpSelectHouse selfHelpSelectHouse : selfHelpSelectHouses) {
			SelfHelpStaffCanselectShowModel selfHelpStaffCanselectShowModel = new SelfHelpStaffCanselectShowModel();
			selfHelpStaffCanselectShowModel.setStaffName(selfHelpSelectHouse.getStaffName());
			selfHelpStaffCanselectShowModel.setStaffNo(selfHelpSelectHouse.getStaffNo());
			selfHelpStaffCanselectShowModel.setStaffTitleName(selfHelpSelectHouse.getStaffTitleName());
			selfHelpStaffCanselectShowModel.setStaffPostName(selfHelpSelectHouse.getStaffPostName());
			selfHelpStaffCanselectShowModel.setStaffTypeName(selfHelpSelectHouse.getStaffTypeName());
			selfHelpStaffCanselectShowModel.setStaffStatusName(selfHelpSelectHouse.getStaffStatusName());
			selfHelpStaffCanselectShowModel.setStaffDeptName(selfHelpSelectHouse.getStaffDeptName());
			selfHelpStaffCanselectShowModel.setStaffPostVal(selfHelpSelectHouse.getStaffPostVal());
			selfHelpStaffCanselectShowModel.setStaffTitleVal(selfHelpSelectHouse.getStaffTitleVal());
			selfHelpStaffCanselectShowModel.setStaffSpousePostVal(selfHelpSelectHouse.getStaffSpousePostVal());
			selfHelpStaffCanselectShowModel.setStaffSpouseTitleVal(selfHelpSelectHouse.getStaffSpouseTitleVal());
			selfHelpStaffCanselectShowModel.setStaffTimeVal(selfHelpSelectHouse.getStaffTimeVal());
			selfHelpStaffCanselectShowModel.setStaffOtherVal(selfHelpSelectHouse.getStaffOtherVal());
			selfHelpStaffCanselectShowModel.setStaffTotalVal(selfHelpSelectHouse.getStaffTotalVal());
			selfHelpStaffCanselectShowModel.setHouseSelectStart(selfHelpSelectHouse.getHouseSelectStart());
			selfHelpStaffCanselectShowModel.setHouseSelectEnd(selfHelpSelectHouse.getHouseSelectEnd());
			selfHelpStaffCanselectShowModels.add(selfHelpStaffCanselectShowModel);
		}
		PageInfo pageInfo = new PageInfo(selfHelpSelectHouses);
		pageInfo.setList(selfHelpStaffCanselectShowModels);
		return Msg.success("获取成功").add("data", pageInfo);
	}

}