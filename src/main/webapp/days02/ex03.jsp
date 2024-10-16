<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %> <!-- 페이지 지시자(지시자는 @가 있다.) -->
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
     ex03.jsp
     
     1. 서블릿(servelt)
      - 자바 웹 기술
      - 로직 처리
      - MV[C] 패턴 개발 ()
      		C : 서블릿
      
    2. 서블릿 구현 방법(과정)
      (1) [서블릿 규약]을 따르는 자바 클래스 선언
            ㄱ. 접근지정자 public
            ㄴ. javax.servlet.http.HttpServlet 클래스 상속
            ㄷ. serivce(), get(), post() 메서드를 오버라이딩.
      
      (2) 컴파일 -> ???.class (클래스파일)
      (3) /WEB-INF/classes 폴더 안에 반드시 클래스 파일 넣어둔다.
      
      (4) 요청 URL 정하고          URL 매핑
            ㄱ. web.xml 서블릿 등록/URL 매핑
            ㄴ. 서블릿 3.0 ~  @WebServlet 어노테이션으로 처리.
            
      (5) 브라우저 ->   요청 URL  ->    서블릿  -> 응답.1. 서블릿(servelt)
      - 자바 웹 기술
      - 로직 처리
      - MVC 패턴 개발 ()
      
    2. 서블릿 구현 방법(과정)
      (1) [서블릿 규약]을 따르는 자바 클래스 선언
            ㄱ. 접근지정자 public
            ㄴ. javax.servlet.http.HttpServlet 클래스 상속
            ㄷ. serivce(), get(), post() 메서드를 오버라이딩.
      
      (2) 컴파일 -> ???.class (클래스파일)
      (3) /WEB-INF/classes 폴더 안에 반드시 클래스 파일 넣어둔다.
      
      (4) 요청 URL 정하고          URL 매핑
            ㄱ. web.xml 서블릿 등록/URL 매핑
            ㄴ. 서블릿 3.0 ~  @WebServlet 어노테이션으로 처리.
            
      (5) 브라우저 ->   요청 URL  ->    서블릿  -> 응답.
  </xmp>
  <a href="/jspPro/hello?name=이시훈">/hello</a>
  <a href="/jspPro/hello1?name=김준석">/hello1</a>
  <hr />
  <a href="sample.htm">sample.htm</a><br />
  <a href="/jspPro/days02/ex01.htm">/jspPro/days02/ex01.htm</a><br />
  <a href="/jspPro/ex01.htm">/jspPro/ex01.htm</a><br />
  
  <!-- / 경로의 위치가 다르기 때문에 jspPro 부터 시작한다. -->
  <a href="/jspPro/days02/now.do">/days02/now.do</a><br />
  
  <a href="/jspPro/test/days02/ex100.html">/jspPro/test/days02.html</a><br />
  <a href="/test/days02.jsp">/test/days02.jsp</a><br /> <!-- 일치 x  -->
  <a href="/test/ex100.asp">/test/ex100.asp</a><br /> <!-- 일치 x  -->
  <a href="/jspPro/test/ex100.asp">/test/ex100.asp</a><br />
  
  <!-- [차이점] 과제 / ch17, 514p
  <url-pattern>/</url-pattern>
  <url-pattern>/*</url-pattern>
   -->
</div>
</body>
</html>