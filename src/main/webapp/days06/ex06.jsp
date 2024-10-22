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
     ex06.jsp
     p190 [자바 빈즈(java bean)과 jsp:useBean 액션태그]
     1. 자바 빈 == 자바 빈즈
     	ㄴ JSP 웹 어플리케이션에서 정보(하나의 게시글, 회원 등등)를 표현하는 객체
     	스프링에서는 "스프링 빈" 이라고 한다.
     					ㄴ DTO, VO
     서블릿 규약 : 퍼블릭 / httpselvlet / 오버라이딩
     2. 자바 빈 규약
     	1) private 필드 선언
     	2) getter, setter 선언
     	3) 직렬화가 가능한 클래스 선언
     3. 자바 빈은 속성, 변경 이벤트, 객체 직렬화하기 위한 표준이다.
     
     예) ex06_02.jsp
     	MemberInfo.java 자바 빈
  </xmp>
</div>
</body>
</html>