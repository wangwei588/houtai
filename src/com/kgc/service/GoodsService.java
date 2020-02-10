package com.kgc.service;

import java.util.HashMap;
import java.util.List;

import com.kgc.entity.Goods;
import com.kgc.entity.PageBean;

public interface GoodsService {
	

    int selectCount();

    PageBean<Goods> findByPage(int currentPage);
    
    PageBean<Goods> findByPage2(int currentPage);
    
    
    List<Goods> selectGoodsList();
    
    List<Goods> selectGoodsList2();
    
    List<Goods> queryGoods(String name);
    
    List<Goods> queryGoods2(String name);
    
    public Goods selectGoods(int id);
    
    boolean deleteGoods(int g_id);
    
    boolean updateGoods(int g_id,int zt_id);
    
}
