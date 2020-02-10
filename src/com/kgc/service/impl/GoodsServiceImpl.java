package com.kgc.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kgc.entity.Goods;
import com.kgc.entity.PageBean;
import com.kgc.mapper.GoodsMapper;
import com.kgc.service.GoodsService;


@Service
public class GoodsServiceImpl implements GoodsService {

	
	private final int pageSize=8;
	@Autowired
	private GoodsMapper goodsMapper;
	
	@Override
	public int selectCount() {
		return goodsMapper.selectCount();
	}

	@Override
	public PageBean<Goods> findByPage(int currentPage) {
		HashMap<String,Object> map = new HashMap<String,Object>();
		PageBean<Goods> pageBean = new PageBean<Goods>();
		
	    //封装当前页数
        pageBean.setCurrPage(currentPage);
        
		//每页显示的数据
		pageBean.setPageSize(pageSize);
		
		//封装总记录数
		int totalCount = goodsMapper.selectCount();
		pageBean.setTotalCount(totalCount);
		
		//封装总页数
		double tc = totalCount;
        Double num =Math.ceil(tc/pageSize);//向上取整
        pageBean.setTotalPage(num.intValue());
      
		map.put("start",(currentPage-1)*pageSize);
		map.put("size", pageBean.getPageSize());
		//封装每页显示的数据
		List<Goods> lists = goodsMapper.findByPage(map);
		pageBean.setLists(lists);
		return pageBean;
	}
	
	public PageBean<Goods> findByPage2(int currentPage) {
		HashMap<String,Object> map = new HashMap<String,Object>();
		PageBean<Goods> pageBean = new PageBean<Goods>();
		
	    //封装当前页数
        pageBean.setCurrPage(currentPage);
        
		//每页显示的数据
		pageBean.setPageSize(pageSize);
		
		//封装总记录数
		int totalCount = goodsMapper.selectCount2();
		pageBean.setTotalCount(totalCount);
		
		//封装总页数
		double tc = totalCount;
        Double num =Math.ceil(tc/pageSize);//向上取整
        pageBean.setTotalPage(num.intValue());
      
		map.put("start",(currentPage-1)*pageSize);
		map.put("size", pageBean.getPageSize());
		//封装每页显示的数据
		List<Goods> lists = goodsMapper.findByPage2(map);
		
		pageBean.setLists(lists);
		return pageBean;
	}
	
	@Override
	public List<Goods> selectGoodsList() {
		return goodsMapper.selectGoodsList();
	}
	
	@Override
	public List<Goods> selectGoodsList2() {
		return goodsMapper.selectGoodsList();
	}

	@Override
	public List<Goods> queryGoods(String name) {
		return goodsMapper.queryGoods(name);
	}
	
	@Override
	public List<Goods> queryGoods2(String name) {
		return goodsMapper.queryGoods(name);
	}

	@Override
	public Goods selectGoods(int id) {
		return goodsMapper.selectGoods(id);
	}

	@Override
	public boolean deleteGoods(int g_id) {
		return goodsMapper.deleteGoods(g_id)>=1;
	}

	@Override
	public boolean updateGoods(int g_id, int zt_id) {
		return goodsMapper.updateGoodsZt(g_id, zt_id)>=1;
	}


}
