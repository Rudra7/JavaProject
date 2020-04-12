<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.login.dao.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
if(session.getAttribute("username")==null){
	response.sendRedirect("login.jsp");
}
%>
<%
	response.setHeader("Pragma","no-cache");
	response.setHeader("Cache-Control","no-store");
	response.setHeader("Expires","0");
	response.setDateHeader("Expires",-1);
%>
<center>
<form action="WatchCourse" method="post">
<%
	if(session.getAttribute("username")==null){
		response.sendRedirect("login.jsp");
	}
	Dao d=new Dao();
	String uname=(String)session.getAttribute("username");
	d.yourCourse(uname);
	if (!d.java && !d.python){
		out.println("No course registered");
	}
	else if(d.java){
	%>
		<label>Access course</label><input type="submit" value="Java" name="watch"><br>
	<%
	}
	%>
	<%
	if(d.python){
	%>
		<label>Access course</label><input type="submit" value="Python" name="watch">
	<%
	}
%>
</form>
<h5><%=request.getAttribute("message") %></h5>
</center>
</body>
</html>