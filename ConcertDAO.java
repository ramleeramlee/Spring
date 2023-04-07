package com.multi.mvc300;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.util.List;

import org.apache.ibatis.jdbc.SQL;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.multi.mvc300.ConcertVO;

// 테이블 하나당 DAO하나! >> 
@Component
public class ConcertDAO {

	@Autowired
	SqlSessionTemplate my;
	
	public int insert(ConcertVO bag) {
		int result = my.insert("concert.create", bag);
		return result;
	}

	public int update(ConcertVO bag) {
		int result = my.update("concert.update", bag);
		return result;
	}

	public int delete(String title) {
		int result = my.delete("concert.delete", title);
		return result;
	}

		public ConcertVO one(String title) {
		ConcertVO bag = my.selectOne("concert.one", title);
		return bag;
	}
		
	public List<ConcertVO> list() {
		List<ConcertVO> list = my.selectList("concert.all");
		return list;

	}
	
}
