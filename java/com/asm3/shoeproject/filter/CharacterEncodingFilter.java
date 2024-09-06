package com.asm3.shoeproject.filter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.ServletException;
import javax.servlet.Filter;
import javax.servlet.FilterConfig;
import javax.servlet.FilterChain;

import java.io.IOException;

public class CharacterEncodingFilter implements Filter
{
	
	private FilterConfig fc;
	
	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) throws IOException, ServletException
	{
		
		HttpServletRequest request = (HttpServletRequest) req;
		HttpServletResponse response = (HttpServletResponse) res;
		
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF8");
		
		chain.doFilter(request, response);        //do it again, since JSPs will set it to the default
		
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF8");
	}
	
	public void init(FilterConfig filterConfig)
	{
		
		this.fc = filterConfig;
	}
	
	public void destroy()
	{
		
		this.fc = null;
	}
}

