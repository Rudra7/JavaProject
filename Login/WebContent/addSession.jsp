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
	<form method="post" action="AddSession" class="box">
		<center>
			<label for="subject">Choose subject:</label>
			<select id="subject" name="subject">
			  <option value="java" >Java</option>
			  <option value="python">Python</option>
			</select><br><br>
			<label for="date">Enter date:</label>
			  <input type="date" name="date"><br><br>
			  <label for="time">Enter time:</label>
			  <input type="time" name="time"><br><br>
			  <input type="submit" value="Create Session">
		</center>
	</form>
	<form action="Logout">
		<input type="submit" value="Logout">
	</form>
	<center>
	<h5><%=request.getAttribute("message") %></h5>
	</center>>
	<style>
	 .box{
	 	top : 30%;
	 	left : 30%;
	 	position : absolute;
	 	box-sizing : border-box;
	 }
	</style>
</body>
</html>