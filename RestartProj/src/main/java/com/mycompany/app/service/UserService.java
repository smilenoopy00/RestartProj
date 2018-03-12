package com.mycompany.app.service;

import java.util.List;

import com.mycompany.app.vo.UserVO;

public interface UserService {
	public List<UserVO> selectUser() throws Exception;
}
