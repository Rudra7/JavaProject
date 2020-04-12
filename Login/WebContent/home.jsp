<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<h4>Welcome ${username}</h4>
<form action="RegisterSubject" method="post">
	<label>Java</label><input type="submit" value="register" name="java"><br>
	<label>Python</label><input type="submit" value="register" name="python"><br>
</form>
<h5><%=request.getAttribute("message")%></h5>
<form action="yourcourse.jsp">
	<input type="submit" value="Your Courses">
</form>
<form action="Logout">
	<input type="submit" value="Logout">
</form>
</body>
</html>