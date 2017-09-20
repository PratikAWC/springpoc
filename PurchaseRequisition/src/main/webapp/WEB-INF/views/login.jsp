<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
</head>
<body>
	<h2>
		<marquee>Welcome to Dalmia Group</marquee>
	</h2>
	<center>
	<form action="./login" method="post">
		<table>
			<tr>
				<td>Enter the User ID</td>
				<td><input type="text" name="userid" /></td>
			</tr>
			<tr>
				<td>Enter the password</td>
				<td><input type="password" name="password" /></td>
			</tr>
		</table>
		<input type="submit" value="login"> 
	</form>
	</center>
</body>
</html>