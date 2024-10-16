<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
     상대경로 잘안쓴다.
     절대경로 도메인 뒤에부터 절대경로를 잡는다.
     예) /jspPro/days02/ex01_emp_02.jsp?deptno=10&deptno=20&deptno=30
     	 webapp
     	 /jspPro : context path - 하나의 서버에 여러개의 웹 어플리케이션이 돌아가는데 그걸 구분하기 위한 path
  </xmp>
  
  <%
  	/* context path 가져오는 것 */
  	String contextPath = request.getContextPath();
  %>
  
  <!-- /jspPro -->
  context path = <%= contextPath %>
  <br />
  <!-- 이런식으로 주자 -->
  <img src="<%= contextPath %>"/images/... alt="" />
  
</div>
</body>
</html>