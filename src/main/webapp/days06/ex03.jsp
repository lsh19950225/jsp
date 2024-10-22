<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- <%-- <% %> --%> 부분 공백을 제거 해준다. -->
<%@ page trimDirectiveWhitespaces="true" %>
<!-- 기본값 true : 출력 버퍼가 다 차면 자동으로 응답을 보내겠다. (true 경우) -->
<%@ page autoFlush="true" %>
<!-- 출력 버퍼 / 기본 : 8kb -->
<%@ page buffer="8kb" %>
<!-- EL 무시할까요? -->
<%@ page isELIgnored="false" %>
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
     p152 버퍼와 에러 페이지의 관계
  </xmp>
  
  <%
  	for(int i=1; i<=10000; i++){
  		out.print("["+i+"]");
  		if(i==2) out.clearBuffer(); // 비우겠다.
  		/*
  		if(i%1000 == 0){ // % : 나머지 구할 때
  			out.flush(); // 설정한 1kb 가 안되더라도 응답하겠다.
  		} // if
  		if(i == 1500){
  			out.print(1/0); // 이 코딩은 오류가 뜬다.
  		} // if
  		*/
  	} // for
  %>
  
</div>
</body>
</html>