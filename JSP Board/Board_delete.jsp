<%--
  Created by IntelliJ IDEA.
  User: leechanghyun
  Date: 2022/05/14
  Time: 3:05 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%request.setCharacterEncoding("UTF-8");%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<jsp:useBean id="bm" class="board.BoardManager" scope="application"/>
<%@ page import="board.BoardBean" %>
<%
    Date nowTime = new Date();
    SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
    String strdate = sf.format(nowTime);
    int num = Integer.parseInt(request.getParameter("num").trim());
    BoardBean bean = bm.getBoard(num-1);
%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width" , initial-scale"="1">
    <link rel="stylesheet" href="css/bootstrap.css">
    <title>게시물 삭제</title>
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
                                "><a href="Board_list.jsp" style="text-decoration: none; color: inherit;">웹기반정보시스템 Q&amp;A 게시판</a> </h2>
        </div>
    </div>
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav navbar-right">
            <li class="active user-login user-logout hidden-xs">
                <a href="logoutAction.jsp" class="btn btn-person"
                   style="background-color: #377B01;
                                border-radius: 0;
                                border: 0;
                                padding: 6px 12px 7px;
                                font-size: 12px;
                                height: 32px;
                                color: white;
                                margin-block-end: 0px;
                                margin-block-start: 0px;
                                margin-bottom: 0px;
                                margin-inline-end: 0px;
                                margin-inline-start: 0px;
                                margin-left: 20px;
                                margin-right: 20px;
                                margin-top: 18px;
                                ">로그아웃
                </a>
            </li>
        </ul>
    </div>
</nav>
<center>
    <h2>게시물 삭제</h2>
    <hr>
    <%
        String userid = (String) session.getAttribute("userid");
        SimpleDateFormat format1 = new SimpleDateFormat ( "yyyy-MM-dd HH:mm:ss");
    %>
    <form action="deleteAction.jsp?num=<%=num%>" method=post class="form-horizontal" autocomplete="no" style=    "box-sizing: border-box;                                                                                                                                                     ">
        <div class="well" >
            <div class="form-group" style="height: 20">
                <label class="control-label col-xs-2" for="subject">비밀번호</label>
                <div class="col-xs-10" >
                    <input required type="password" name="password" id="password" class="required subject form-control" placeholder="비밀번호" value="" style="width:626px;float: left;">
                </div>
            </div>
        </div>
        <div class="button_area">
            <button type="submit" class="btn btn-default btn-danger delete">삭제</button>
            <input type="button" value="취소" class="btn btn-default cancel" onClick="history.go(-1)">
        </div>
        </div>
    </form>
</center>
</body>
</html>
