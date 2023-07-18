package com.korea.mvc;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import util.MyPath;

@Controller
public class TestController {
	
	public TestController() {
		System.out.println("---TestController의 기본 생성자---");
	}
	
	@RequestMapping("/test.do")//내가 url에 test.do를 요청하면
	public String test(Model model,HttpServletRequest request) {//test()메서드가 실행이 된다.
		
		String [] fruits = {"사과","복숭아","바나나","딸기","수박"};
		String ip = request.getRemoteAddr();
		
		model.addAttribute("fruits", fruits);
		model.addAttribute("ip", ip);
		
		return MyPath.TestClass.VIEW_PATH+"test.jsp";//WEB-INF/views/안에 있는 test.jsp를 실행해줘라
		//게시판과 관련된 1,2,3.jsp는 board폴더에 넣어서 관리를 하고
		//회원과 관련된 4,5,6.jsp는 member폴더에 넣어서 관리를 하고싶다.
	}
	
	@RequestMapping("/test2.do")
	public String test2() {
		return MyPath.TestClass.VIEW_PATH+"test2.jsp";
	}
}
