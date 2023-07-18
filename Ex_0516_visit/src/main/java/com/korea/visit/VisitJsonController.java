package com.korea.visit;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import dao.VisitDAO;
import util.MyCommon;
import vo.VisitVO;

@Controller
public class VisitJsonController {
	
	@Autowired
	ServletContext application;
	
	VisitDAO visit_dao;
	
	public void setVisit_dao(VisitDAO visit_dao) {
		this.visit_dao = visit_dao;
	}
	
	@RequestMapping(value= {"/","visit_list.do"})
	@ResponseBody
	public List<VisitVO> list() {
		List<VisitVO> list = visit_dao.selectList();
		return list;
	}
	
	@RequestMapping("insert_form.do")
	public String insert_form() {
		
		return MyCommon.VIEW_PATH+"visit_insert_form.jsp";
	}
	
	@RequestMapping("insert.do")
	@ResponseBody
	//name=홍길동&content=내용&pwd=1111
	public HashMap<String, String> insert(VisitVO vo, HttpServletRequest request) {
		String ip = request.getRemoteAddr();
		vo.setIp(ip);
		
		//절대경로 찾기
		String webPath = "/resources/upload";
		String savePath = application.getRealPath(webPath);
		System.out.println(savePath);
		
		//업로드된 파일의 정보
		MultipartFile photo = vo.getPhoto();
		
		String filename = "no_file";
		
		//업로드된 파일이 존재한다면
		if(!photo.isEmpty()) {
			//업로드된 실제 파일의 이름
			filename = photo.getOriginalFilename();
			
			File saveFile = new File(savePath,filename);
			if(!saveFile.exists()) {
				saveFile.mkdirs();
			} else {
				//동일파일명 방지
				long time = System.currentTimeMillis();
				filename = String.format("%d_%s", time,filename);
				saveFile = new File(savePath,filename);
			}
			
			try {
				//업로드를 위한 실제 파일을 물리적으로 기록
				photo.transferTo(saveFile);
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		vo.setFilename(filename);
		
		//res가 1이면 success를  0이면 fail을 return 하자
		int res = visit_dao.insert(vo);
		String result = "fail";
		if(res != 0) {
			result = "success";
		}
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("result", result);
		
		//sendRedirect("visit_list.do");
		return map;
	}
	
	//글 삭제하기
	@RequestMapping("delete.do")
	@ResponseBody//return값을 view형태로 인식하지 않고 콜백메서드로 전달을 하기 위한 어노테이션
	public String delete(int idx,String pwd) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("idx", idx);
		map.put("pwd", pwd);
		
		int res = visit_dao.delete(map);
		
		String result = "no";
		
		if(res == 1) {
			result = "yes";
		}
		
		String finRes = String.format("[{'res':'%s'}]", result);
		
		//@ResponseBody를 쓰지 않으면 return에서 "[{'res':'%s'}]".jsp를 찾는다.
		return finRes;
	}
	
	@RequestMapping("modify_form.do")
	public String modify_form(Model model,int idx) {
		
		//파라미터로 넘어온 idx를 이용해 해당 idx를 가진 게시물 정보를 얻어온다.
		VisitVO vo = visit_dao.selectOne(idx);
		
		model.addAttribute("vo", vo);
		
		return MyCommon.VIEW_PATH+"visit_modify_form.jsp";
	}
	
	@RequestMapping("update.do")
	public String update(VisitVO vo, HttpServletRequest request) {
		String ip = request.getRemoteAddr();
		vo.setIp(ip);
		
		int res = visit_dao.update(vo);
		return "redirect:visit_list.do";
	}
}
