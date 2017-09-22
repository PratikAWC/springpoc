<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	Welcome, ${user.name}
	<br> Your Details
	<br>
	<table>
		<tr>
			<td>Name</td>
			<td>${user.name}</td>
		</tr>
		<tr>
			<td>PAN</td>
			<td>${user.pan}</td>
		</tr>
		<tr>
			<td>Type</td>
			<td>${user.type}</td>
		</tr>
		<tr>
			<td>Address</td>
			<td>${user.registeredaddress}</td>
		</tr>
</table>

	Your Notifications,
	<br>
	<c:forEach items="${user.pr}" var="pr">
		${pr.type}   ${pr.name}   ${pr.category}  ${pr.description}   ${pr.amount}   
	</c:forEach>
</body>
</html>