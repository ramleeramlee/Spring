package com.multi.mvc300;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class BbsController {
	@Autowired
	BbsDAO_w dao;
	
//	@Autowired
//	ReplyDAO dao2;
	
	@RequestMapping("insert2.multi")
	public void insert(BbsVO_w bag) {
		System.out.println("성공");
		dao.insert(bag);
	}
	
	@RequestMapping("update2.multi")
	public void update(BbsVO_w bag) {
		System.out.println("성공");
		dao.update(bag);
	}
	
	@RequestMapping("delete2.multi")
	public void delete(int no) {
		System.out.println("성공");
		dao.delete(no);
	}

	@RequestMapping("one2.multi")
	public void one(int no, Model model) {
		System.out.println("성공");
		BbsVO_w bag = dao.one(no);
		model.addAttribute("bag", bag);
//		ArrayList<ReplyVO> list = dao2.list(no);
//		model.addAttribute("list", list);
		
		
	}
	
	@RequestMapping("list2")
	public void list(Model model) {
		List<BbsVO_w> list = dao.list();
		model.addAttribute("list", list);
	}
	
//	@RequestMapping("list5")
//	public void list5(Model model) {
//		ArrayList<BbsVO_w> list = dao.list();
//		model.addAttribute("list", list);
//	}
//	
//	@RequestMapping("one6")
//	public void one6(int no, Model model) {
//		System.out.println("성공");
//		BbsVO_w bag = dao.one(no);
//		model.addAttribute("bag", bag);
//		
//	}
//	
//	@RequestMapping("update_test2")
//	public void update2(BbsVO_w bag) {
//		System.out.println("성공");
//		dao.update(bag);
//	}
//	
//	@RequestMapping("delete_test2")
//	public void delete2(int no) {
//		System.out.println("성공");
//		dao.delete(no);
//	}
//	
//	@RequestMapping("one22")
//	@ResponseBody
//	// views로 넘어가지 않고
//	// return값이 bag데이터를 json으로 만들어서 클라이언트로 전송
//	// 클라이언트 브라우저에서는 success: function(x)
//	// 결과와 함수의 입력변수인 x로 쏙 들어간다
//	public BbsVO_w one22(int no) {
//		System.out.println("성공");
//		BbsVO_w bag = dao.one(no);
//		System.out.println(bag);
//		
//		return bag;
//	}
//	
//	@RequestMapping("list55")
//	@ResponseBody
//	public ArrayList<BbsVO_w> list55() {
//		ArrayList<BbsVO_w> list = dao.list();
//		System.out.println(list.size());
//		return list;
//	}
}
