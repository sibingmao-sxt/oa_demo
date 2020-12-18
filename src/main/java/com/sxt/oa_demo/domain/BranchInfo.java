package com.sxt.oa_demo.domain;

public class BranchInfo {
	private Integer branchNo;
	private Integer branchLevel;
	private Integer parentNo;
	private String branchName;
	private String branchDesc;
	private Integer delFlag;
	private BranchInfo parentInfo;

	public BranchInfo getParentInfo() {
		return parentInfo;
	}

	public void setParentInfo(BranchInfo parentInfo) {
		this.parentInfo = parentInfo;
	}

	public String getDisplayBranchNo() {
		return String.format("%03d", this.branchNo);
	}

	public Integer getBranchNo() {
		return branchNo;
	}

	public void setBranchNo(Integer branchNo) {
		this.branchNo = branchNo;
	}

	public Integer getBranchLevel() {
		return branchLevel;
	}

	public void setBranchLevel(Integer branchLevel) {
		this.branchLevel = branchLevel;
	}

	public Integer getParentNo() {
		return parentNo;
	}

	public void setParentNo(Integer parentNo) {
		this.parentNo = parentNo;
	}

	public String getBranchName() {
		return branchName;
	}

	public void setBranchName(String branchName) {
		this.branchName = branchName;
	}

	public String getBranchDesc() {
		return branchDesc;
	}

	public void setBranchDesc(String branchDesc) {
		this.branchDesc = branchDesc;
	}

	public Integer getDelFlag() {
		return delFlag;
	}

	public void setDelFlag(Integer delFlag) {
		this.delFlag = delFlag;
	}

}
