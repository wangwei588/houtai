package com.kgc.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.kgc.entity.GuanUser;

public interface GuanUserMapper {
	GuanUser queryByNameAndPwd(@Param("name")String name,@Param("password")String password);
	
	List<GuanUser> queryAllGuan();
	
	int deleteGuan(@Param("guan_id")int guan_id);
	
}
