package com.spring.bf.bike;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;



@Controller
public class BikeController {

	@Autowired
	BikeDAO dao;
	
	@RequestMapping("bike/bikelist")
	public void list(PageVO vo, Model model) {
		vo.setStartEnd(vo.getPage());
		List<BikeVO> list = dao.all(vo);
		int count = dao.count();
		System.out.println("all count>> " + count);
		int pages = count / 6 + 1; //전체 페이지 개수 구하
		model.addAttribute("list", list);
		model.addAttribute("count", count);
		model.addAttribute("pages", pages);
	}
	
/*	@RequestMapping("bbsAll")
	public void all(PageVO vo, Model model) {
		vo.setStartEnd(vo.getPage());
		List<BbsVO> list = dao.all(vo);
		int count = dao.count();
		System.out.println("all count>> " + count);
		int pages = count / 10 + 1; //전체 페이지 개수 구하
		model.addAttribute("list", list);
		model.addAttribute("count", count);
		model.addAttribute("pages", pages);
	*/
	
	@RequestMapping("bike/bikeone")
	public void one(int bike_no,Model model) {
		BikeVO bag = dao.one(bike_no);
		model.addAttribute("bag",bag);
	}

	
}