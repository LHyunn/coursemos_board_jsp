<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<%
	// 입력 전달되는 한글 처리
	request.setCharacterEncoding("UTF-8");
%>
<!-- 빈즈 처리  -->
<jsp:useBean id="bm" class="board.BoardManager" scope="application"/>
<jsp:useBean id="boardbean" class="board.BoardBean"/>
<%@ page import="board.BoardBean" %>
<jsp:setProperty name="boardbean" property="*"/>
<%
	// 선택된 게시물의 num 받기
	int num = Integer.parseInt(request.getParameter("num").trim());
	// 한 개 데이터 가져오기
	BoardBean bean = bm.getBoard(num-1);
	if (bean.getPassword().equals(boardbean.getPassword())){
		bm.removeBoard(num-1);
%>
<script>
	alert('삭제가 완료되었습니다.');
	location.href='Board_list.jsp';
</script>
<%
}else{
%>
<script>
	alert("비밀번호가 일치하지 않습니다.")
	history.go(-1)
</script>
<%
	}

%>
</body>
</html>







