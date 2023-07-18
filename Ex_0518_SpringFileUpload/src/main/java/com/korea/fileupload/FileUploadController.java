package com.korea.fileupload;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import vo.PhotoVO;

@Controller
public class FileUploadController {
	
	@Autowired
	HttpServletRequest request;
	
	//@Autowired
	//session,request와 같은 jsp,servlet에서 제공을 해주는 객체이기 때문에 스프링에서도 지원을 한다.
	//jsp에서 Servlet을 지원해주는 객체를 따로 생성하는 과정 없이 자동으로 만들어 주는 어노테이션
	//무조건은 아니지만 코드를 조금만 손보면 원하는 객체를 다 만들 수 있다.
	
	static final String VIEW_PATH = "/WEB-INF/views/";
	
	@RequestMapping(value= {"/","insert_form.do"})
	public String insert_form() {
		return VIEW_PATH+"insert_form.jsp";
	}
	
	@RequestMapping("upload.do")
	public String upload(PhotoVO vo) {
		//PhotoVO에는 title과 이미지에 대한 정보만 넘어온다.
		
		//우선 우리가 지정한 경로에 파일이 잘 업로드 되는지 확인하기
		String webPath = "resources/upload";
		String savePath = request.getServletContext().getRealPath(webPath);
		System.out.println(savePath);
		
		//업로드된 파일의 정보
		MultipartFile photo = vo.getPhoto();
		String filename = "no_file";
		
		//!photo.isEmpty() : photo객체에 내용이 뭐라도 들어있다.
		if(!photo.isEmpty()) {
			//getOriginalFilename() : 업로드된 실제 파일명
			filename = photo.getOriginalFilename();
			
			//파일을 저장할 경로를 설정
			File saveFile = new File(savePath, filename);
			
			if(!saveFile.exists()) {//경로가 없다면
				//폴더를 만들어라
				saveFile.mkdirs();
			} else {
				//동일한 이름의 파일의 경우 폴더형태로 변환이 불가능하므로
				//업로드한 시간을 붙여서 이름이 중복되는것을 방지
				
				//자바가 만들어진 1970년부터 2023년 현재까지의 시간을 1000분의 1초로 저장을한다.
				long time = System.currentTimeMillis();
				filename = String.format("%d_%s", time,filename);
				saveFile = new File(savePath,filename);
			}
			
			//물리적으로 파일을 업로드하는 코드
			try {
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
		//vo.getPhoto();로 얻어온 파일정보에서 파일이름을 뽑아서 넣어주자.
		
		request.setAttribute("vo", vo);
		
		return VIEW_PATH+"insert_result.jsp";
	}
}
