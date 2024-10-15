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
     submit 제출하면 다시 입력받은 페이지가 된다.
     
     페이지에서 ?파라미터 : name 속성이 중요하다. / 없으면 안나온다.
     
     문제 책 제목 저자는 필수 입력 사항
  </xmp>
  
  <!-- 여기서 받겠다. -->
  <form action="ex02_el_ok.jsp">
  책 제목 : <input type="text" id="title" name="title"
  autofocus="autofocus"><br>
  저자 : <input type="text" id="author" name="author"><br>
  나이 : <input type="text" id="age" name="age"><br>
  <button type="button">submit</button> <!-- button 방법 -->
  <!-- <input type="submit"> submit 방법 -->
  <input type="reset">
  </form>
  
  <script>
  	/*
  	$("form").on("submit",function(event){ // submit 방법
  		let title = $("#title").val();
  		let author = $("#author").val();
  		// alert("x");
  		if( title.trim().length == 0 ){
  			alert("책 제목 필수 입력 사항!!")
	  		event.preventDefault(); // 서브밋 기능 제거
	  		$("#title").focus();
	  		return;
  		} // if
  		
  		if( author.trim().length == 0 ){
  			alert("저자 필수 입력 사항!!")
	  		event.preventDefault(); // 서브밋 기능 제거
	  		$("#author").focus();
	  		return;
  		} // if
  	});
  	*/
  </script>
  
  <script>
  	$("button").on("click",function(event){ // button 방법
  		let title = $("#title").val();
  		let author = $("#author").val();
  		// alert("x");
  		if( title.trim().length == 0 ){
  			alert("책 제목 필수 입력 사항!!")
	  		$("#title").focus();
	  		return;
  		} // if
  		
  		if( author.trim().length == 0 ){
  			alert("저자 필수 입력 사항!!")
	  		$("#author").focus();
	  		return;
  		} // if
  		
  		$("form").submit(); // *** 서브밋한다.
  	});
  </script>
  
</div>
</body>
</html>