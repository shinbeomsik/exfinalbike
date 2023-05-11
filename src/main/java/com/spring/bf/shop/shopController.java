package com.spring.bf.shop;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class shopController {

	@Autowired
	shopDAO dao;

	
	@RequestMapping("shop/shopinsert")
	public String insert(shopVO bag) {
		System.out.println("insert 요청됨");
		dao.insert(bag);
		return "redirect:shopmain.jsp";
	}
}