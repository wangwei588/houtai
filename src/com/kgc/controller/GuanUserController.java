package com.kgc.controller;


import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kgc.entity.GuanUser;
import com.kgc.entity.Menu;
import com.kgc.service.GuanUserService;
import com.kgc.service.MenuService;
import com.kgc.utils.PageData;

@Controller
@RequestMapping("guan")
public class GuanUserController extends BaseController {
	
	@Autowired
	private GuanUserService guanUserService;
	
	@Autowired
	private MenuService menuService;
	
	@RequestMapping("login")
	@ResponseBody
	public boolean queryByNameAndPwd(String name,String password,HttpServletRequest req) throws Exception{
		
		System.out.println("用户名："+name);
		GuanUser guanUser = guanUserService.queryByNameAndPwd(name, password);
		if(guanUser!=null){
			HttpSession session = req.getSession();
			session.setAttribute("guanuser", guanUser);
			List<Menu> allmenuList = new ArrayList<Menu>();
			allmenuList =menuService.listAllMenuQx("0");		//菜单缓存
			session.setAttribute("menuList", allmenuList);
			System.out.println("登录成功！");
			return true;
		}
		return false;
	}
	
	@RequestMapping("queryAll")
	@ResponseBody
	public List<GuanUser> queryAllGuan(){
		return guanUserService.queryAllGuan();
	}
	
	@RequestMapping("delete")
	@ResponseBody
	public boolean deleteGuan(int guan_id){
		return guanUserService.deleteGuan(guan_id);
	}
	
	@RequestMapping("exit")
	public String exit(HttpServletRequest req){
		
		HttpSession session = req.getSession();
		session.removeAttribute("guanuser");
		System.out.println("退出登录");
		return "redirect:/login.jsp";
	}
	
	/**
	 * 进入tab标签
	 * @return
	 */
	@RequestMapping(value="tab")
	public String tab(){
		return "static/tab";
	}
	
	/**访问系统首页
	 * @param changeMenu：切换菜单参数
	 * @return
	 */
	@RequestMapping(value="/main/index")
	public ModelAndView login_index(HttpServletRequest req){
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		HttpSession session = req.getSession();
		try{
			GuanUser user = (GuanUser)session.getAttribute("guanuser");						//读取session中的用户信息(单独用户信息)
			if (user != null) {
				List<Menu> allmenuList = new ArrayList<Menu>();
				allmenuList =menuService.listAllMenuQx("0");		//菜单缓存
				session.setAttribute("menuList", allmenuList);
				session.setAttribute("changeMenu", "1");
				mv.setViewName("redirect:/main.jsp");
				mv.addObject("user", user);
				mv.addObject("menuList", allmenuList);
			}else {
				mv.setViewName("redirect:/login.jsp");//session失效后跳转登录页面
			}
		} catch(Exception e){
			mv.setViewName("redirect:/login.jsp");
			logger.error(e.getMessage(), e);
		}
		pd.put("SYSNAME", "甜鱼后台管理系统"); //读取系统名称
		mv.addObject("pd",pd);
		return mv;
	}
	
	/**菜单缓存
	 * @param session
	 * @param USERNAME
	 * @param roleRights
	 * @return
	 * @throws Exception
	 */
	/*@SuppressWarnings("unchecked")
	public List<Menu> getAttributeMenu(HttpSession session, String USERNAME) throws Exception{
		List<Menu> allmenuList = new ArrayList<Menu>();
		if(null == session.getAttribute("allmenuList")){	
			allmenuList = menuService.listAllMenuQx("0");							//获取所有菜单
			// allmenuList = this.readMenu(allmenuList);				//根据角色权限获取本权限的菜单列表
			session.setAttribute("menuList", allmenuList);//菜单权限放入session中
		}else{
			allmenuList = (List<Menu>)session.getAttribute("menuList");
		}
		return allmenuList;
	}
	*/
	/**根据角色权限获取本权限的菜单列表(递归处理)
	 * @param menuList：传入的总菜单
	 * @param roleRights：加密的权限字符串
	 * @return
	 */
	/*public List<Menu> readMenu(List<Menu> menuList){
		for(int i=0;i<menuList.size();i++){
			// menuList.get(i).setHasMenu(RightsHelper.testRights(roleRights, menuList.get(i).getMENU_ID()));
			menuList.get(i).setHasMenu(true);
			if(menuList.get(i).isHasMenu()){		//判断是否有此菜单权限
				this.readMenu(menuList.get(i).getSubMenu());//是：继续排查其子菜单
			}
		}
		return menuList;
	}
	*/

	
}
