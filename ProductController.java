package com.multi.mvc200;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductController {
	
	@Autowired
	ProductDAO dao;
	
	@RequestMapping("one8")
	public void one8(String id, Model model) {
		System.out.println(id);
		ProductVO bag = dao.one(id);
		model.addAttribute("bag", bag);
	}
	
	@RequestMapping("list8")
	public void list8(ProductVO bag, Model model) {
		ArrayList<ProductVO> list = dao.list();
		model.addAttribute("list", list);
	}
	
}
