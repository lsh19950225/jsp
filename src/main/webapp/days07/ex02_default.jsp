<%@page import="com.util.Cookies"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%
	// 인증 + 권한 있는지 체크한다.
	// [쿠키 사용 인증 처리] auth 쿠키 이름 = 로그인 ID 값 저장 (약속)
	String cname = "auth";
	String logonId = null;
	
	Cookies cookies = new Cookies(request);
	logonId = cookies.getValue(cname);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" type="image/x-icon" href="http://localhost/jspPro/images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="http://localhost/jspPro/resources/cdn-main/example.css">
<script src="http://localhost/jspPro/resources/cdn-main/example.js"></script>
<style>
 span.material-symbols-outlined{
    vertical-align: text-bottom;
 }
</style>
</head>
<body>
<header>
  <h1 class="main"><a href="#" style="position: absolute;top:30px;">lsh</a></h1>
  <ul>
    <li><a href="#">로그인</a></li>
    <li><a href="#">회원가입</a></li>
  </ul>
</header>
<div>
  <xmp class="code">
     ex02_default.jsp
  </xmp>

  <%
     if( logonId == null ){
  %>
  <div id="logon">
    <form action="ex02_logon.jsp">
       아이디 : <input type="text" name="id" value="admin" /><br>
       비밀번호 : <input type="password" name="passwd" value="1234" /><br>
       <input type="submit" value="로그인" />
       <input type="button" value="회원가입" />
       <span style="color:red;display: none">로그인 실패했습니다.</span> 
   </form>
  </div>
  <%
     }else{
  %>
  <div id="logout">
    [ <%= logonId %> ]님 환영합니다<br>
    <a href="ex02_logout.jsp">로그아웃</a>
  </div> 
  <%      
     }
  %>
     
  <br>
  <!-- 로그인 X -->
  <a href="/jspPro/cstvsboard/list.htm">게시판</a><br>
  
  <%
     if( logonId != null ){
  %>
  <!-- 로그인 O -->
  <a href="#">자료실</a><br>
  <a href="#">일정관리</a><br>   
  <%
        if( logonId.equals("admin")){
  %>
  <!-- 로그인 O + admin 관리자로 로그인 -->
  <a href="#">급여관리</a><br>
  <a href="#">인사관리</a><br> 
  <%         
        } // if
     } // if
  %>
  
  <script>
  	// 로그인 실패 후 ex02_default.jsp?logon=fail
  if( ${ param.logon eq "fail"} ){
     $("#logon span")
        .fadeIn()
        .fadeOut(3000);
  } // if
  </script>
</div>
</body>
</html>