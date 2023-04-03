package com.multi.mvc200;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import org.springframework.stereotype.Component;

import com.multi.mvc200.ReplyVO;

// 테이블 하나당 DAO하나! >> 
@Component
public class ReplyDAO {

	public void insert(ReplyVO bag) {

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

			String sql = "insert into reply (bbsno, content, writer) values (?,?,?)";
			PreparedStatement ps = con.prepareStatement(sql);
			// con부품으로 sql스트링에 있는 것 SQL부품으로 만들어주세요

			ps.setInt(1, bag.getBbsno());
			ps.setString(2, bag.getContent());
			ps.setString(3, bag.getWriter());

			System.out.println("3.SQL문 부품(객체)으로 만들어주기");

			// 4. 전송
			ps.executeUpdate();
			System.out.println("4.SQL문 오라클로 보내기 성공");

		} catch (Exception e) {
			e.printStackTrace();
		}

	}
	public ArrayList<ReplyVO> list(int bbsno) {
		ResultSet rs = null; // 항목명 + 결과 데이터를 담고 있는 테이블

		// ArrayList<MemberVO> ==> MemberVO만 들어간 arraylist라는 의미
		ArrayList<ReplyVO> list = new ArrayList<>();
		ReplyVO bag = null;
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
			
			// 댓글은 특정 하나의 게시물에 대한 리스트이므로 
			// 특정 게시물을 가지고 댓글 리스트를 가지고 와야 함
			String sql = "select * from reply where bbsno = ?";
			PreparedStatement ps = con.prepareStatement(sql); 
			ps.setInt(1, bbsno);
			System.out.println("3. SQL문 부품(객체)으로 만들어주기 성공.");

			rs = ps.executeQuery(); // select문 전송시
			System.out.println("4. SQL문 오라클로 보내기 성공.");
			while (rs.next()) { 
				int no = rs.getInt(1);
				int bbsno2 = rs.getInt(2); 
				String content = rs.getString(3); 
				String writer = rs.getString(4); 
				System.out.println(no + " " + bbsno2 + " " + content + " " + writer);
				// 3. 가방을 만들고 값들을 넣는다
				bag = new ReplyVO();
				bag.setNo(no);
				bag.setBbsno(bbsno2);
				bag.setContent(content);
				bag.setWriter(writer);

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
