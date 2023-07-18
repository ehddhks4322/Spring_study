package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.DeptDAO;
import vo.DeptVO;

@Controller
public class TestController {
	
	static final String VIEW_PATH = "/WEB-INF/views/";
	
	@Autowired
	DeptDAO dept_dao;
	
	public TestController() {
		System.out.println("---TestController의 기본생성자---");
	}
	
	@RequestMapping(value= {"dept_list.do"})
	public String deptList(Model model) {
		List<DeptVO> list = dept_dao.selectList();
		
		model.addAttribute("list", list);
		return VIEW_PATH+"dept_list.jsp";
	}
	
	@RequestMapping("/")
	public String loginForm() {
		return VIEW_PATH+"login_form.jsp";
	}
	
	@PostMapping("login")
	public String login(@ModelAttribute("id") String id, String pwd) {
		if(id.equals("admin")) {
			return VIEW_PATH+"admin.jsp";
		} else {
			return VIEW_PATH+"main.jsp";
		}
	}
}
