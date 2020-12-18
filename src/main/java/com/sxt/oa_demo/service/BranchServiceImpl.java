package com.sxt.oa_demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sxt.oa_demo.data.BranchMapper;
import com.sxt.oa_demo.domain.BranchInfo;

@Service
public class BranchServiceImpl implements BranchService {

	@Autowired
	private BranchMapper branchMapper;

	@Override
	public List<BranchInfo> findAllBranchs() {
		return this.branchMapper.findAllBranchs();
	}

}
