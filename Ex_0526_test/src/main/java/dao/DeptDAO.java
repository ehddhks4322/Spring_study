package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import vo.DeptVO;

public class DeptDAO {
	
	SqlSession sqlSession;
	
	public DeptDAO(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	//부서테이블 조회
	public List<DeptVO> selectList(){
		List<DeptVO> list =  sqlSession.selectList("d.dept_list");
		return list;
	}
}
