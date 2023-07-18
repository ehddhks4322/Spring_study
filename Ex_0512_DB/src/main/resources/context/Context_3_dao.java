package context;

import org.apache.ibatis.session.SqlSession;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import dao.DeptDAO;

@Configuration
public class Context_3_dao {
	
	SqlSession sqlSession;
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Bean
	public DeptDAO dept_dao() {
		DeptDAO dao = new DeptDAO();
		dao.setSqlSession(sqlSession);
		return dao;
	}
}
