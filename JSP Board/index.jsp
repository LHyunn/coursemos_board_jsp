<%--
  Created by IntelliJ IDEA.
  User: leechanghyun
  Date: 2022/05/14
  Time: 12:27 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="css/bootstrap.css">
    <title>Login</title>
  </head>
  <body>
  <nav class="navbar navbar-default" style="background-color: #7AB42A; border:0">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed"
              data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
              aria-expanded="false">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <div class="coursename">
        <h2 style="box-sizing: border-box;
                                color: rgb(255, 255, 255);
                                display: block;
                                font-family: NanumGothic, 나눔고딕, NanumGothic, 돋움, dotum, sans-serif;
                                font-size: 18px;
                                font-weight: 500;
                                height: 66px;
                                line-height: 19.799999237060547px;
                                margin-block-end: 0px;
                                margin-block-start: 0px;
                                margin-bottom: 0px;
                                margin-inline-end: 0px;
                                margin-inline-start: 0px;
                                margin-left: 20px;
                                margin-right: 0px;
                                margin-top: 0px;
                                overflow-x: hidden;
                                overflow-y: hidden;
                                padding-bottom: 23px;
                                padding-left: 0px;
                                padding-right: 0px;
                                padding-top: 23px;
                                text-overflow: ellipsis;
                                white-space: nowrap;
                                "><a href="index.jsp" style="text-decoration: none; color: inherit;">웹기반정보시스템 Q&amp;A 게시판</a> </h2>
      </div>
    </div>
  </nav>
    <form method="POST" action="loginAction.jsp" class="loginAction">
    <!-- submit을 클릭하면 id/pw가 post방식으로 loginAction.jsp로 전달됨 -->
      <div class="container">
      <div class="col-lg-4"></div>
      <div class="col-lg-4">
        <form method="post" action="loginAction.jsp">
          <h3 style="text-align: center;">로그인 화면</h3>
          <div class="form-group">
            <input type="text" class="form-control" placeholder="아이디" name="userid" maxlength="20">
          </div>
          <div class="form-group">
            <input type="password" class="form-control" placeholder="비밀번호" name="passwd" maxlength="20">
          </div>
          <input type="submit" class="btn btn-primary form-control" value="로그인" class="login" >
        </form>
      </div>
      <div class="col-lg-4"></div>
    </div>
    </form>
  </body>
</html>
