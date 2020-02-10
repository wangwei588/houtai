package com.kgc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kgc.entity.GuanUser;
import com.kgc.mapper.GuanUserMapper;
import com.kgc.service.GuanUserService;

@Service
public class GuanUserServiceImpl implements GuanUserService {

	
	@Autowired
	private GuanUserMapper guanUserMapper;
	
	/**
	 * 登录判断并返回用户对象
	 */
	@Override
	public GuanUser queryByNameAndPwd(String name,String password) {
		return guanUserMapper.queryByNameAndPwd(name, password);
	}

	
	/**
	 * 获得全部权限角色
	 */
	@Override
	public List<GuanUser> queryAllGuan() {
		return guanUserMapper.queryAllGuan();
	}

	/**
	 * 删除一个权限角色
	 */
	@Override
	public boolean deleteGuan(int guan_id) {
		return guanUserMapper.deleteGuan(guan_id)>=1;
	}

}
