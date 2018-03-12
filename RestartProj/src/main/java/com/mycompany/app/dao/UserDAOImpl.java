package com.mycompany.app.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.mycompany.app.vo.UserVO;

@Repository
public class UserDAOImpl implements UserDAO {
	@Inject
	private SqlSession sqlSession;
	
	private static final String Namespace = "com.mycompany.app.mapper.userMapper";
	
	@Override
	public List<UserVO> selectUser() throws Exception {
		return sqlSession.selectList(Namespace + ".selectUser");
	}
}
