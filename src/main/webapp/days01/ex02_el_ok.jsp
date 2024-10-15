<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// ex02_ok.jsp?title=채식주의자&author=한강&age=20 이 들어온다.
	
	// EL : param : 파라미터 값을 얻어올 때 사용한다.
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
     EL : 표현 언어 11가지가 있다.
  </xmp>
  
  jsp EL 형식<br />
  책 제목 : ${ param.title }<br />
  저자 : ${ param.author }<br />
  나이 : ${ param.age }<br />
  
  <br>
  <!-- 서버로 간게 아니라 데이터가 그대로 남아있다. -->
  <a href="javascript:history.go(-1);">뒤로가기</a><br>
  <!-- 서버로가서 다시 요청한 것 -->
  <a href="ex02.jsp">뒤로가기</a><br>
  
</div>
</body>
</html>