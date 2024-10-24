<%@page import="java.util.Iterator"%>
<%@page import="java.util.Map.Entry"%>
<%@page import="java.util.Set"%>
<%@page import="com.util.Cookies"%>
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
     ex01_03_ok.jsp
  </xmp>
  
  <%
  	Cookies cookies = new Cookies(request);
  	Set<Entry<String, Cookie>> set = cookies.cookieMap.entrySet();
  	Iterator<Entry<String, Cookie>> ir = set.iterator();
  	
  	while(ir.hasNext()){
  		
  		Entry<String, Cookie> entry = ir.next();
  		String cname = entry.getKey();
  		Cookie c = entry.getValue();
  		String cvalue = c.getValue();
  %>
  	<li><%= cname %> : <%= cvalue %></li>
  <%	
  	} // while
  %>
  <hr />
  <!-- EL 사용해서 쿠키 모든값 출력 -->
  <c:forEach items="${ cookie }" var="entry">
  	<li>${entry.key} : ${ entry.value.value }</li>
  </c:forEach>
  <hr />
  EL user : ${ cookie.user.value }<br> <!-- 이렇게도 가능하다. -->
  EL age : ${ cookie.age.value }<br>
  EL addr : ${ cookie.addr.value }<br>
  
</div>
</body>
</html>