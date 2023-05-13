package com.spring.bf.shop;

import java.io.*;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Controller
public class ShopController {

	@Autowired
	ShopDAO dao;

	
	@RequestMapping("shop/shopinsert")
	public String insert(ShopVO shopVO) {
		System.out.println(shopVO);
		System.out.println("insert 요청됨");
		//dao.insert(shopVO);
		return "redirect:shopmain.jsp";
	}
	
	
//	@RequestMapping("shop/shopinsert")
//	public String insert(
//					shopVO shopVO,
//					HttpServletRequest request, 
//					MultipartFile file, 
//					Model model) throws Exception {
//		String savedName = file.getOriginalFilename();
//		String uploadPath 
//			= request.getSession().getServletContext().getRealPath("resources/upload");
//		File target = new File(uploadPath + "/" + savedName);
//		file.transferTo(target);
//		
//		model.addAttribute("savedName", savedName);
//		System.out.println("img넣기 전>> " + shopVO);
//		shopVO.setShop_img(savedName);
//		System.out.println("img넣은 후>> " + shopVO);
//		
//		dao.insert(shopVO);
//		//컨트롤로의 vo변수명을 맨앞글자만 소문자로 바꾸어서 변수를 만들면,
//		//자동으로 모델의 속성으로 등록시켜줌.
//		//model.addAttribute("movieVO", movieVO);
//		return "redirect:shopmain.jsp";
//	}
//	
	
}