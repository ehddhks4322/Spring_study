package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import vo.GogekVO;

public class GogekDAO {
	
	SqlSession sqlSession;
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	public List<GogekVO> selectList() {
		List<GogekVO> list = sqlSession.selectList("g.gogek_list");
		return list;
	}
}
