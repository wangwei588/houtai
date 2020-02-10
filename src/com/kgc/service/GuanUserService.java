package com.kgc.service;

import java.util.List;

import com.kgc.entity.GuanUser;

public interface GuanUserService {
	
	GuanUser queryByNameAndPwd(String name,String password);
	
	List<GuanUser> queryAllGuan();
	
	boolean deleteGuan(int guan_id);
	
}
