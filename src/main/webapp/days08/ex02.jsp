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
     ex02.jsp
     p291 JSTL(표준 태그 라이브러리)
     
      [JSTL (JSP Standard Tag Library)]               
      - JSP 표준 태그 라이브러리
      - 많은 개발자가 필요에 의해서 직접 태그를 
      정의해서 사용( 커스텀 태그 )
      - 표준화 태그
      - JSTL 5가지의 종류
        라이브러리        접두사
       1)  코어            c             변수,제어문,url 처리  
       2)  국제화          fmt           숫자, 날짜 형식, 지역, 메시지 출력       
       3)  XML             x             XML 처리  X
       4)  데이터베이스    sql           
           ex02_02.jsp
           
       5)  함수            fn            문자열 처리, 컬렉션 처리 함수
  </xmp>
</div>
</body>
</html>