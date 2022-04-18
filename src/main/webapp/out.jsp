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
        

          <!-- 새로고침 방지 -->
		<script language='javascript'>
		
		function noEvent() {
		    if (event.keyCode == 116) {
		        event.keyCode= 2;
		        return false;
		    }
		    else if(event.ctrlKey && (event.keyCode==78 || event.keyCode == 82))
		    {
		        return false;
		    }
		}
		document.onkeydown = noEvent;
		
		</script>



        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=714, initial-scale=1">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="css/bootstrap.css">
      </head>
        <!-- body : oncontextmenu="return false" 우클릭 방지 -->
      <body oncontextmenu="return false" onLoad=" LoadOnce()">
        <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
          <div class="container-fluid">
            <span class="navbar-brand">
              <p:forEach items="${name}" var="my" begin="0" end="0">
                <div class="h5">${my} 님 환영합니다 </div>
              </p:forEach>
            </span>
            <button class="btn btn-secondary my-2 my-sm-0" onclick="window.location.href='logout.do'">로그아웃</button>
          </div>
        </nav>


        <!--friend TABLE -->
        <div class="row">
          <div class="col-sm-6">
            <table class="table">
              <caption style="text-align: center; margin-bottom: 12px" align="top">이벤트 현황</caption>
              <thead class="thead-dark">
                <tr>
                  <th scope="col">번호</th>
                  <th scope="col">이름</th>
                  <th scope="col">행사</th>
                  <th scope="col">행사일자</th>
                  <th scope="col">축의금,조의금</th>
                  <th scope="col">코멘트</th>
                </tr>
              </thead>
              <tbody>
                <p:forEach items="${clist}" var="content" varStatus="status">
                  <tr>
                    <th class="btn-outline" scope="row">${status.count}</th>
                    <td><a href="join.do?id=${content.id}&name=${content.name}">${content.name}</a></td>
                    <td>${content.event}</td>
                    <td>${content.date}</td>
                    <td>
                      <f:formatNumber type="number">
                        ${content.money}
                      </f:formatNumber>
                    </td>
                    <td>${content.coment}</td>
                  </tr>
                </p:forEach>
              </tbody>
            </table>
          </div>
          <div class="col-sm-6">
            <table class="table">
              <caption style="text-align: center;" align="top">등록된 인원
                <!-- Button trigger modal -->
                <button style="margin-left: 20px" type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal"
                  data-bs-whatever="@mdo">인원추가</button>
              </caption>
              <thead class="thead-light">
                <tr>
                  <th scope="col">번호</th>
                  <th scope="col">이름</th>
                </tr>
              </thead>
              <tbody>
                <p:forEach items="${namelist}" var="name" varStatus="status">
                  <tr>
                    <th class="btn-outline" scope="row">${status.count}</th>
                    <td><a id="${name.num}" class="namevalue" onclick="namevalue()" data-bs-toggle="modal"
                        data-bs-target="#modalcontent" data-bs-whatever="@mdo">${name.name}</a></td>
                  </tr>
                </p:forEach>
              </tbody>
            </table>
          </div>
        </div>


        <table class="type03">
          <tr>
            <th scope="col">총 지출</th>
            <p:forEach items="${sum}" var="sum">
              <th scope="col">
                <f:formatNumber type="number">${sum}</f:formatNumber>
              </th>
            </p:forEach>


          </tr>
        </table>



        <!-- MODALBODY -->
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">인원 추가페이지</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
              </div>

              <div class="modal-body">
                <form action="clientinput.do" method="post">
                  <p:forEach items="${id}" var="my" begin="0" end="0">
                    <input name="id" type="hidden" value="${my}">
                  </p:forEach>
                  <p:forEach items="${pw}" var="pw" begin="0" end="0">
                  <input name="pw" type="hidden" value="${pw}">
                  </p:forEach>
                  <div class="mb-3">
                    <label for="recipient-name" class="col-form-label">이름</label>
                    <input name="name" type="text" class="form-control" required="required">
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
                    <button type="submit" class="btn btn-primary">추가</button>
                  </div>
                </form>
              </div>

            </div>
          </div>
        </div>










        <!-- MODALBODY2 -->
        <div class="modal fade" id="modalcontent" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">행사 추가하기</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
              </div>

              <div class="modal-body">
                <form action="eventinput.do" method="get">
                  <input id="num" name="num" type="hidden" value="">
                  <p:forEach items="${id}" var="my" begin="0" end="0">
                    <input name="id" type="hidden" value="${my}">
                  </p:forEach>
                   <p:forEach items="${pw}" var="pw" begin="0" end="0">
                  <input name="pw" type="hidden" value="${pw}">
                  </p:forEach>
                  <div class="mb-3">
                    <label for="recipient-name" class="col-form-label">이름</label>
                    <input id="sname" name="name" type="text" class="form-control" readonly="readonly">
                  </div>
                  <div class="mb-3">
                    <label for="recipient-name" class="col-form-label">행사 명</label>
                    <input name="event" type="text" class="form-control" required="required">
                  </div>
                  <div class="mb-3">
                    <label for="recipient-name" class="col-form-label">행사 일시</label>
                    <input name="date" type="date" class="form-control" required="required">
                  </div>
                  <div class="mb-3">
                    <label for="recipient-name" class="col-form-label">금액(원)</label>
                    <input name="money" type="text" class="form-control" required="required">
                  </div>
                  <div class="mb-3">
                    <label for="message-text" class="col-form-label">코멘트</label>
                    <textarea name="coment" class="form-control"></textarea>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
                    <button type="submit" class="btn btn-primary">추가</button>
                  </div>
                </form>
              </div>

            </div>
          </div>
        </div>

        <script>
          function namevalue() {
            let dv = event.currentTarget;
            dv.innerText
            let dn = event.currentTarget;
            dn.id
            document.getElementById("sname").value = dv.innerText;
            document.getElementById("num").value = dn.id;
          }
        </script>



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