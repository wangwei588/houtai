package com.kgc.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.kgc.entity.Goods;

public interface GoodsMapper {
	
	/**
	 * 分页
	 * @param map
	 * @return
	 */
	public List<Goods> findByPage(HashMap<String, Object> map);
	
	/**
	 * 分页(待审核)
	 * @param map
	 * @return
	 */
	public List<Goods> findByPage2(HashMap<String, Object> map);
	
	/**
     * 查询商品总数
     * @return
     */
    public int selectCount();
    
    /**
     * 查询待审核商品总数
     * @return
     */
    public int selectCount2();
    
    /**
     * 查询所有上架商品数据
     * @return
     */
    public List<Goods> selectGoodsList();
    
    /**
     * 查询所有待审核商品数据
     * @return
     */
    public List<Goods> selectGoodsList2();

    /**
     * 搜索商品
     */
    public List<Goods> queryGoods(@Param("name") String name);
    
    /**
     * 搜索待审核商品
     */
    public List<Goods> queryGoods2(@Param("name") String name);
    
    /**
     * 查询对应ID商品详情
     */
    public Goods selectGoods(@Param("id") int id);
    
    /**
     * 删除某个商品
     * @param g_id
     * @return
     */
    int deleteGoods(@Param("g_id")int g_id);
    
    int updateGoodsZt(@Param("g_id")int g_id,@Param("zt_id")int zt_id);
    
}
