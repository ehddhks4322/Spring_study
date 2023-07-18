package com.korea.json;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import vo.PersonVO;

@Controller
public class JsonMakerController {
	
	@RequestMapping("vo_to_json")
	@ResponseBody
	public PersonVO voJson() {
		PersonVO vo = new PersonVO();
		vo.setName("홍길동");
		vo.setAddr("인천시 부평구");
		vo.setAge(30);
		
		return vo;
	}
	
	@RequestMapping("map_to_json")
	@ResponseBody
	public HashMap<String, Object> mapJson(){
		HashMap<String, Object> map = new HashMap();
		map.put("name", "홍길동");
		map.put("age", 20);
		
		HashMap<String, String> map2 = new HashMap();
		map2.put("home", "010-1111-1111");
		map2.put("cell", "010-2222-2222");
		
		map.put("tel", map2);
		
		return map;
	}
	
	@RequestMapping("list_to_json")
	@ResponseBody
	public List<PersonVO> listJson(){
		List<PersonVO> list = new ArrayList<PersonVO>();
		
		PersonVO p1 = new PersonVO();
		p1.setName("홍길동");
		p1.setAddr("인천시 부평구");
		p1.setAge(30);
		
		PersonVO p2 = new PersonVO();
		p2.setName("김길동");
		p2.setAddr("서울시 강남구");
		p2.setAge(21);
		
		list.add(p1);
		list.add(p2);
		
		return list;
	}
}
