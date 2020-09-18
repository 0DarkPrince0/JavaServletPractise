<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="register.servlet" method="post">

		Name :- <input type="text" name="name" /><br> 
		Mobile no :- <input type="text" name="mobile" /><br> 
		Email_id :- <input type="text" name="email" /><br> 
		Password :- <input type="password" name="pass" /><br> 
		Confirm password :- <input type="password" name="cnfpass" /><br> 
		Course :- <input type="text" name="course" /><br> 
		College ID :- <input type="text" name="colegeid" /><br> <br> 
			<input type="submit" value="Register" />
	</form>
	
	<form action="login.servlet" method="post">

		Email_id :- <input type="text" name="email" /><br> 
		Password :- <input type="password" name="pass" /><br>
		<input type="submit" value="Login">
	</form>
	<br>
	<form action="update" method="post">
	
		Name :- <input type="text" name="name1" value="${name}"/><br> 
		Mobile no :- <input type="text" name="mobile1" value="${mobile}"/><br> 
		Email_id :- <input type="text" name="email1" readonly="readonly" value="${email}"/><br> 
		Password :- <input type="password" name="pass1"/><br> 
		Confirm password :- <input type="password" name="cnfpass1" /><br> 
		Course :- <input type="text" name="course1" value="${course}"/><br> 
		College ID :- <input type="text" name="colegeid1" value="${collegeid}"/><br> <br> 
		<input type="submit" value="Update"/>
	
	</form>
	
	<br>
	<form action="invalidsession.servlet" method="post">
		<input type="submit" value="logout">
	</form>
	<br>
	<form action="Delete" method="post">

		Email_id :- <input type="text" name="email" /><br>
		<input type="submit" value="Delete">
	</form>
</body>
</html>