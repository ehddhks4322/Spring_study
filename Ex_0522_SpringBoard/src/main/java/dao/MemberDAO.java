package dao;

import org.apache.ibatis.session.SqlSession;

import vo.MemberVO;

public class MemberDAO {
	
	SqlSession sqlSession;
	
	public MemberDAO(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	//로그인 검증
	public MemberVO loginCheck(String id) {
		MemberVO vo = sqlSession.selectOne("m.loginCheck",id);
		return vo;
	}
	
	//아이디 중복체크
	public int check_id(String id) {
		int res = sqlSession.selectOne("m.check_id",id);
		return res;
	}
	
	//회원추가메서드
	public int insert(MemberVO vo) {
		int res = sqlSession.insert("m.member_insert",vo);
		return res;
	}
}
