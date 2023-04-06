package com.multi.mvc200;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class RestController {
	
	@RequestMapping("json1")
	@ResponseBody 
	// Spring컨트롤러에 return하는 데이터를 json으로 만들어주는 기능
	// = 요청을 받으면 return되는 데이터를 json으로 만들어서 요청하는 곳으로 다시 보냄
	//(views 밑에 .jsp파일을 만들 필요가 없다)
	public MemberVO_w json1() {
		MemberVO_w bag = new MemberVO_w();
		bag.setId("root");
		bag.setpw("1234");
		bag.setName("hong");
		bag.setTel("011");
		
		return bag;
	}
	
	@RequestMapping("json2")
	@ResponseBody 
	public ArrayList<MemberVO_w> json2() {
		MemberVO_w bag = new MemberVO_w();
		bag.setId("root");
		bag.setpw("1234");
		bag.setName("hong");
		bag.setTel("011");
		
		MemberVO_w bag2 = new MemberVO_w();
		bag2.setId("root2");
		bag2.setpw("12342");
		bag2.setName("hong2");
		bag2.setTel("0112");
		
		ArrayList<MemberVO_w> list = new ArrayList<MemberVO_w>();
		list.add(bag);
		list.add(bag2);
		
		return list;
	}
	
	@RequestMapping("json3")
	@ResponseBody 
	// Spring컨트롤러에 return하는 데이터를 json으로 만들어주는 기능
	// = 요청을 받으면 return되는 데이터를 json으로 만들어서 요청하는 곳으로 다시 보냄
	//(views 밑에 .jsp파일을 만들 필요가 없다)
	public BbsVO_w json3() {
		BbsVO_w bag = new BbsVO_w();
		bag.setNo(20);
		bag.setTitle("가나다");
		bag.setContent("해냈다!!");
		bag.setWriter("apple");
		
		return bag;
	}
	
	@RequestMapping("json4")
	@ResponseBody 
	public ArrayList<BbsVO_w> json4() {
		BbsVO_w bag = new BbsVO_w();
		bag.setNo(15);
		bag.setTitle("안녕");
		bag.setContent("스프링");
		bag.setWriter("ㅎㅎㅎ");
		
		BbsVO_w bag2 = new BbsVO_w();
		bag2.setNo(20);
		bag2.setTitle("가나다");
		bag2.setContent("해냈다!!");
		bag2.setWriter("apple");
		
		ArrayList<BbsVO_w> list = new ArrayList<BbsVO_w>();
		list.add(bag);
		list.add(bag2);
		
		return list;
	}
	
	@RequestMapping("jsonResponse5")
	@ResponseBody 
	public MapVO kakaoMap() {
		MapVO bag = new MapVO();
		bag.setLat(37.5117);
		bag.setLon(127.0592);
		
		System.out.println(bag);
		return bag;
	}
	
	@RequestMapping("jsonResponse6")
	@ResponseBody
	public ArrayList<ChartVO> json6() {
		ArrayList<ChartVO> list = new ArrayList<ChartVO>();
		
		ChartVO vo = new ChartVO();
		vo.setWork("study!");
		vo.setTime(10);
		list.add(vo);
		
		ChartVO vo2 = new ChartVO();
		vo2.setWork("run!");
		vo2.setTime(5);
		list.add(vo2);
		
		ChartVO vo3 = new ChartVO();
		vo3.setWork("eat!");
		vo3.setTime(7);
		list.add(vo3);
		
		return list;
	}
	
}


