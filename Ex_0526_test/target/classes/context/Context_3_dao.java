package context;

import org.apache.ibatis.session.SqlSession;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.EnableAspectJAutoProxy;

import dao.DeptDAO;


@Configuration
@EnableAspectJAutoProxy //스프링이 자동으로 개발자의 메소드를 호출하기 전에 가로챌 수 있게 하는 옵션
public class Context_3_dao {
	
	
	@Bean
	public DeptDAO dept_dao(SqlSession sqlSession) {
		return new DeptDAO(sqlSession);
	}

}

