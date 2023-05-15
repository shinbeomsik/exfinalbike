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
	
	public void list(Model model) {
		List<BikeVO> list = dao.list();
		model.addAttribute("list", list);
	}
	

	
}