package com.korea.test_di;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import service.BoardServiceImpl;

@Controller //스프링이 해당 클래스가 Controller라는 것을 인식시키기위해 반드시 사용해야한다.
public class BoardController {

	BoardServiceImpl service;
	
	public void setService(BoardServiceImpl service) {
		this.service = service;
	}
	
	//사용자가 요청한 url을 접수
	//사용자가 board/list.do를 요청하면 해당 메서드가 실행된다.
	//jsp의 url매핑이라고 생각하면 된다.
	@RequestMapping("/board/list.do")
	public String list(Model model) {
		List<Object> list = service.selectList();
		model.addAttribute("list", list); //바인딩
		
		return "board_list"; //포워딩
	}
}
