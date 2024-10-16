<%@page import="java.util.Iterator"%>
<%@page import="com.util.DBConn"%>
<%@page import="java.util.ArrayList"%>
<%@page import="org.doit.domain.DeptVO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	String sql = " SELECT * "
					+ " FROM dept ";
	ResultSet rs = null;
	
	int deptno;
	String dname, loc;
	DeptVO vo = null;
	ArrayList<DeptVO> list = null;
	Iterator<DeptVO> ir = null;
	
	try{
		conn = DBConn.getConnection();
		// System.out.println("> Conn = " + conn);
		// System.out.println("> isClosed = " + conn.isClosed());
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		if(rs.next()){
			list = new ArrayList<>();
			do{
				
				deptno = rs.getInt("deptno");
				dname = rs.getString("dname");
				loc = rs.getString("loc");
				
				vo = new DeptVO().builder()
					.deptno(deptno).dname(dname).loc(loc).build();
				
				list.add(vo);
				
			}while(rs.next());
		} // if
			}catch(Exception e){
		
	}finally{
		try{
			pstmt.close();
			DBConn.close();
		}catch(Exception e){
			e.printStackTrace();
		}

	} // try
	
%>
<!DOCTYPE html>
<html>


<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" type="image/x-icon" href="http://localhost/jspPro/images/SiSt.ico">
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script> -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="http://localhost/jspPro/resources/cdn-main/example.css">
<script src="http://localhost/jspPro/resources/cdn-main/example.js"></script>
<style>
 span.material-symbols-outlined{
    vertical-align: text-bottom;
 }
</style>

<link rel="stylesheet" href="https://code.jquery.com/ui/1.14.0/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
<script src="https://code.jquery.com/ui/1.14.0/jquery-ui.js"></script>

<script>
  $( function() {
    $( "#dept :checkbox" ).checkboxradio();
  } );
</script>

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
     ex01_02.jsp
  </xmp>
  
  <h2>Checkbox</h2>
  <!-- <form action="ex01_emp_02.jsp" method="get"> --> <!-- 안주면 get 방식 -->
  <fieldset id="dept">
    <legend>dept check: </legend>
    
    <!-- <label for="deptno-부서번호">부서명</label>
    <input type="checkbox" name="deptno" id="deptno-부서번호" value="부서번호"> 한 조다
    
    <label for="checkbox-2">3 Star</label>
    <input type="checkbox" name="checkbox-2" id="checkbox-2">
    <label for="checkbox-3">4 Star</label>
    <input type="checkbox" name="checkbox-3" id="checkbox-3">
    <label for="checkbox-4">5 Star</label>
    <input type="checkbox" name="checkbox-4" id="checkbox-4"> -->
    <%
  		ir = list.iterator();
  		while( ir.hasNext() ){
  			vo = ir.next();
  			deptno = vo.getDeptno();
  			dname = vo.getDname();
  	%>
  		<label for="deptno-<%= deptno %>"><%= dname %></label>
    	<input type="checkbox" name="deptno" id="deptno-<%= deptno %>" value="<%= deptno %>">
  	<%
  		} // while
  	%>
  </fieldset>
  
  <input type="button" value="사원 확인">
  <!-- <input type="submit" valie="사원 확인"> -->
  <!-- </form> -->
  
  <script>
  	// ex01_emp_02.jsp?deptno=10&deptno=20&deptno=30
  	$(":button").on("click", function(event){
  		
  		if( $(":checkbox[name=deptno]:checked").length == 0 ){
  			alert("하나는 체크하세요.");
  			return;
  		} // if
  		
  		/* 1.
  		let hrefValue = "ex01_emp_02.jsp?"; // deptno=10&deptno=20&deptno=30& 마지막& 놔둬도된다.
  		$(":checkbox[name=deptno]:checked").each(function(index,element){
  			let deptno = element.value;
  			hrefValue += `deptno=\${deptno}&`;
  		});
  		
  		location.href = hrefValue;
  		*/
  		
  		// 2.
  		const deptnoArr= [];
  		$(":checkbox[name=deptno]:checked").each(function(index,element){
  			let deptno = element.value;
  			deptnoArr.push( `deptno=\${deptno}` );
  		});
  		location.href = `ex01_emp_02.jsp?\${deptnoArr.join('&')}`;
  	});
  </script>
  
</div>
</body>
</html>