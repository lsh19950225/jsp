<%@page import="com.util.Cookies"%>
<%@page import="java.util.Enumeration"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ include file="/WEB-INF/inc/session_auth.jspf" %>
<%-- 
<%
	// 인증 + 권한 x
	// [세션 사용 인증 처리] auth 세션 이름 = 로그인 ID 만 값 저장 (약속)
	String sname = "auth";
	String logonId = null;
	logonId = (String)session.getAttribute(sname);
%>
 --%>

<%
	// 1. 세션 자동 종료 : 시간 설정
	
	// 2. 세션 강제 종료 : invalidate() - 서버에서 세션을 강제로 종료하는 메서드 : 강제 삭제
	session.invalidate();

	// 과제 : 세션 처리해서 글쓰기는 로그인 해야지만 쓸 수 있다.
	// 수정, 삭제도?
%>

<script>
	alert("<%= logonId %>님 로그아웃 완료!!");
	location.href = "ex05_default.jsp";
</script>