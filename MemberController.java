package com.multi.mvc300;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller //스프링에서 제어하는 역할로 등록
public class MemberController {
	@Autowired 
	//MemberDAO의 싱글톤 객체 ram의 어디에 있는지 찾아서 아래 변수에 넣어주세요
	
	MemberDAO_w dao; //전역변수(글로벌 변수)
	
	// 클래스 내에서 기능처리 담당(멤버변수 + 멤버메서드)
	// 하나의 요청당 하나의 메서드
	// 하나의 버튼호출당 하나의 함수 연결
	
	// 요청된 주소가 어떻게 될 때 바로 아래에 있는 메서드가 호출이 될건지 써주어야 한다
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
		MemberVO_w bag = dao.one(id); 
		model.addAttribute("bag", bag);
		
	}
	
	@RequestMapping("list")
	public void list(Model model) {
		List<MemberVO_w> list = dao.list();
		model.addAttribute("list", list);
	}
	
//	@RequestMapping("login")
//	public String login(MemberVO_w bag, HttpSession session) {
//		System.out.println(bag);
//		int result = dao.login(bag); //1, 0
//		if (result == 1) {
//			
//			// *************로그인이 성공하면, 세션을 잡아두자
//			session.setAttribute("id", bag.getId());
//			
//			return "ok"; //views 아래 파일이름.jsp
//		}else {
//			// 실패 시 views아래가 아닌, webapp아래 member.jsp로 가고 싶은 경우
//			return "redirect:Member.jsp"; 
//		}
//	}
	

	
//	@RequestMapping("one5")
//	public void one5(String id, Model model) {
//		System.out.println(id);
//		MemberVO_w bag = dao.one(id); 
//		model.addAttribute("bag", bag);
//	
//	}
	

//	@RequestMapping("list7")
//	public void list7(Model model) {
//		ArrayList<MemberVO_w> list = dao.list();
//		model.addAttribute("list", list);
//	}
	
//	@RequestMapping("jsonResponse3")
//	@ResponseBody
//	public MemberVO_w jsonResponse3(String id) {
//		System.out.println(id);
//		MemberVO_w bag = dao.one(id); 
//		return bag;
//	
//	}
	

//	@RequestMapping("jsonResponse4")
//	@ResponseBody
//	public ArrayList<MemberVO_w>  jsonResponse4() {
//		ArrayList<MemberVO_w> list = dao.list();
//		
//		return list;
//	}
	
}
