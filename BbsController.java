package com.multi.mvc01;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BbsController {
	@Autowired
	BbsDAO_w dao;
	
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
		model.addAttribute("bag", bag);
	}
}
