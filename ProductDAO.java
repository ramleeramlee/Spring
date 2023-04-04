package com.multi.mvc200;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import org.springframework.stereotype.Component;

@Component
public class ProductDAO {
	
	public ProductVO one(String id) {
		ResultSet rs = null;
		ProductVO bag = null;

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
			String sql = "select * from product where id = ? ";
			PreparedStatement ps = con.prepareStatement(sql);
			// con부품으로 sql스트링에 있는 것 SQL부품으로 만들어주세요

			ps.setString(1, id); // ** db는 인덱스가 1부터 시작!!!

			System.out.println("3.SQL문 부품(객체)으로 만들어주기");

			// 4. 전송
			rs = ps.executeQuery();
			System.out.println("4.SQL문 오라클로 보내기 성공");

			if (rs.next()) { //// 검색결과가 있는지 여부는 rs.next()
				//// true이면 있다, false이면 없다 라는 의미
				System.out.println("검색결과 있음. 성공");
				String id2 = rs.getString(1);
				String name = rs.getString(2);
				String content = rs.getString(3);
				int price = rs.getInt(4);
				String company = rs.getString(5);
				String img = rs.getString(6);
			

				//// 검색결과를 검색화면 UI부분을 주어야 함(DAO는 JOptionPane가 안됨)
				bag = new ProductVO();
				bag.setId(id2);
				bag.setName(name);
				bag.setContent(content);
				bag.setPrice(price);
				bag.setCompany(company);
				bag.setImg(img);
				
			} else {
				System.out.println("검색결과 없음");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return bag;
	}
	
	public ArrayList<ProductVO> list() {
		ResultSet rs = null; // 항목명 + 결과 데이터를 담고 있는 테이블

		// 가방들 넣어줄 큰 컨테이너 역할을 부품이 필요!
		// ArrayList<MemberVO> ==> MemberVO만 들어간 arraylist라는 의미
		ArrayList<ProductVO> list = new ArrayList<>();

		ProductVO bag = null;
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
			
			
			String sql = "select * from product";
			PreparedStatement ps = con.prepareStatement(sql); 
		
			System.out.println("3. SQL문 부품(객체)으로 만들어주기 성공.");

			rs = ps.executeQuery(); // select문 전송시
			System.out.println("4. SQL문 오라클로 보내기 성공.");
			while (rs.next()) { 
				String id = rs.getString(1);
				String name = rs.getString(2); 
				String content = rs.getString(3); 
				int price = rs.getInt(4); 
				String company = rs.getString(5); 
				String img = rs.getString(6); 
				
				// 3. 가방을 만들고 값들을 넣는다
				bag = new ProductVO();
				bag.setId(id);
				bag.setName(name);
				bag.setContent(content);
				bag.setPrice(price);
				bag.setCompany(company);
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
