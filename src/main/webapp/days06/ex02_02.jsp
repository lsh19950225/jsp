<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 대소문자 구분한다. 에러 페이지로 연결 -->
<%-- <%@ page errorPage="/WEB-INF/error/viewErrorMessage.jsp" %> --%>
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
     2. 예외가 발생하면 -> 예외 페이지를 따로 설정해서 -> 그 페이지를 응답한다.
     	WEB-INF 폴더 : 외부에서 접근하지 못하게 한다.
     		ㄴ error 폴더 생성
     			ㄴ viewErrorMessage.jsp / 내부적으로 포워딩 된다.
     			
     3. 응답 상태 코드별로 예외 페이지를 설정해서 -> 응답한다.
     [응답 상태 코드] 149p
          404 : 요청URL을 처리하기 위한 자원이 존재하지 않음
          500 : 서버 내부 에러가 발생( 자바 코딩 X )
          200 : 요청을 정상적으로 처리
          401 : 접근을 허용하지 않음 ***
          400 : 클라이언트의 요청이 잘못된 구문으로 구성.
          403 : PUT 요청 X 
          405 : ***
          등등    
          
     4. 예외가 발생하는 타입별로 예외 페이지를 설정해서 -> 응답한다.
     	[예외 타입]
     		NullPointException
     		SQLException
     		등등
     		
     5. 우선 순위
	     1. page 지시자 : errorPage 속성 설정
	     2. web.xml <exception-type>
	     3. web.xml <error-code>
	     	다 아닐 경우에는
	     4. 톰캣(웹 컨테이너)에서 지정한 예외 페이지가 응답한다.
  </xmp>
  
  > name : <%= request.getParameter("name").toUpperCase() %>
  
</div>
</body>
</html>