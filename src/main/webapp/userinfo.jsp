<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
  <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="p" %>
    <%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
      <!DOCTYPE html>
      <html>

      <head>
        <meta charset="utf-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=1250, initial-scale=1">
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

          table.type03 {
            border-collapse: collapse;
            text-align: left;
            line-height: 1.5;
            border-top: 1px solid #ccc;
            border-left: 3px solid #369;
            margin: 20px 10px;
          }

          table.type03 th {
            width: 147px;
            padding: 10px;
            font-weight: bold;
            vertical-align: top;
            color: #153d73;
            border-right: 1px solid #ccc;
            border-bottom: 1px solid #ccc;

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

        <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
          <div class="container-fluid">
			<div></div>
				<p:forEach items="${id}" var="id" begin="0" end="0">
                    <input name="id" type="hidden" value="${id}">
                  </p:forEach>
                  <p:forEach items="${pw}" var="pw" begin="0" end="0">
                  <input name="pw" type="hidden" value="${pw}">
                  </p:forEach>
            <button class="btn btn-secondary my-2 my-sm-0" onclick ="location.href='login.do?id=${id}&pw=${pw}'">뒤로가기</button>
          </div>
		 			
        </nav>

	<h3 style="margin-top: 20px" align="center">이벤트 히스토리</h3>
	  <div style="margin: 40px" class="row">
	  		<span class="col-sm-3"></span>
	          <span class="col-sm-3">
		        <span class="input-group">
				  <span class="input-group-text">이름</span>
				  <p:forEach items="${infolist}" var="ainfo" begin="0" end="0">
				  <input type="text" aria-label="Last name" class="form-control" readonly="readonly" value="${ainfo.name}">
				</p:forEach>
				</span>
	          </span>
	          
	           <span class="col-sm-3">
	     	 	<span class="input-group">
				  <span class="input-group-text">총액</span>
				  <p:forEach items="${moneysum}" var="sum">
				 
				  <input type="text" aria-label="Last name" class="form-control" readonly="readonly" value="${sum}">
				 </p:forEach>
				</span>
	          </span>
	            <span class="col-sm-3"></span>
		</div>

 		<div style="margin: 40px" class="row">

	  		<table align="center" style="text-align: center; width: 70%" class="table table-striped table-hover">
				  <tr>
				  	<th>행사</th>
				  	<th>일자</th>
				  	<th>축의금</th>
				  	<th>코멘트</th>
				  </tr>
			   <p:forEach items="${infolist}" var="info">
				  <tr>
				  	<td>${info.event}</td>
				  	<td>${info.date}</td>
				  	<td>
				  	 	<f:formatNumber type="number">${info.money}</f:formatNumber>
				  	 </td>
				  	<td>${info.coment}</td>
				  </tr>
				</p:forEach>
			</table>
		</div>


        <section style="bottom: 0; position: absolute; width: 100%">
          <div class="d-flex flex-column flex-md-row text-center text-md-start  py-4 px-4 px-xl-5 bg-primary">
            <!-- Copyright -->
            <div class="text-white mb-3 mb-md-0 ">
              Copyright © 2022. by Jitea Yu
            </div>
            <!-- Copyright -->
          </div>
        </section>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.4.min.js"></script>
        <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>


        <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
        <script src="js/bootstrap.js"></script>
      </body>

      </html>