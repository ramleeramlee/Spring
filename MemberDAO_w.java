package com.multi.mvc300;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.multi.mvc300.MemberVO_w;
// import 화면DB연걸.MemberVO;
// 스프링에 dao는 싱글톤으로 하나만 만들어서 사용할게 라고 설정해야함
// 2가지 방법 할 수 있음
// 어노테이션(표시)방법, XML방법

@Component //싱글톤
public class MemberDAO_w {
	
	@Autowired
	SqlSessionTemplate my;
	
	public int insert(MemberVO_w bag) {
		int result = my.insert("member.create", bag);
					// mapper의 namespace.id
		return result;
	}
	
	public int update(MemberVO_w bag) {
		int result = my.update("member.up", bag);
		return result;
	}
	
	public int delete(String id) {
		int result = my.delete("member.del", id);
		return result;
	}

	public MemberVO_w one(String id) {
		MemberVO_w bag = my.selectOne("member.one", id);
		return bag;
	}

	public List<MemberVO_w> list() {
		List<MemberVO_w> list = my.selectList("member.all");
		return list;
	}

//	public int login(MemberVO_w bag) {
//		
//		return result;
//	}


	
}
