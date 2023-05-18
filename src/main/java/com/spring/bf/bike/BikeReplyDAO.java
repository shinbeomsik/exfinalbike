package com.spring.bf.bike;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


@Component
public class BikeReplyDAO {

	@Autowired
	SqlSessionTemplate my;

	public int insert(BikeReplyVO bag) {
		int result=my.insert("bikereply.insert",bag);
		return result;
		
	}
	
}
