package com.clearing.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.clearing.database.SqlSessionManager;

public class Request_BoardDAO {
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession(true);
	
	public List<Request_BoardDTO> selectAll_request(){
		
		List<Request_BoardDTO> sel_list = sqlSession.selectList("com.clearing.database.requestMapper.selectAllrequest", new Request_BoardDTO());
		
		sqlSession.close();
		
		return sel_list;
	}
	
	public Request_BoardDTO selectDetail_request(Request_BoardDTO dto) {
		Request_BoardDTO rDto = null;
		
		rDto = sqlSession.selectOne("com.clearing.database.requestMapper.select_req", dto);
		
		sqlSession.close();
		
		return rDto;
	}
	
	
	public int insert_req (Request_BoardDTO dto) {
		int insert = 0;
		
		insert = sqlSession.insert("com.clearing.database.requestMapper.insert_req", dto);
		
		sqlSession.close();
		
		return insert;
	}
	
	public int update_req (Request_BoardDTO dto) {
		int update = 0;
		
		update = sqlSession.update("com.clearing.database.requestMapper.update_req", dto);
		
		sqlSession.close();
		
		return 0;
	}
	
}
