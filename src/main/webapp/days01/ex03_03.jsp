<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
     끊을 수 있다. 시험***
  </xmp>
  
  <p id="demo">
  <%
  	int sum = 0;
  	for(int i = 1; i <= 10; i++){
  		sum += i;
  %><%= i %>+<% 
		  } // for
  %>=<%= sum %>
  </p>
  
  <script>
  	/*
  	const arr = [];
  	for (var i = 1; i <= 10; i++) {
		arr.push(i);
	} // for
	let result = arr.reduce((total, value)=> total+value);
	$("#demo").html(`\${ result }`); // \ 중요
	*/
  </script>
  
</div>
</body>
</html>