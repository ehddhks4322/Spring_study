package context;

import org.apache.ibatis.session.SqlSession;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.EnableAspectJAutoProxy;

import advice.Advice;
import dao.TestDAO;


@Configuration
@EnableAspectJAutoProxy //스프링이 자동으로 개발자의 메소드를 호출하기 전에 가로챌 수 있게 하는 옵션
public class Context_3_dao {
	
	@Bean
	public TestDAO testDAO(SqlSession sqlSession) {
		return new TestDAO(sqlSession);
	}
	
	@Bean
	public Advice advice() {
		return new Advice();
	}
	
}

