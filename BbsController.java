package com.multi.mvc200;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BbsController {
	@Autowired
	BbsDAO_w dao;
	
	@Autowired
	ReplyDAO dao2;
	
	@RequestMapping("insert2.multi")
	public void insert(BbsVO_w bag) {
		System.out.println("성공");
		dao.insert(bag);
	}
	
	@RequestMapping("delete2.multi")
	public void delete(int no) {
		System.out.println("성공");
		dao.delete(no);
	}
	
	@RequestMapping("update2.multi")
	public void update(BbsVO_w bag) {
		System.out.println("성공");
		dao.update(bag);
	}

	@RequestMapping("one2.multi")
	public void one(int no, Model model) {
		System.out.println("성공");
		BbsVO_w bag = dao.one(no);
		
		ArrayList<ReplyVO> list = dao2.list(no);
		model.addAttribute("list", list);
		model.addAttribute("bag", bag);
		
	}
	
	@RequestMapping("list2")
	public void list(Model model) {
		ArrayList<BbsVO_w> list = dao.list();
		model.addAttribute("list", list); //사용하고 나면 사라지므로 이름이 같아도 상관없다
	}
	
	@RequestMapping("list5")
	public void list5(Model model) {
		ArrayList<BbsVO_w> list = dao.list();
		model.addAttribute("list", list);
	}
	
	@RequestMapping("one6")
	public void one6(int no, Model model) {
		System.out.println("성공");
		BbsVO_w bag = dao.one(no);
		model.addAttribute("bag", bag);
		
	}
	
	@RequestMapping("update_test2")
	public void update2(BbsVO_w bag) {
		System.out.println("성공");
		dao.update(bag);
	}
	
	@RequestMapping("delete_test2")
	public void delete2(int no) {
		System.out.println("성공");
		dao.delete(no);
	}
}
