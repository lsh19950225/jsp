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
     쿠키 204p
     1. 서버 x / 브라우저(클라이언트)에 파일 형태로 저장된다.
     2. 웹 브라우저가 알아서 : 웹 서버에 요청을 보낼 때 쿠키를 함께 전송한다.
     3. 쿠키는 서버와 브라우저 양쪽에서 생성 가능하다.
     
     * 만료시점을 설정하지 않으면 브라우저가 종료될 때 쿠키가 함께 삭제된다.
     만료시점  설정할 때	    -1  브라우저가 닫을 때 자동 쿠키 제거
                      			0  바로 쿠키 제거
			                    별도로 만료시점을 지정하지 않으면
			                    브라우저가 닫힐 때 쿠키 제거.
			                    
	jsp : 쿠키 클래스 사용한다.
	
	ex01_02.jsp
	ex01_02_ok.jsp
  </xmp>
</div>
</body>
</html>