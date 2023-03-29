package com.multi.mvc01;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller //스프링에서 제어하는 역할로 등록
public class MemberController {
	@Autowired
	MemberDAO_w dao; //전역변수(글로벌 변수)
	
	// 컨트롤 하는 기능(CRUD) -- 가입, 수정, 탈퇴, 정보검색
	
	// 클래스 내에서 기능처리 담당(멤버변수 + 멤버메서드)
	// 하나의 요청당 하나의 메서드
	// 하나의 버튼호출당 하나의 함수 연결
	
	// 요청된 주소가 어떻게 될 때 바로 아래에 있는 메서드가 호출이 될건지 써주어야 한다
	// . 뒤에 붙는 내용은 의미없음 그냥 마크표시 같은 느낌?? 안써도 됨(주로 회사 이름)
	@RequestMapping("insert.multi")
	public void insert(MemberVO_w bag) {
		// 메서드의 입력변수(파라메터)로 변수를 선언해두면
		// 컨트롤러내의 메서드내에서는 
		// 1) bag을 만들어서 
		// 2) 클라이언트로 부터 전달된 데이터도 받아줌
		// 3) bag에 데이터 다 넣어줌
		
		System.out.println("insert 요청성공");
		System.out.println(bag);
		dao.insert(bag);
		//Member DAO_w dao = new MemberDAO_w();
		//dao에게 insert요청!!
		
	}
	
	@RequestMapping("update")
	public void update(MemberVO_w bag) {
		System.out.println("update 요청성공");
		System.out.println(bag);
		dao.update(bag);
	}
	
	@RequestMapping("delete")
	public void delete(String id) {
		System.out.println("delete 요청성공");
		System.out.println(id);
		dao.delete(id);
		
	}
	
	@RequestMapping("one")
	public void one(String id, Model model) {
		System.out.println("one 요청성공");
		System.out.println(id);
		MemberVO_w bag = dao.one(id); //bag에 검색결과 다 들어있음
		//views아래 one.jsp로 쓸 수 있도록 설정해주어햐 함
		model.addAttribute("bag", bag);
		//views까지 전달할 속성으로 추가해주세요
	}
	
	@RequestMapping("login")
	public String login(MemberVO_w bag) {
		System.out.println(bag);
		int result = dao.login(bag); //1, 0
		if (result == 1) {
			return "ok"; //views 아래 파일이름.jsp
		}else {
			// 실패 시 views아래가 아닌, webapp아래 member.jsp로 가고 싶은 경우
			return "redirect:Member.jsp"; 
		}
	}
	
}
