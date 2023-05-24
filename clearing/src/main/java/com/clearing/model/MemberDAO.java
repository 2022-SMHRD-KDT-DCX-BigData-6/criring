package com.clearing.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionManager;

public class MemberDAO {
	SqlSessionFactory sqlSessionFactory = com.clearing.database.SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession(true);
	public MemberDTO loginCheck(MemberDTO dto) {
		MemberDTO member = null;
		
		member = sqlSession.selectOne("com.clearing.database.MemberMapper.loginchk", dto);
		sqlSession.close();
		return member;
	}
}
