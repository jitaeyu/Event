<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="p"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>

<style type="text/css">
.divider:after,
.divider:before {
content: "";
flex: 1;
height: 1px;
background: #eee;
}
.h-custom {
height: calc(100% - 73px);
}
@media (max-width: 450px) {
.h-custom {
height: 100%;
}
}
</style>


  <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=714, initial-scale=1">


    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.css">
</head>

<body>
<!-- As a heading -->
<nav class="navbar navbar-dark bg-primary">
	<div>&emsp;</div>
	
	<div style="color: white" class="navbar-text">
   		 <p:forEach items="${id}" var="my" begin="0" end="0">
			 <div class="h5">${my} 님 환영합니다 </div>
		</p:forEach> 
	</div>
</nav>


나는아웃
<section style="bottom: 0; position: absolute; width: 100%">
  <div class="d-flex flex-column flex-md-row text-center text-md-start  py-4 px-4 px-xl-5 bg-primary">
    <!-- Copyright -->
    <div class="text-white mb-3 mb-md-0 ">
      Copyright © 2022. by Jitea Yu
    </div>
    <!-- Copyright -->

    
  </div>
</section>
  <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="js/bootstrap.js"></script>
</body>
</html>