package dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import vo.VisitVO;

public class VisitDAO {

	SqlSession sqlSession;
	
	public VisitDAO(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	public List<VisitVO> selectList() {
		List<VisitVO> list = sqlSession.selectList("v.visit_list");
		return list;
	}
	
	//방명록에 새글 추가하기
	public int insert(VisitVO vo) {
		int res = sqlSession.insert("v.visit_insert",vo);
		return res;
	}
	
	//글 삭제하기
	public int delete(Map<String, Object> map) {
		int res = sqlSession.delete("v.visit_delete",map);
		return res;
	}
	
	//수정을 하기 위한 게시글 한 건 조회하기
	public VisitVO selectOne(int idx) {
		VisitVO vo = sqlSession.selectOne("v.visit_one",idx);
		return vo;
	}
	
	//삭제하기
	public int update(VisitVO vo) {
		int res = sqlSession.update("v.visit_update",vo);
		return res;
	}
}
