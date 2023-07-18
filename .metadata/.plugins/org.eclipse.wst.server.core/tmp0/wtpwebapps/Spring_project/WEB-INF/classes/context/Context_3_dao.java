package context;

import org.apache.ibatis.session.SqlSession;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.EnableAspectJAutoProxy;

import dao.IT_BoardDAO;
import dao.IT_Board_DetailDAO;
import dao.IT_MemberDAO;
import dao.IT_Member_DetailDAO;
import dao.IT_ProductDAO;


@Configuration
@EnableAspectJAutoProxy //스프링이 자동으로 개발자의 메소드를 호출하기 전에 가로챌 수 있게 하는 옵션
public class Context_3_dao {
	
	@Bean
	public IT_BoardDAO board_dao(SqlSession sqlSession) {
		return new IT_BoardDAO(sqlSession);
	}
	
	@Bean
	public IT_Board_DetailDAO board_detail_dao(SqlSession sqlSession) {
		return new IT_Board_DetailDAO(sqlSession);
	}
	
	@Bean
	public IT_MemberDAO member_dao(SqlSession sqlSession) {
		return new IT_MemberDAO(sqlSession);
	}
	
	@Bean
	public IT_Member_DetailDAO member_detail_dao(SqlSession sqlSession) {
		return new IT_Member_DetailDAO(sqlSession);
	}
	
	@Bean
	public IT_ProductDAO product__dao(SqlSession sqlSession) {
		return new IT_ProductDAO(sqlSession);
	}
	
}

