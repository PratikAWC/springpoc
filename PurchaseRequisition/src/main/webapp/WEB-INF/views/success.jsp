<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="sytlesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<center><h2>Welcome, ${user}</h2>
	<table>
	<tr> <th>Type</th><th>Name</th> <th>Category</th> <th>Description</th> <th>Amount</th> </tr>
	<c:forEach items="${pr}" var="prs">
	<tr>
		
		
		<td>${prs.type}</td> <td>${prs.name}</td> <td>${prs.category}</td> <td>${prs.description}</td> <td>${prs.amount}</td><td><input type="hidden" name="category" value="${prs.category}"></td> <td><a href="./vendors?type=${prs.type}">Vendor</a></td>
	<tr>
	</c:forEach>
	</table>
	</center>
	<script src="webjars/jquery/2.1.4/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	
</body>
</html>