package com.spring.bf.bike;

import java.io.File;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.mysql.cj.Session;

@Controller
public class BikeReplyController {

	@Autowired
	BikeReplyDAO dao;

	@RequestMapping("bike/bikereplyinsert")
	public void insert(BikeReplyVO bag ) {
		
		//Mapper에 그냥 now()함수써서 넣어봄 안되면 이걸로 다시 바꿔야함
		//bag.setDate(Timestamp.valueOf(LocalDateTime.now()));
		
		
		/*
		 * BikeVO vo = new BikeVO();
		 * 
		 * session.setAttribute("bike_no", vo.getBike_no());
		 */
		
		dao.insert(bag);
		
		
	}

}