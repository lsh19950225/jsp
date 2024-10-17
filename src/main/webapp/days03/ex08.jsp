<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String error = request.getParameter("error");
	// ex08.jsp		null : 로그인 할려고 온거다.
	//					"" : 로그인 실패 후 리다이렉트로 왔다.
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
     ex08.jsp : 로그인 페이지
     아이디
     비밀번호
     [로그인] 클릭하면
     
     ex08_ok.jsp 이동한다. : 로그인과 관련된 인증 처리
     	ㄴ 로그인 성공 -> ex08_main.jsp 메인 페이지로 이동한다.
     	ㄴ 로그인 실패 -> 다시 ex08.jsp 로그인 페이지로 이동한다.
     	
     ex08_ok.jsp								null
     ex08_ok.jsp?name=					""
     ex08_ok.jsp?name=admin			"admin"
  </xmp>
  
  <form action="ex08_ok.jsp" method="get">
  	아이디 : <input type="text" name="id" value="admin"><br>
  	비밀번호 : <input type="password" name="passwd" value="1234"><br>
  	<input type="submit">
  	<input type="reset">
  </form>
  
  <%
  	if(error != null && error.equals("")){ // 실패하고 온거다.
  %>
  <script>
  	alert("로그인 실패 후 다시 ex08.jsp 리다이렉트됨");
  </script>
  <%	
  	} // if
  %>

</div>
</body>
</html>