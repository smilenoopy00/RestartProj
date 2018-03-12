package com.mycompany.app.dao;

import java.util.List;

import com.mycompany.app.vo.UserVO;

public interface UserDAO {
	public List<UserVO> selectUser() throws Exception;
}
