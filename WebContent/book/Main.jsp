<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; 

charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
request.setCharacterEncoding("UTF-8");
%>
<%
Class.forName("oracle.jdbc.driver.OracleDriver");

String url="jdbc:oracle:thin:@localhost:1521:orcl";
String user="scott";
String pw="123456";

Connection conn=DriverManager.getConnection(url, user, pw);
Statement stmt=conn.createStatement();
String sql="SELECT*FROM BOOKCON b2 ORDER BY TO_NUMBER(SEQ) DESC";
ResultSet rs=stmt.executeQuery(sql);

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 

Transitional//EN" 

"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; 

charset=UTF-8">
<title>게시판 글쓰기</title>
</head>
<body>
<%if(session.getAttribute("sessionId")==null){
	response.sendRedirect("../login/login.jsp");
}else{
%>
<h3>
<font color="blue"><%=session.getAttribute("sessionId") %></font>
로그인 되었습니다.^^
</h3>
<%} %>
<table width="500" border="1" bordercolor="skyblue">
<tr>
<td>아이디</td>
<td>번호</td>
<td>제목</td>
<td>작성일</td>
<td>조회수</td>
</tr>
<%while(rs.next()){ %>

<tr>
<td><%= rs.getString("sid") %></td>
<td><%= rs.getString("seq") %></td>
<td><a href="bboardDetail.jsp?c=<%=rs.getString("seq")%>"><%= rs.getString("title") %></a></td>
<td><%= rs.getString("regdate") %></td>
<td><%= rs.getString("hit")%></td>
</tr>
<%} %>
</table>
</body>
</html>