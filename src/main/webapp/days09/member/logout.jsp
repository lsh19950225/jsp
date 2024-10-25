<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%
	// session.removeAttribute(); // 하나만 삭제
	session.invalidate(); // 세션 자체를 삭제
	
	// 메인페이지로 이동
	String location = "/jspPro/days09/ex01.jsp"; // 메인
	response.sendRedirect(location);
%>