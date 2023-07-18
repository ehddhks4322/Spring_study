package context;

import org.apache.ibatis.session.SqlSession;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import dao.BoardDAO;
import dao.MemberDAO;


@Configuration
public class Context_3_dao {

	@Bean
	public BoardDAO board_dao(SqlSession sqlSession) {
		return new BoardDAO(sqlSession);
	}
	
	@Bean
	public MemberDAO member_dao(SqlSession sqlSession) {
		return new MemberDAO(sqlSession);
	}
}

