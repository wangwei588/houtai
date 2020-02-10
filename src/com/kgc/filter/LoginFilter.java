package com.kgc.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kgc.entity.GuanUser;


public class LoginFilter implements Filter  {

	@Override
	public void destroy() {
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		//过滤
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse resp = (HttpServletResponse)response;
		
		HttpSession session= req.getSession();
		//从session中取用户信息，如果有，则表示已经登录，则放行
				//如果没有，则没有登录，则跳转到登录页面
				GuanUser user = (GuanUser)session.getAttribute("guanuser");
				if(user != null){
					chain.doFilter(request, response);
				}else{
					resp.sendRedirect(req.getContextPath()+"/login.jsp");
				}
		
		
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		
	}

}
