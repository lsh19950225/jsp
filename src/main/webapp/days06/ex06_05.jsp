<%@page import="java.util.Date"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
     ex06_05.jsp
  </xmp>
  
 <jsp:useBean id="mi" class="days06.MemberInfo"></jsp:useBean>
 <jsp:setProperty property="*" name="mi"/> <!-- * 모든 -->
 <jsp:setProperty property="registerDate" name="mi" value="<%= new Date() %>" />
 
 아이디 : <jsp:getProperty property="id" name="mi"/><br>
 이름 : <jsp:getProperty property="name" name="mi"/><br>
 비밀번호 : <jsp:getProperty property="passwd" name="mi"/><br>
 이메일 : <jsp:getProperty property="email" name="mi"/><br>
 등록일 : <jsp:getProperty property="registerDate" name="mi"/><br>
  
</div>
</body>
</html>