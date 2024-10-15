<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// ex03_05.jsp?num			""
	// ex03_05.jsp?num =		""
	
	// 처음 ex03_05.jsp 요청할때 ?num=5 가 안넘어가니까
	// request.getParameter("num") == null
	// Integer.parseInt(null) 500 서버 오류 발생
	
	// int num = Integer.parseInt(request.getParameter("num"));
	String pNum = request.getParameter("num");
	int num = 0;
	if(pNum != null && !pNum.equals("")){
		num = Integer.parseInt(pNum);
	} // if
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
     500번 오류 : 자바 코딩이 오류다.
     404번 오류 : 페이지 못 찾을때
     
     문제 : 벨류 속성값(5)을 유지하고 싶을때 : 상태관리
     안되는거 확인하기
  </xmp>
  
  <!-- 커서 깜빡 / 숫자 입력 / 숫자가 입력 안되면 오류 유효성 검사 / 3 엔터치면 1+2+3=6 이 나온다.
  1. jquery -->
  <!-- 1. <form action=""> -->
  정수 : <input type="text" id="num" name="num" autofocus="autofocus"><br />
  <p id="demo">
  <%
  	if(pNum != null && !pNum.equals("")){
  	int sum = 0;
  	for(int i = 1; i <= num; i++){
  		sum += i;
  %><%= i %>+<% 
		  } // for
  %>=<%= sum %>
  <%
  	} // if
  %>
  </p>
  <!-- </form> -->
  
  <script>
 	// 문제 실행하면 가운데 커서 / 숫자가 아니면 오류창
 	// 			엔터치면 입력받은 것까지 서버로 보내서 처리한다. 그리고 다시 선택된다.
 	$("#num") // 시험
  		.css("text-align", "center")
  		.on({
  			"keydown":function(e){
  				 if ( !(e.which >= 48 && e.which <= 57
  			              || e.which == 8
  			              || e.which == 13
  			              || e.which == 229
  			          ) ){
  					alert("숫자만 입력하세요.");
  					e.preventDefault();
  				} // if
  			},
  			"keyup":function(event){
  				// if( event.which == 13 && $("#num").val().length != 0 ){
  				if( event.which == 13 ){
  					// js BOM
  					// 다시 자기 자신 페이지 요청한다.
  					// 1. $("form").submit();
  					
  					// 2. 무조건 get 방식이다.
  					let numValue = $("#num").val();
  					location.href = `ex03_05.jsp?num=\${ numValue }`;
  				} // if
  			}
  		});
});
  </script>
  
</div>
</body>
</html>