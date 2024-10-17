<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	// SELECT ~ DB연동 처리 x
	String location; // 이동할 경로
	if( id.equals("admin") && passwd.equals("1234") ){
		// 관리자 로그인 성공
		location = "ex08_main.jsp";
	}else if( id.equals("hong") && passwd.equals("1234") ){
		// 일반 로그인 성공
		location = "ex08_main.jsp";
	}else{
		// 로그인 실패
		location = "ex08.jsp?error";
	}
	
	// location.href = "ex08.jsp"; x : js 코딩이라 안된다.
	
	// 1. 리다이렉트(redirect)
	// response.sendRedirect(location);
	
	// 2. 포워딩(forward)
	// Dispatcher : 발송담당자, 급파하는 사람
	RequestDispatcher dispatcher = request.getRequestDispatcher(location);
	dispatcher.forward(request, response);
%>