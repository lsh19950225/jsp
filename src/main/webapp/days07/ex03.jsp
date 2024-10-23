<%@page import="com.util.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>

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
     ex03.jsp
     커넥션 풀(Connection pool) / p417
     
     *** c : 톰캣 폴더로 가서 - 검색 : tomcat-dbcp.jar 파일 위치 열기 - lib에 넣기
     
     톰캣 홈페이지 9버전 클릭 - 10)JDBC DataSources 클릭 - oricle 8i... 클릭 -
     그리고
     servers - tomcat - context 복사 후 - meta-inf 에 복붙 후 밑에 복사
     <!-- 
     <?xml version="1.0" encoding="UTF-8"?>
		<Context>
		<Resource name="jdbc/myoracle"
					    auth="Container"
		                type="javax.sql.DataSource"
		                driverClassName="oracle.jdbc.OracleDriver"
		                url="jdbc:oracle:thin:@127.0.0.1:1521:xe"
		                username="scott"
		                password="tiger"
		                maxTotal="20"
		                maxIdle="10"
		                maxWaitMillis="-1"/>
		</Context>
 -->
	그리고 lib 밑에 web.xml 에 밑에 복사
	<!-- 
	<resource-ref>
	 <description>Oracle Datasource example</description>
	 <res-ref-name>jdbc/myoracle</res-ref-name>
	 <res-type>javax.sql.DataSource</res-type>
	 <res-auth>Container</res-auth>
	</resource-ref>
	 -->
	 
	 com.util.ConnectionProvider.java
  </xmp>
  
  <%
	  Context initContext = new InitialContext();
	  Context envContext  = (Context)initContext.lookup("java:/comp/env");
	  DataSource ds = (DataSource)envContext.lookup("jdbc/myoracle");
	  Connection conn = ds.getConnection();
  	  //etc.
  %>
  <!-- conn = 142405959, URL=jdbc:oracle:thin:@127.0.0.1:1521:xe, Oracle JDBC driver -->
  conn = <%= conn %>
  <%
  	conn.close(); // *** 닫는게 아니고 / 커넥션 풀에 반환(돌려)준다는 의미다.
  %>
  
  <%
  	Connection conn2 = ConnectionProvider.getConnection();
  %>
  conn2 = <%= conn2 %>
  <%
  	conn2.close();
  %>
</div>
</body>
</html>