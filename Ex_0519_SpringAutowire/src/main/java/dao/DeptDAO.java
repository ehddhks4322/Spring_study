package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.DeptVO;

@Repository
public class DeptDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	public DeptDAO() {
		System.out.println("---DeptDAO의 기본생성자---");
	}
	
	public List<DeptVO> selectList(){
		List<DeptVO> list = sqlSession.selectList("d.dept_list");
		return list;
	}
}
