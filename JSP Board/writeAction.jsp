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
<jsp:useBean id="boardbean" class="board.BoardBean"/>
<jsp:setProperty name="boardbean" property="*"/>
<jsp:useBean id ="bm" class="board.BoardManager" scope = "application"/>

<%
    bm.addBoard(boardbean);
%>
<script>
    alert('등록이 완료되었습니다.');
    location.href='Board_list.jsp';
</script>

</body>
</html>







