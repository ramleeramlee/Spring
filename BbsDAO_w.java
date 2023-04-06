package com.multi.mvc300;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import org.apache.ibatis.jdbc.SQL;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.multi.mvc300.BbsVO_w;

// 테이블 하나당 DAO하나! >> 
@Component
public class BbsDAO_w {

	@Autowired
	SqlSessionTemplate my;
	
	public int insert(BbsVO_w bag) {
		int result = my.insert("bbs.create", bag);
		return result;
	}

	public int update(BbsVO_w bag) {
		int result = my.update("bbs.up", bag);
		return result;
	}

	public int delete(int no) {
		int result = my.delete("bbs.del", no);
		return result;
	}

	
//	public ArrayList<BbsVO_w> list() {
//	
//		
//		return list;
//
//	}
//	
//	public BbsVO_w one(int no) {
//
//		return bag;
//	}
}
