package com.spring.bf.shop;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class ShopDAO {

	@Autowired
	SqlSessionTemplate my;

	

	public int insert(ShopVO bag) {
		System.out.println(bag);
		int result = my.insert("shop.create",bag);
		return result;
	}

}
