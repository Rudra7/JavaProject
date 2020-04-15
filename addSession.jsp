<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="styling/css/styleAddSession.css">
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
	
	<div class="session">
	<h3>Create the Session</h3>
	<form action="AddSession" method="post">
		<p>Choose Subject</p>
		<select name="subject">
			<option value="none" selected disabled hidden>Subjects</option>
			<option value="java">Java</option>
			<option value="Python">Python</option>
		</select>
		<p>Enter Date</p>
			<input type="text" name="date" placeholder="yyyy-MM-dd" pattern="([0-9][0-9][0-9][0-9])-(1[0-2]|[1-9])-(3[01]|[12][0-9]|[1-9])" required>
		<p>Enter Time</p>
			<input type="text" name="time" placeholder="HH:mm" pattern="(1[0-2]|[1-9]):[0-5]?[0-9](\sAM|\sPM)" required>
		<p>Enter unique code</p>
			<input type="text" name="uniquecode" placeholder="Enter here" required><br><br>
		<input type="submit" value="Create Session" class="createbtn"><br><br>
	</form>
		<form action="Logout">
		<input type="submit" value="Logout" class="logoutbtn">
	</form>
	<h5><%=request.getAttribute("message") %></h5>
	</div>
	
	

</body>
</html>