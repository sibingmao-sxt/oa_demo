package com.sxt.oa_demo.data;

import java.util.List;

import com.sxt.oa_demo.domain.BranchInfo;

public interface BranchMapper {
	List<BranchInfo> findAllBranchs();
}
