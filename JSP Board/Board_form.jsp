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
<%
    Date nowTime = new Date();
    SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
    String strdate = sf.format(nowTime);
%>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width" , initial-scale"="1">
    <link rel="stylesheet" href="css/bootstrap.css">
    <title>게시물 등록</title>

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
    <h2>게시물 등록</h2>
    <hr>
    <%
        String userid = (String) session.getAttribute("userid");
        SimpleDateFormat format1 = new SimpleDateFormat ( "yyyy-MM-dd HH:mm:ss");
    %>
    <form action="writeAction.jsp" method=post class="form-horizontal" autocomplete="no">
        <div class="well" >
            <div class="form-group">
                <label class="control-label col-xs-2" for="subject" >제목</label>
                <div class="col-xs-10" style="">
                    <input type="text" name="subject" id="subject" class="required subject form-control" placeholder="제목" value="" autocomplete="no" style="width:626px;float: left;" required/>
                    <input type="hidden" name="writer" id="writer" value="<%=userid%>">
                    <input type="hidden" name="reg_date" id="reg_date" value="<%=strdate%>">
                    <input type="hidden" name="readcount" id="readcount" value="0">

                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-xs-2">내용</label>

                <div class="col-xs-10" style="box-sizing: border-box;
                            color: rgb(51, 51, 51);
                            display: block;
                            float: left;
                            font-family: NanumGothic, 나눔고딕, NanumGothic, 돋움, dotum, sans-serif;
                            font-size: 14px;
                            line-height: 20px;
                            min-height: 1px;
                            padding-left: 15px;
                            padding-right: 15px;
                            position: relative;
                            ">
                    <div>
                        <textarea name="content" rows="15" cols="100%" spellcheck="true" style="background-color: rgb(255, 255, 255);
                                -webkit-nbsp-mode: space;
                                float: left;
                                -webkit-user-modify: read-write;
                                border-bottom-color: rgb(187, 187, 187);
                                border-bottom-style: solid;
                                border-bottom-width: 1px;
                                border-image-repeat: stretch;
                                border-image-source: none;
                                border-left-color: rgb(187, 187, 187);
                                border-left-style: solid;
                                border-left-width: 1px;
                                border-right-color: rgb(187, 187, 187);
                                border-right-style: solid;
                                border-right-width: 1px;
                                border-top-color: rgb(187, 187, 187);
                                border-top-style: solid;
                                border-top-width: 1px;
                                box-sizing: border-box;
                                color: rgb(51, 51, 51);
                                display: block;
                                font-family: NanumGothic, 나눔고딕, NanumGothic, 돋움, dotum, sans-serif;
                                font-size: 14px;
                                height: 340px;
                                line-break: after-white-space;
                                line-height: 20px;
                                min-height: 340px;
                                overflow-x: auto;
                                overflow-y: auto;
                                padding-bottom: 4px;
                                padding-left: 4px;
                                padding-right: 4px;
                                padding-top: 4px;
                                resize: vertical;
                                text-align: left;
                                word-wrap: break-word;
                                width:auto;

                                "></textarea>
                        </div>
                    </div>
                </div>
            <div class="form-group" style="height: 20">
                <label class="control-label col-xs-2" for="subject">비밀번호</label>
                <div class="col-xs-10" >
                    <input type="password" name="password" id="password" class="required subject form-control" placeholder="비밀번호" value="" style="width:626px;float: left;" required/>
                </div>
            </div>
            </div>
            <div class="button_area">
                <button type="submit" class="btn btn-primary submit">저장</button>
                <input type="button" value="취소" class="btn btn-default cancel" onClick="history.go(-1)">
            </div>
        </div>
    </form>
</center>
</body>
</html>
