<%--
  Created by IntelliJ IDEA.
  User: leechanghyun
  Date: 2022/05/14
  Time: 1:02 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8"
		 pageEncoding="utf-8"%>
<%@ page import = "user.LoginBean"%>
<jsp:useBean id="login" class="user.LoginBean" scope="session" />
<jsp:useBean id="board" class="board.BoardBean" scope="session" />
<jsp:setProperty name="login" property="*"/>
<%@ page import="java.io.PrintWriter"%>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset="UTF-8">
	<title>JSP 게시판 웹 사이트</title>
</head>
<body>
<%
	if(login.checkUser()==0) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('로그인 실패.')");
		script.println("location.href = 'index.jsp'");
		script.println("</script>");
	}
	else  {
		session.setAttribute("userid", login.getUserid());
		response.sendRedirect("Board_list.jsp");
	}

%>
</body>
</html>

