package com.kgc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kgc.entity.Menu;
import com.kgc.mapper.MenuMapper;
import com.kgc.service.MenuService;
import com.kgc.utils.PageData;

@Service
public class MenuServiceImpl implements MenuService {
	
	@Autowired
	private MenuMapper menuMapper;

	/**
	 * 通过ID获取其子一级菜单
	 * @param parentId
	 * @return
	 * @throws Exception
	 */
	public List<Menu> listSubMenuByParentId(String parentId) throws Exception {
		return menuMapper.listSubMenuByParentId(parentId);
	}
	
	/**
	 * 通过菜单ID获取数据
	 * @param pd
	 * @return
	 * @throws Exception
	 */
	public PageData getMenuById(PageData pd) throws Exception {
		return menuMapper.getMenuById(pd);
	}
	
	/**
	 * 新增菜单
	 * @param menu
	 * @throws Exception
	 */
	public void saveMenu(Menu menu) throws Exception {
		menuMapper.insertMenu(menu);
	}
	
	/**
	 * 取最大ID
	 * @param pd
	 * @return
	 * @throws Exception
	 */
	public PageData findMaxId(PageData pd) throws Exception {
		return menuMapper.findMaxId(pd);
	}
	
	/**
	 * 删除菜单
	 * @param MENU_ID
	 * @throws Exception
	 */
	public void deleteMenuById(String MENU_ID) throws Exception {
		menuMapper.deleteMenuById(MENU_ID);
	}
	
	/**
	 * 编辑
	 * @param menu
	 * @return
	 * @throws Exception
	 */
	public void edit(Menu menu) throws Exception {
		menuMapper.updateMenu(menu);
	}
	
	/**
	 * 保存菜单图标 
	 * @param pd
	 * @return
	 * @throws Exception
	 */
	public PageData editicon(PageData pd) throws Exception {
		return menuMapper.editicon(pd);
	}
	
	/**
	 * 获取所有菜单并填充每个菜单的子菜单列表(菜单管理)(递归处理)
	 * @param MENU_ID
	 * @return
	 * @throws Exception
	 */
	public List<Menu> listAllMenu(String MENU_ID) throws Exception {
		List<Menu> menuList = this.listSubMenuByParentId(MENU_ID);
		for(Menu menu : menuList){
			menu.setMENU_URL("menu/toEdit.do?MENU_ID="+menu.getMENU_ID());
			menu.setSubMenu(this.listAllMenu(menu.getMENU_ID()));
			menu.setTarget("treeFrame");
		}
		return menuList;
	}

	/**
	 * 获取所有菜单并填充每个菜单的子菜单列表(系统菜单列表)(递归处理)
	 * @param MENU_ID
	 * @return
	 * @throws Exception
	 */
	public List<Menu> listAllMenuQx(String MENU_ID) throws Exception {
		List<Menu> menuList = this.listSubMenuByParentId(MENU_ID);
		for(Menu menu : menuList){
			menu.setHasMenu(true);
			menu.setSubMenu(this.listAllMenuQx(menu.getMENU_ID()));
			menu.setTarget("treeFrame");
		}
		return menuList;
	}
	
	

}
