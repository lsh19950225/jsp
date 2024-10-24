<%@page import="java.time.LocalDate"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
     ex02_08.jsp
     fmt:parseDate
     fmt:formatDate
  </xmp>
  
  <%
  	String strNow = "2024년 10월 24일";
  	// String -> Date 변환
  	
  	// 1.
  	// Date now = new Date(2024-1900,10-1,24);
  	
  	// 2.
  	/* 
  	String pattern = "yyyy년 MM월 dd일";
  	SimpleDateFormat sdf = new SimpleDateFormat(pattern);
  	Date now = sdf.parse(strNow);
  	*/
  	
  	// 3. 기억 아예 안남..
  	/*
  	String pattern = "yyyy년 MM월 dd일";
  	DateTimeFormatter dtf = DateTimeFormatter.ofPattern(pattern);
  	LocalDate now = LocalDate.parse(strNow,dtf);
  	*/
  %>
  
  <fmt:parseDate value="<%= strNow %>" var="now"
  		pattern="yyyy년 MM월 dd일" />
  		
  now = ${ now }<br>
  <hr />
  <li> <fmt:formatDate value="${ now }" /> </li> <!-- 기본 date -->
  <li> <fmt:formatDate value="${ now }" type="date" /> </li>
  <li> <fmt:formatDate value="${ now }" type="time" /> </li> <!-- 시간만 -->
  <li> <fmt:formatDate value="${ now }" type="both" /> </li> <!-- 둘다 -->
  
  <hr />
  <!-- 패턴으로 만들 수 있다. -->
  <li> <fmt:formatDate value="${ now }" pattern="yyyy년 MM. dd a h:mm" /> </li>
  
</div>
</body>
</html>