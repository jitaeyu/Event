<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
  <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="p" %>
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
            <caption align="top">Section A<button>ButtonA</button></caption>
            <thead class="thead-dark">
              <tr>
                <th scope="col">#</th>
                <th scope="col">First</th>
                <th scope="col">Last</th>
                <th scope="col">Handle</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <th scope="row">1</th>
                <td>Mark</td>
                <td>Otto</td>
                <td>@mdo</td>
              </tr>
              <tr>
                <th scope="row">2</th>
                <td>Jacob</td>
                <td>Thornton</td>
                <td>@fat</td>
              </tr>
              <tr>
                <th scope="row">3</th>
                <td>Larry</td>
                <td>the Bird</td>
                <td>@twitter</td>
              </tr>
            </tbody>
          </table>
        </div>
        <div class="col-sm-6">
          <table class="table">
            <caption align="top">Section B
              <!-- Button trigger modal -->
              <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal"
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

      <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
      <script src="js/bootstrap.js"></script>
    </body>

    </html>