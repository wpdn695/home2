<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; 

charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
request.setCharacterEncoding("UTF-8");
%>
<%
String id=request.getParameter("id");
String pwd=request.getParameter("pwd");

String sql="select pwd from Bookmem where id=?";
Class.forName("oracle.jdbc.driver.OracleDriver");

String url="jdbc:oracle:thin:@localhost:1521:orcl";
String user="scott";
String pw="123456";

Connection conn=DriverManager.getConnection(url, user, pw);

PreparedStatement pstmt=conn.prepareStatement(sql);
pstmt.setString(1, id);

ResultSet rs=pstmt.executeQuery();


String ypass="";
int x=-1;
String msg="";
if(rs.next()){
ypass=rs.getString("pwd");
if(ypass.equals(pwd))
	x=1;
else //pwd 불일치시
x=0;
}else{
	x=-1;
}
if(x==1){
	session.setAttribute("sessionId", id);
	msg="../book/Main.jsp";
}else if(x==0){
msg="login.jsp?msg=0";
}else{
	msg="login.jsp?msg=-1";
	
}
response.sendRedirect(msg);


%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 

Transitional//EN" 

"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; 

charset=UTF-8">
<title>jsp</title>
</head>
<body>

</body>
</html>