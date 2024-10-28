<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" type="image/x-icon"
   href="http://localhost/jspPro/images/SiSt.ico">
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
   href="http://localhost/jspPro/resources/cdn-main/example.css">
<script src="http://localhost/jspPro/resources/cdn-main/example.js"></script>
<style>
span.material-symbols-outlined {
   vertical-align: text-bottom;
}
</style>
</head>
<body>
   <header>
      <h1 class="main">
         <a href="#" style="position: absolute; top: 30px;">Seeker Home</a>
      </h1>
      <ul>
         <li><a href="#">로그인</a></li>
         <li><a href="#">회원가입</a></li>
      </ul>
   </header>
   <div>
      <xmp class="code"> ex07_map.jsp 1. 지도 출력할 container div 태그 선언 </xmp>
      <!-- lat=37.499294&lng=127.0331883 -->
      <a href="ex07_02.jsp?lat=37.499294&lng=127.0331883">쌍용교육센터입니당</a>
      <br>
      <br>
      <div id="googleMap" style="width: 100%; height: 400px"></div>
      <script>
         function myMap() {
            
            var mapOptions ={
               center: new google.maps.LatLng(51.508742, -0.120850), zoom:5//영국 런던의 위도, 경도값   
            };
            
            var map = new google.maps.Map(
               document.getElementById("googleMap"), mapOptions
               );
                  
         }
      </script>
      <script
         src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCygZLFcQgVppMv9sxAQ4UStANJhRQUITg&callback=myMap"></script>
   </div>
</body>
</html>