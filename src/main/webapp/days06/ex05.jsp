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
     p114 [jsp 기본 내장 객체 9가지]
     1. request : HttpServletRequest : 암기
     2. response : HttpServletResponse
     3. out		: JspWriter
     4. exception : Throwable
     5. session : HttpSession
     6. application : ServletContext : 암기
     		웹 어플리케이션에 대한 정보를 저장하는 객체
     	ex05_02.jsp
     	ex05_03.jsp
     7. pageContext : PageContext == 4가지의 page영역
     	jsp 페이지에 대한 정보를 저장하는 객체
     	ex05_04.jsp
     	
     8. page		: Object
     	jsp 페이지 -> 구현한 자바 클래스 인스턴스
     	
     9. config 	: servletConfig : 설정 정보를 저장하는 객체
  </xmp>
</div>
</body>
</html>