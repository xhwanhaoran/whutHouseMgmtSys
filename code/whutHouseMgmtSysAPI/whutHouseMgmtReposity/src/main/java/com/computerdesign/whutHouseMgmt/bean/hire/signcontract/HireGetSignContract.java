package com.computerdesign.whutHouseMgmt.bean.hire.signcontract;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.computerdesign.whutHouseMgmt.bean.hire.common.ViewHire;
import com.fasterxml.jackson.annotation.JsonFormat;

public class HireGetSignContract {

	private Integer id;

	private String name;

	private String titleName;

	private String postName;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
	private Date applyTime;

	private String reason;
	
	private String hireState;

	private String phone;
	
    private String deptName;

    private Double houseUserArea;

    private String houseAddress;
    
    private Double totalVal;

    private Double titleVal;

    private Double timeVal;

    private Double spouseVal;

    private Double otherVal;

    private String acceptNote;

    private String acceptState;

    private String acceptMan;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
	@JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
    private Date acceptTime;

    private String agreeNote;

    private String agreeState;

    private String agreeMan;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
	@JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
    private Date agreeTime;

    private String approveNote;

    private String approveState;

    private String approveMan;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
	@JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
    private Date approveTime;

    public HireGetSignContract(ViewHire viewHire){
    	this.id = viewHire.getId();
		this.name = viewHire.getName();
		this.titleName = viewHire.getTitleName();
		this.postName = viewHire.getPostName();
		this.deptName = viewHire.getDeptName();
		this.applyTime = viewHire.getApplyTime();
		this.reason = viewHire.getReason();
		this.hireState = viewHire.getHireState();
		this.phone = viewHire.getPhone();

		this.houseUserArea = viewHire.getHouseUserArea();
		this.houseAddress = viewHire.getHouseAddress();
		this.acceptNote = viewHire.getAcceptNote();
		this.acceptState = viewHire.getAcceptState();
		this.acceptMan = viewHire.getAcceptMan();
		this.acceptTime = viewHire.getAcceptTime();

		this.agreeNote = viewHire.getAgreeNote();
		this.agreeState = viewHire.getAgreeState();
		this.agreeMan = viewHire.getAgreeMan();
		this.agreeTime = viewHire.getAgreeTime();
		
		this.approveNote = viewHire.getApproveNote();
		this.approveState = viewHire.getApproveState();
		this.approveMan = viewHire.getApproveMan();
		this.approveTime = viewHire.getApproveTime();
		
		this.totalVal = viewHire.getTotalVal();
		this.titleVal = viewHire.getTitleVal();
		this.timeVal = viewHire.getTimeVal();
		this.spouseVal = viewHire.getSpouseVal();
		this.otherVal = viewHire.getOtherVal();

    }
    
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTitleName() {
		return titleName;
	}

	public void setTitleName(String titleName) {
		this.titleName = titleName;
	}

	public String getPostName() {
		return postName;
	}

	public void setPostName(String postName) {
		this.postName = postName;
	}

	public Date getApplyTime() {
		return applyTime;
	}

	public void setApplyTime(Date applyTime) {
		this.applyTime = applyTime;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	public String getHireState() {
		return hireState;
	}

	public void setHireState(String hireState) {
		this.hireState = hireState;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getDeptName() {
		return deptName;
	}

	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}

	public Double getHouseUserArea() {
		return houseUserArea;
	}

	public void setHouseUserArea(Double houseUserArea) {
		this.houseUserArea = houseUserArea;
	}

	public String getHouseAddress() {
		return houseAddress;
	}

	public void setHouseAddress(String houseAddress) {
		this.houseAddress = houseAddress;
	}

	public Double getTotalVal() {
		return totalVal;
	}

	public void setTotalVal(Double totalVal) {
		this.totalVal = totalVal;
	}

	public Double getTitleVal() {
		return titleVal;
	}

	public void setTitleVal(Double titleVal) {
		this.titleVal = titleVal;
	}

	public Double getTimeVal() {
		return timeVal;
	}

	public void setTimeVal(Double timeVal) {
		this.timeVal = timeVal;
	}

	public Double getSpouseVal() {
		return spouseVal;
	}

	public void setSpouseVal(Double spouseVal) {
		this.spouseVal = spouseVal;
	}

	public Double getOtherVal() {
		return otherVal;
	}

	public void setOtherVal(Double otherVal) {
		this.otherVal = otherVal;
	}

	public String getAcceptNote() {
		return acceptNote;
	}

	public void setAcceptNote(String acceptNote) {
		this.acceptNote = acceptNote;
	}

	public String getAcceptState() {
		return acceptState;
	}

	public void setAcceptState(String acceptState) {
		this.acceptState = acceptState;
	}

	public String getAcceptMan() {
		return acceptMan;
	}

	public void setAcceptMan(String acceptMan) {
		this.acceptMan = acceptMan;
	}

	public Date getAcceptTime() {
		return acceptTime;
	}

	public void setAcceptTime(Date acceptTime) {
		this.acceptTime = acceptTime;
	}

	public String getAgreeNote() {
		return agreeNote;
	}

	public void setAgreeNote(String agreeNote) {
		this.agreeNote = agreeNote;
	}

	public String getAgreeState() {
		return agreeState;
	}

	public void setAgreeState(String agreeState) {
		this.agreeState = agreeState;
	}

	public String getAgreeMan() {
		return agreeMan;
	}

	public void setAgreeMan(String agreeMan) {
		this.agreeMan = agreeMan;
	}

	public Date getAgreeTime() {
		return agreeTime;
	}

	public void setAgreeTime(Date agreeTime) {
		this.agreeTime = agreeTime;
	}

	public String getApproveNote() {
		return approveNote;
	}

	public void setApproveNote(String approveNote) {
		this.approveNote = approveNote;
	}

	public String getApproveState() {
		return approveState;
	}

	public void setApproveState(String approveState) {
		this.approveState = approveState;
	}

	public String getApproveMan() {
		return approveMan;
	}

	public void setApproveMan(String approveMan) {
		this.approveMan = approveMan;
	}

	public Date getApproveTime() {
		return approveTime;
	}

	public void setApproveTime(Date approveTime) {
		this.approveTime = approveTime;
	}
    
    
}