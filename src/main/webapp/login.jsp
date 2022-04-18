<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>개인 축의금 다이어리</title>

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
    <meta name="viewport" content="width=1250, initial-scale=1">


    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.css">
</head>

<body>

<section class="vh-100">
  <div class="container-fluid h-custom">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-md-9 col-lg-6 col-xl-5">
        <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.webp"
          class="img-fluid">
      </div>
      <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
        <form action="login.do" method="post">

          <div class="divider d-flex align-items-center my-4">
            <p class="text-center fw-bold mx-3 mb-0">로그인</p>
          </div>

          <!-- id input -->
          <div class="form-outline mb-3">
            <input name="id" type="text"class="form-control form-control-lg"
              placeholder="아이디" required="required"/>
            <label class="form-label">ID</label>
          </div>

          <!-- Password input -->
          <div class="form-outline mb-3">
            <input name="pw" type="password" class="form-control form-control-lg"
              placeholder="비밀번호" required="required"/>
            <label class="form-label">PASSWORD</label>
          </div>


          <div class="text-center text-lg-start mt-4 pt-2">
            <button type="submit" class="btn btn-primary btn-lg"
              style="padding-left: 2.5rem; padding-right: 2.5rem;">Login</button>
            <p class="small fw-bold mt-2 pt-1 mb-0">회원이 아니신가요?  <a href="sign.jsp"
                class="link-danger">회원가입</a></p>
          </div>

        </form>
      </div>
    </div>
  </div>
  <div
    class="d-flex flex-column flex-md-row text-center text-md-start justify-content-between py-4 px-4 px-xl-5 bg-primary">
    <!-- Copyright -->
    <div class="text-white mb-3 mb-md-0">
      Copyright © 2022. by Jitea Yu
    </div>
    <!-- Copyright -->

    
  </div>
</section>

    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="js/bootstrap.js"></script>

</body>
</html>