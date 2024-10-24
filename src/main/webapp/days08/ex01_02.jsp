<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true" %>
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
     ex01_02.jsp
  </xmp>
  
  요청 URI : <%= request.getRequestURI() %><br>
  요청 URL : <%= request.getRequestURL() %><br>
  <hr />
  <!-- 
  	EL 에서 jsp 기본 9객체를 사용하고자 한다면 pageContext 기본객체를 사용해서 얻어오면 된다.
   -->
  <!-- EL 표현으로 바꾼다. 소문자로 -->
  요청 URI : ${ pageContext.request.requestURI }<br>
  <hr />
  <%
  	String name = "홍길동";
  	request.setAttribute("name", name); // 저장하면 밑처럼 사용 가능하다.
  %>
  이름 : <%= name %><br>
  이름 : <%= request.getAttribute("name") %><br>
  이름 : ${ requestScope.name }<br> <!-- 위와 동일한 코딩 / 이렇게도 가능하다. -->
  이름 : ${ name }<br> <!-- set 에 저장하면 가능하다. / 4가지 영역을 다 뒤진다. -->
  <hr />
  <!-- ?age=20 -->
  나이 : <%= request.getParameter("age") %><br>
  나이 : ${ param.age }<br>
  
</div>
</body>
</html>