package com.multi.mvc01;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import org.springframework.stereotype.Component;

import com.multi.mvc01.MemberVO_w;


@Component 
public class BookDAO {
	
	
	public int delete(String name) {
		int result = 0;
		try {
			// 1. 연결한 부품 설정(커넥터 설정)
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("1.mySQL과 자바 연결할 부품 설정 성공");

			// 2. 연결하자(java ---- oracle)(DB연결)
			String url = "jdbc:mysql://localhost:3306/multi";
			String user = "root";
			String password = "1234";
			Connection con = DriverManager.getConnection(url, user, password);
			System.out.println("2.mySQL 연결 성공");

			String sql = "delete from book where name = ? ";
			PreparedStatement ps = con.prepareStatement(sql);

			// con부품으로 sql스트링에 있는 것 SQL부품으로 만들어주세요
			ps.setString(1, name);

			System.out.println("3.SQL문 부품(객체)으로 만들어주기");

			// 4. 전송
			result = ps.executeUpdate();
			System.out.println("4.SQL문 오라클로 보내기 성공");
			if (result >= 1) {
				System.out.println("탈퇴 성공");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public int update(BookVO bag) {
		int result = 0;
		try {
			// 1. 연결한 부품 설정(커넥터 설정)
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("1.mySQL과 자바 연결할 부품 설정 성공");

			// 2. 연결하자(java ---- oracle)(DB연결)
			String url = "jdbc:mysql://localhost:3306/multi";
			String user = "root";
			String password = "1234";
			Connection con = DriverManager.getConnection(url, user, password);
			System.out.println("2.mySQL 연결 성공");

			
			String sql = "update book set name = ? where id = ? ";
			PreparedStatement ps = con.prepareStatement(sql);
			// con부품으로 sql스트링에 있는 것 SQL부품으로 만들어주세요
			 // 그냥 먼저 적혀있는 순서대로..
			ps.setString(1, bag.getName());
			ps.setInt(2, bag.getId());
			

			System.out.println("3.SQL문 부품(객체)으로 만들어주기");

			// 4. 전송
			result = ps.executeUpdate(); // insert, update, delete문만!! sql문 실행결과가 int
			System.out.println("4.SQL문 오라클로 보내기 성공");
			if (result >= 1) {
				System.out.println("업데이트 성공");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public int insert(BookVO bag) {
		int result = 0;
		try {
			// 1. 연결한 부품 설정(커넥터 설정)
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("1.mySQL과 자바 연결할 부품 설정 성공");

			// 2. 연결하자(java ---- oracle)(DB연결)
			String url = "jdbc:mysql://localhost:3306/multi";
			String user = "root";
			String password = "1234";
			Connection con = DriverManager.getConnection(url, user, password);
			System.out.println("2.mySQL 연결 성공");

			
			String sql = "insert into book values (null, ?, ?, ?)";
			PreparedStatement ps = con.prepareStatement(sql);
			// con부품으로 sql스트링에 있는 것 SQL부품으로 만들어주세요
			
			ps.setString(1, bag.getName());
			ps.setString(2, bag.getUrl());
			ps.setString(3, bag.getImg());

			System.out.println("3.SQL문 부품(객체)으로 만들어주기");

			// 4. 전송
			result = ps.executeUpdate(); // insert, update, delete문만!! sql문 실행결과가 int
			System.out.println("4.SQL문 오라클로 보내기 성공");
			if (result == 1) {
				System.out.println("회원가입 성공");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println(result);
		return result;
	}

public BookVO one(int id) {
	ResultSet rs = null;
	BookVO bag = null;

	try {
		// 1. 연결한 부품 설정(커넥터 설정)
		Class.forName("com.mysql.cj.jdbc.Driver");
		System.out.println("1.mySQL과 자바 연결할 부품 설정 성공");

		// 2. 연결하자(DB연결)
		String url = "jdbc:mysql://localhost:3306/multi";
		String user = "root";
		String password = "1234";
		Connection con = DriverManager.getConnection(url, user, password);
		System.out.println("2.mySQL 연결 성공");

		// 3. SQL문을 만든다.
		// URL u = new URL(url);
		// 자바는 부품조립식이여서, String에 넣은 문자열을 특정한 부품으로 인식하지 못 함
		// 특정한 부품으로 인식하려면 그 부품으로 만들어주어야 한다
		// SQL부품으로 만들어주어야 함 >> PreparedStatement 가 SQL부품!!
		String sql = "select * from book where id = ? ";
		PreparedStatement ps = con.prepareStatement(sql);
		// con부품으로 sql스트링에 있는 것 SQL부품으로 만들어주세요

		ps.setInt(1, id); // ** db는 인덱스가 1부터 시작!!!

		System.out.println("3.SQL문 부품(객체)으로 만들어주기");

		// 4. 전송
		rs = ps.executeQuery();
		System.out.println("4.SQL문 오라클로 보내기 성공");

		if (rs.next()) { //// 검색결과가 있는지 여부는 rs.next()
			//// true이면 있다, false이면 없다 라는 의미
			System.out.println("검색결과 있음. 성공");
			String id2 = rs.getString(1);
			String name = rs.getString(2);
			String url1 = rs.getString(3);
			String img = rs.getString(4);
			

			//// 검색결과를 검색화면 UI부분을 주어야 함(DAO는 JOptionPane가 안됨)
			bag = new BookVO();
			bag.setId(id);
			bag.setName(name);
			bag.setUrl(url1);
			bag.setImg(img);
		} else {
			System.out.println("검색결과 없음");
		}

	} catch (Exception e) {
		e.printStackTrace();
	}
	return bag;
}

public ArrayList<BookVO> list() {
	ResultSet rs = null; // 항목명 + 결과 데이터를 담고 있는 테이블

	// 가방들 넣어줄 큰 컨테이너 역할을 부품이 필요!
	// ArrayList<MemberVO> ==> MemberVO만 들어간 arraylist라는 의미
	ArrayList<BookVO> list = new ArrayList<>();

	BookVO bag = null;
	try {
		// 1.연결한 부품 설정
		Class.forName("com.mysql.cj.jdbc.Driver");
		System.out.println("1.mySQL과 자바 연결할 부품 설정 성공.");
		

		// 2.연결해보자.(java --- oracle)
		// String url = "jdbc:mysql://localhost:3306/multi";
		String url = "jdbc:mysql://localhost:3306/multi?serverTimezone=UTC";
		String user = "root";
		String password = "1234";
		Connection con = DriverManager.getConnection(url, user, password); // Connection
		// String data = JOptionPane.showInputDialog("이름입력"); //String, 임아무개
		System.out.println("2. mySQL 연결 성공.");
		
		
		String sql = "select * from book";
		PreparedStatement ps = con.prepareStatement(sql); 
	
		System.out.println("3. SQL문 부품(객체)으로 만들어주기 성공.");

		rs = ps.executeQuery(); // select문 전송시
		System.out.println("4. SQL문 오라클로 보내기 성공.");
		while (rs.next()) { 
			int id = rs.getInt(1);
			String name = rs.getString(2); 
			String url2 = rs.getString(3); 
			String img = rs.getString(4); 
			
			// 3. 가방을 만들고 값들을 넣는다
			bag = new BookVO();
			bag.setId(id);
			bag.setName(name);
			bag.setUrl(url2);
			bag.setImg(img);

			// 4. list에 bag을 추가해주자.
			list.add(bag);
		}
		ps.close();
		rs.close();
		con.close();
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	return list;

}
}
