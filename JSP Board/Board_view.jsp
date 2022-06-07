<%@ page import="board.BoardBean" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<jsp:useBean id="bm" class="board.BoardManager" scope="application"/>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width" , initial-scale
    "="1">
    <link rel="stylesheet" href="css/bootstrap.css">
    <title></title>
</head>

<body>
<%
    int num = Integer.parseInt(request.getParameter("num").trim());

    BoardBean bean = bm.getBoard(num-1);
    bean.setReadcount(bean.getReadcount()+1);

%>
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


    <hr>
    <div id="region-main">
        <span class="notifications" id="user-notifications"></span>
        <div role="main"><span id="maincontent"></span>
            <div class="ubboard">
                <div class="ubboard_view" style="width: 100%;margin: 0;text-align: center;padding: 16px;font-size: 14px;font-weight: 700;}">
                    <div class="well" style="-webkit-box-shadow: none;
background-color: rgb(255, 255, 255);
border-bottom-color: rgb(227, 227, 227);
border-bottom-left-radius: 0px;
border-bottom-right-radius: 0px;
border-bottom-style: solid;
border-bottom-width: 1px;
border-image-outset: 0;
border-image-repeat: stretch;
border-image-slice: 100%;
border-image-source: none;
border-image-width: 1;
border-left-color: rgb(227, 227, 227);
border-left-style: solid;
border-left-width: 1px;
border-right-color: rgb(227, 227, 227);
border-right-style: solid;
border-right-width: 1px;
border-top-color: rgb(227, 227, 227);
border-top-left-radius: 0px;
border-top-right-radius: 0px;
border-top-style: solid;
border-top-width: 1px;
box-shadow: none;
box-sizing: border-box;
color: rgb(51, 51, 51);
display: block;
font-family: NanumGothic, 나눔고딕, NanumGothic, 돋움, dotum, sans-serif;
font-size: 14px;
height: 287px;
line-height: 20px;
margin-bottom: 20px;
min-height: 20px;
padding-bottom: 19px;
padding-left: 19px;
padding-right: 19px;
padding-top: 19px;
">
                        <div class="subject" style="margin: 0;background-color: #f7f7f7;color: #343434;border-top: 2px solid black;height: 50px;border-bottom: 1px solid #bababa;">
                            <h3 style="width: 100%;margin: 0;text-align: center;padding: 16px;font-size: 14px;font-weight: 700;"><%=bean.getSubject()%></h3>
                        </div>
                        <div class="info" style="background-color: rgb(255, 255, 255);
border-bottom-color: rgb(186, 186, 186);
border-bottom-style: solid;
border-bottom-width: 1px;
box-sizing: border-box;
color: rgb(109, 109, 109);
display: block;
font-family: NanumGothic, 나눔고딕, NanumGothic, 돋움, dotum, sans-serif;
font-size: 14px;
height: 37px;
line-height: 20px;
padding-bottom: 8px;
padding-left: 25px;
padding-right: 25px;
padding-top: 8px;">
                            <div class="writer" style="width: 35%;display: inline-block;zoom: 1;box-sizing: border-box; float: left; text-align: left;"><span class="title">작성자 :</span><%=bean.getWriter() %></div>
                            <div class="date" style="width: 30%;display: inline-block;text-align: right;float: left;"><span class="title" style="font-weight: 700;color: #6d6d6d;">작성일 :</span><%=bean.getReg_date() %></div>
                            <div class="hit" style="display: inline-block;zoom: 1;text-align: right;}"><span class="title" >조회수 :</span><%=bean.getReadcount()%></div>
                        </div>
                        <div class="content" style="background-color: rgb(255, 255, 255);
box-sizing: border-box;
color: rgb(51, 51, 51);
display: block;
font-family: NanumGothic, 나눔고딕, NanumGothic, 돋움, dotum, sans-serif;
font-size: 14px;
height: 120px;
line-height: 20px;
padding-bottom: 10px;
padding-left: 30px;
padding-right: 30px;
padding-top: 20px;
">
                            <div class="text_to_html" style="box-sizing: border-box;
color: rgb(51, 51, 51);
display: block;
font-family: NanumGothic, 나눔고딕, NanumGothic, 돋움, dotum, sans-serif;
font-size: 14px;
height: 80px;
line-height: 20px;"><p style="text-align: left"><%=bean.getContent()%></p></div>
                        </div>
                    </div>
                    <form action="Board_update.jsp" autocomplete="off" method="post">
                    <div class="pull-right">
                            <a href="Board_update.jsp?num=<%=num%>&&password" class="btn btn-default modify">수정</a>
                            <a href="Board_delete.jsp?num=<%=num%>" class="btn btn-default btn-danger delete ">삭제</a>
                        </div>
                    </form>
                        <div class="pull-left">
                            <a href="Board_list.jsp" class="btn btn-default">목록</a>
                            <a href="Board_form.jsp" class="btn btn-default btn-primary write">쓰기</a>
                        </div>
                    </div>
                </div sadasd
            </div>
        </div>
    </div>

</body>
</html>




