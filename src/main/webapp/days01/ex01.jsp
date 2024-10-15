<%@page import="javax.swing.text.AttributeSet.ParagraphAttribute"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	// 스크립트릿(Scriptlet)
	// 모든 자바 코딩 할 수 있다.(변수, 제어문, 등등)
	Date now = new Date();
	// 2024-10-15 11:10:45
	String pattern = "yyyy-MM-dd hh:mm:ss";
	// 날짜 가져올려면 SimpleDateFormat
	SimpleDateFormat sdf = new SimpleDateFormat(pattern);
	String strNow = sdf.format(now);
	// System.out.printf("> strNow : %s\n", strNow);
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
     = x : 스크립트릿 / = o : 표현식
     
     * jsp 내장된 객체
     request
     response
     out
     session
     application
     pageContext
     page
     config
     exception
  </xmp>
  
  <!-- = : 표현식 / % : 서버에서 실행된다. -->
  <h3>ex01.jsp(동적 페이지) - <%= strNow %></h3>
  
  <!-- jsp 내장된 객체에서 출력을 담당하는 out 을 사용해서 출력한 것 -->
  <h3>ex01.jsp(동적 페이지) - <% out.print(strNow); %></h3>
  
  <!-- 클라이언트에서 실행된 것 -->
  <h3>ex01.jsp(동적 페이지) - <span id="now"></span></h3>
  
  <script>
  	let now = '<%= strNow %>'; // js '', "" : 확인해야된다.
  	$("#now").html(now);
  </script>
  
</div>
</body>
</html>