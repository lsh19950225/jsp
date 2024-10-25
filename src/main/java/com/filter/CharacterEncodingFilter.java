package com.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

// filter : servlet
public class CharacterEncodingFilter implements Filter{
	
	private String encoding;
	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {

		System.out.println("> CharacterEncodingFilter.init()");
		// web.xml init-param UTF-8
		this.encoding = filterConfig.getInitParameter("encoding");
		if(this.encoding == null) this.encoding = "UTF-8";
		
	} // init

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		
		System.out.println("> CharacterEncodingFilter.doFilter()");
		request.setCharacterEncoding(encoding);
		
		// 다음 필터한테 넘긴다. / 최종일수도 있다.
		// 필터는 등록하는 순서대로 필터가 된다. *** 순서대로
		chain.doFilter(request, response);
		
	} // doFilter

	@Override
	public void destroy() {

		System.out.println("> CharacterEncodingFilter.destroy()");
		
	} // destroy

	
	
	
} // class
