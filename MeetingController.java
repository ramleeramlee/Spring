package com.multi.mvc01;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MeetingController {
	@Autowired
	meetingDAO dao;
	
	@RequestMapping("insert4.multi")
	public void insert(meetingVO bag) {
		System.out.println("성공");
		dao.insert(bag);
	}
	
	@RequestMapping("update4.multi")
	public void update(meetingVO bag) {
		System.out.println("성공");
		dao.update(bag);
	}
	
	@RequestMapping("delete4.multi")
	public void delete(String name) {
		System.out.println("성공");
		dao.delete(name);
	}
	
	@RequestMapping("one4.multi")
	public void one(String name, Model model) {
		System.out.println("성공");
		meetingVO bag = dao.one(name);
		model.addAttribute("bag", bag);
	}
	
	@RequestMapping("list4")
	public void list(Model model) {
		System.out.println("성공");
		ArrayList<meetingVO> list = dao.list();
		model.addAttribute("list", list); //사용하고 나면 사라지므로 이름이 같아도 상관없다
	}
	
	@RequestMapping("list5")
	public void list2(String boolean2, Model model) {
		System.out.println("성공");
		ArrayList<meetingVO> list2 = dao.list2(boolean2);
		model.addAttribute("list2", list2); //사용하고 나면 사라지므로 이름이 같아도 상관없다
	}
}
