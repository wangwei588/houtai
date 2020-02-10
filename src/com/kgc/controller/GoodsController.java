package com.kgc.controller;



import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kgc.entity.Goods;
import com.kgc.entity.PageBean;
import com.kgc.service.GoodsService;

@Controller
@RequestMapping("goods")
public class GoodsController {
	
	@Autowired
	private GoodsService goodsService;
	/*
	 * 分页查询
	 */
	@RequestMapping("main")
	@ResponseBody
	public PageBean<Goods>  main(@RequestParam(value="currentPage",defaultValue="1",required=false)int currentPage,HttpSession session){
		
		PageBean<Goods> pageBean = goodsService.findByPage(currentPage);
		session.setAttribute("totalPage", pageBean.getTotalPage());
		return pageBean;
	}
	
	@RequestMapping("main2")
	@ResponseBody
	public PageBean<Goods>  main2(@RequestParam(value="currentPage",defaultValue="1",required=false)int currentPage,HttpSession session){
		
		PageBean<Goods> pageBean = goodsService.findByPage2(currentPage);
		session.setAttribute("totalPage2", pageBean.getTotalPage());
		return pageBean;
	}
	
	/**
	 * 模糊查询
	 * @param name
	 * @param request
	 * @return
	 */
	@RequestMapping("queryGoods")
	@ResponseBody
	public List<Goods> queryGoods(String name,HttpServletRequest request){
		return goodsService.queryGoods(name);
	}
	/**
	 * 查找某个商品
	 * @param id
	 * @return
	 */
	@RequestMapping("selectGoods")
	@ResponseBody
	 public Goods selectGoods(int id){
		 return goodsService.selectGoods(id);
	 }
	
	@RequestMapping("delete")
	@ResponseBody
	public boolean deleteGoods(int g_id){
		return goodsService.deleteGoods(g_id);
	}
	
	@RequestMapping("update")
	@ResponseBody
	public boolean update(int g_id,int zt_id){
		return goodsService.updateGoods(g_id, zt_id);
	}
	
}
