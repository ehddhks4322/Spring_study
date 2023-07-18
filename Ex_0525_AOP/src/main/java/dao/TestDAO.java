package dao;

import org.apache.ibatis.session.SqlSession;

public class TestDAO {
	
	SqlSession sqlSession;
	
	public TestDAO(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	public void test() {
		System.out.println("--- call TestDAO.test()---");
	}
}
