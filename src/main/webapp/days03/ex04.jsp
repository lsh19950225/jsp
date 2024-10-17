<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
     [request 객체]
     1. 74p
     
     *** 중요
     6. 클라이언트IP = <%= request.getRemoteAddr() %>
     11. 요청정보 전송방식 = <%= request.getMethod() %>
     12. 요청 URI = <%= request.getRequestURI() %>
     12. 요청 URL = <%= request.getRequestURL() %>
     13. 컨텍스트 경로 = <%= request.getContextPath() %>
     
     
     7. 요청정보길이 = <%= request.getContentLength() %>
     8. 요청정보 인코딩 = <%= request.getCharacterEncoding() %>
     9. 요청정보 컨텐츠타입 = <%= request.getContentType() %>
     10. 요청정보 프로토콜 = <%= request.getProtocol() %>
     14. 서버이름 = <%= request.getServerName() %>
  </xmp>
</div>
</body>
</html>