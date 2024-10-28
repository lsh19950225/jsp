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
     
     [파일업로드]
      1. [업로드]    :   클 -> 서
         다운로드  :   서 -> 클
      2. 쇼핑사이트 : 상품 정보 등록
         자료실 : 첨부파일 등록
         회원가입 : 회원이미지 등록
         등등  
                 
      3. (꼭 기억) 실제 파일 업로드 할 때 
        1) 스트림 기반의 전송 방식인 form method="post" 설정.
        2) 인코딩 설정
           기본 :   enctype="application/x-www-form-urlencoded"  
                    enctype="multipart/form-data"   철자
  </xmp>
  
  <form action="ex02_ok_02.jsp"
  	method="post"
  	enctype="multipart/form-data">
  	이름 : <input type="text" name="name" value="홍길동"><br>
  	첨부파일 : <input type="file" name="upload"><br>
  	
  	<input type="submit">
  </form>
  
</div>
</body>
</html>