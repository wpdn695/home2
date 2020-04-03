<%@page import="book.borad.dao.BookBoardDao"%>
<%@page import="book.board.vo.BookBoard"%>
<%@ page language="java" contentType="text/html; 

charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 

Transitional//EN" 

"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; 

charset=UTF-8">
<title>jsp</title>
<%
String seq=request.getParameter("c");

BookBoard b=new BookBoard();
b.setSeq(seq);

BookBoardDao dao=new BookBoardDao();
int af=dao.del(b);

if(af>0){
	// 삭제 성공 어디로가라
	%>
	<script>
	alert("메인창으로 넘어갑니다.");
	</script>
<%	
	response.sendRedirect("Main.jsp");
}else{
	//삭제 성공이 안되었음
%>
<script>
alert("오류로인해 삭제가안되었습니다.다시확인해주세요");
</script>
<%}%>

</head>
<body>

</body>
</html>