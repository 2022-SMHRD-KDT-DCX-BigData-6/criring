package com.clearing.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.clearing.database.SqlSessionManager;

public class StoreDAO {
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession(true);

	public int insertLaundry(LaundryDTO ldto) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		int result = 0;
		result = sqlSession.insert("registLaundry", ldto);
		sqlSession.close();
		return result;
	}

	public StoreDTO loginChk(StoreDTO sdto) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		StoreDTO storeMember = null;
		storeMember = sqlSession.selectOne("storeLoginChk", sdto);

		return storeMember;
	}
	public StoreVO storeData(StoreVO sVo) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		StoreVO storeData = sqlSession.selectOne("com.clearing.database.bookLaundryMapper.selStoreData",sVo);
		sqlSession.close();
		return storeData;
	}
}
