<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<center>
	<table>
	<c:forEach items="${category}" var="cat">
		<tr>
			<td>${cat.name}</td> <td>${cat.type}</td> <td>${cat.pan}</td> <td>${cat.registeredaddress}</td>
		</tr>
	</c:forEach>
	</table>
	</center>
</body>
</html>