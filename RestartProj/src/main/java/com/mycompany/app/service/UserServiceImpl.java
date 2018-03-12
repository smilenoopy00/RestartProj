package com.mycompany.app.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.mycompany.app.dao.UserDAO;
import com.mycompany.app.vo.UserVO;

@Service
public class UserServiceImpl implements UserService{
	@Inject
	private UserDAO dao;
	
	@Override
	public List<UserVO> selectUser() throws Exception {
		return dao.selectUser();
	}
	
}
