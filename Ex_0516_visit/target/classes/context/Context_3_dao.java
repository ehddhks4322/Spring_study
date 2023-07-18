package context;

import org.apache.ibatis.session.SqlSession;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import dao.VisitDAO;


@Configuration
public class Context_3_dao {

	@Bean
	public VisitDAO visit_dao(SqlSession sqlSession) {
		return new VisitDAO(sqlSession);
	}
	
}
