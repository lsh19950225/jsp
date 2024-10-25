package com.filter;

import java.io.IOException;
import javax.servlet.DispatcherType;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/*@WebFilter(
		dispatcherTypes = {DispatcherType.REQUEST }
					, 
		urlPatterns = { 
				"/days09/admin/*", 
				"/days09/board/write.jsp"
		})*/
public class LoginCheckFilter implements Filter {

	public LoginCheckFilter() {
		
	}
	
	public void init(FilterConfig fConfig) throws ServletException {
		System.out.println("> LoginCheckFilter.init()");
	} // init
	
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
    	System.out.println("> LoginCheckFilter.doFilter()");
    	// 인증 == 세션에 저장함
    	HttpServletRequest jrequest = (HttpServletRequest)request; // 다운캐스팅 해야된다.
    	HttpServletResponse jresponse = (HttpServletResponse)response; // 다운캐스팅 해야된다.
    	
    	String logonId = null; // 세션에 저장된 이름
    	boolean isLogon = false;
    	
    	HttpSession session = jrequest.getSession(false);
    	if (session != null) {
    		logonId = (String)session.getAttribute("auth");
    		if(logonId != null) isLogon = true;
    	} // if
    	
    	if (isLogon) {
    		// /admin/*		logonId = "admin" o
    		// /admin/*		logonId = "hong" x
    		chain.doFilter(request, response);
		} else {
			// 원래 요청url 확인
			// 과제 : 
			String referer = jrequest.getRequestURI();
			// System.out.println("referer : " + referer);
			session.setAttribute("referer", referer);
			
			// 로그인 페이지 이동 : 리다이렉트
			String location = "/jspPro/days09/member/logon.jsp";
			jresponse.sendRedirect(location);
		} // if
    	
    	
    } // doFilter

	public void destroy() {
		System.out.println("> LoginCheckFilter.destroy()");
	} // destroy

} // class
