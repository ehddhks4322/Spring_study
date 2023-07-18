package com.korea.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import context.Context_1_dataSource;
import context.Context_2_mybatis;
import context.Context_3_dao;
import dao.DeptDAO;
import lombok.extern.log4j.Log4j;

//JUnit 프레임워크의 테스트 실행방법을 확장할 때 사용하는 어노테이션
//톰캣 대신에 스프링에 접근할 수 있게 해준다.
@RunWith(SpringJUnit4ClassRunner.class)

//설정파일을 읽어야 하는데, 설정파일을 로드해주는 어노테이션
@ContextConfiguration(classes= {Context_1_dataSource.class,Context_2_mybatis.class,Context_3_dao.class})

//로그 객체를 생성해준다.
@Log4j
public class DeptTest {
	
	@Autowired
	private DeptDAO dept_dao;
	
	@Test
	public void getListTest() {
		dept_dao.selectList().forEach(log::info);;
		
//		for(DeptVO vo : list) {
//			System.out.printf("%d / %s / %s\n",vo.getDeptno(),vo.getDname(),vo.getLoc());
//		}
	}
}
