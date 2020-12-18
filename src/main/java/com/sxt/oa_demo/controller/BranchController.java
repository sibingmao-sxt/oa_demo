package com.sxt.oa_demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sxt.oa_demo.domain.AjaxRespInfo;
import com.sxt.oa_demo.service.BranchService;

@Controller
@RequestMapping("/branch")
public class BranchController {

	@Autowired
	private BranchService branchService;

	@GetMapping("/ajaxList")
	@ResponseBody
	public AjaxRespInfo ajaxList() {
		AjaxRespInfo respInfo = new AjaxRespInfo();
		respInfo.setData(this.branchService.findAllBranchs());
		return respInfo;
	}
}
