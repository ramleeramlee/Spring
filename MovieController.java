package com.multi.mvc200;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller //컨트롤러로 등록 >> 싱글톤 생성
public class MovieController {
	
	@RequestMapping("movie")
	public void com(MovieVO vo, Model model) {
		System.out.println(vo);
		model.addAttribute("vo", vo);
	}
	
	@RequestMapping("fruit")
	public void fruit(Model model) {
		ArrayList<String> list = new ArrayList<String>();
		list.add("사과");
		list.add("자두");
		list.add("포도");
		list.add("망고");
		model.addAttribute("list", list);
	}

	@RequestMapping("tour")
	public void tour(Model model) {
		ArrayList<String> list2 = new ArrayList<String>();
		list2.add("오사카");
		list2.add("캐나다");
		list2.add("대만");
		list2.add("싱가폴");
		model.addAttribute("list", list2);
	}

}
