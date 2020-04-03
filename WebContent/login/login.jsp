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
<title>로그인</title>


</head>
<body>
<div>
<form action="loginCheck.jsp" name="form">
<table>
<tr>
<td bgcolor="skyblue" align="right">아이디<input type="text" id="id" name="id" size="8" /></td>
</tr>

<tr>
<td bgcolor="skyblue" align="right">암호<input type="password"  id="pwd" name="pwd" size="8" /></td >
</tr>
</table>
<input type="submit" value="로그인" />
</form>
<%
String msg=request.getParameter("msg");
if(msg!=null &&msg.equals("0")){
%>
<script>
alert("아이디 혹은 비밀번호 확인바랍니다.");
</script>
<%
}else if(msg!=null &&msg.equals("-1")){
	

%>
<script>
alert("아이디 혹은 비밀번호 확인바랍니다.");
</script>
<%} 

%>

</div>
</body>
</html>