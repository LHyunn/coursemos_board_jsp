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
    String userID = null;
    if (session.getAttribute("userid") != null) { //세션에 userID가 존재하면
        userID = (String) session.getAttribute("userid"); //userID에 저장
    }

    if (userID == null) {
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('로그인을 하세요')");
        script.println("location.href = 'index.jsp'");
        script.println("</script>");

    }
    int start = 1;
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
                                "><a href="BoardList.jsp" style="text-decoration: none; color: inherit;">웹기반정보시스템 Q&amp;A 게시판</a> </h2>
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
    <hr>
    <div id="page-content" class="clearfix">
        <div id="page-content-wrap">
            <div class="ubboard">
                <div class="ubboard_list">
                    <div class="ubboard_container" style="background-color: rgb(255, 255, 255);
                                                                border-bottom-style: solid;
                                                                border-bottom-width: 1px;
                                                                border-image-repeat: stretch;
                                                                border-image-source: none;
                                                                border-left-style: solid;
                                                                border-left-width: 1px;
                                                                border-right-style: solid;
                                                                border-right-width: 1px;
                                                                border-top-style: solid;
                                                                border-bottom-color: rgb(128, 128, 128);
                                                                border-collapse: collapse;
                                                                border-left-color: rgb(128, 128, 128);
                                                                border-right-color: rgb(128, 128, 128);
                                                                border-top-color: rgb(0, 0, 0);
                                                                border-top-width: 2px;
                                                                box-sizing: border-box;
                                                                color: rgb(51, 51, 51);
                                                                display: block;
                                                                font-family: NanumGothic, 나눔고딕, NanumGothic, 돋움, dotum, sans-serif;
                                                                font-size: 14px;

                                                                line-height: 20px;
                                                                padding-bottom: 19px;
                                                                padding-left: 19px;
                                                                padding-right: 19px;
                                                                padding-top: 19px;
                                                                width: 1200px;
                                                                ">
                        <div class="list">
                            <table class="ubboard_table table table-hover">
                                <colgroup>
                                    <col class="number">
                                    <col>
                                    <col class="writer">
                                    <col class="date">
                                    <col class="hit">
                                </colgroup>
                                <thead>
                                <tr>
                                    <th class="header">번호</th>
                                    <th class="header">제목</th>
                                    <th class="header">작성자</th>
                                    <th class="header">작성일</th>
                                    <th class="header">조회수</th>
                                </tr>
                                </thead>
                                <tbody>
                                <%
                                    for (BoardBean bd: bm.getBoardList()) {
                                %>
                                <tr>
                                    <%	bd.setNum(start);
                                    %>
                                    <td><%=start++%>
                                    </td>
                                    <td><a href="Board_view.jsp?num=<%=bd.getNum() %>"><%=bd.getSubject() %> </a></td>
                                    <td><%=bd.getWriter()%>
                                    </td>
                                    <td><%=bd.getReg_date()%>
                                    </td>
                                    <td><%=bd.getReadcount()%>
                                    </td>
                                </tr>
                                <%
                                    }
                                %>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <hr>
                    <div class="ubboard_footer" id="yui_3_17_2_1_1652496897829_32">
                        <div class="button_area">
                            <div >
                                <a href="Board_form.jsp" class="btn btn-primary">게시글 쓰기</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</center>
</body>
</html>




