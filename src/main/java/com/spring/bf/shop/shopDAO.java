package com.spring.bf.shop;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class shopDAO {

	@Autowired
	SqlSessionTemplate my;

	

	public int insert(shopVO bag) {
		int result = my.insert("shop.create",bag);
		return result;
	}

}
