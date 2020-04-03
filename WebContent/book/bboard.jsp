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
<title>bboard.jsp</title>
</head>
<body>
<script>
function loginCheck() {
	window.open("../login/login.jsp","","width=400,height=300");
}

</script>
<h2>게시판 글쓰기</h2>
<button onclick="loginCheck()">글쓰기</a> </button>
</body>
</html>