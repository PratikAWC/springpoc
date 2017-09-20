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
	<form action="./sendNotification" method="post">
		<center>
		<table>
			<c:forEach items="${category}" var="cat">
				<tr>
					<td>
						<input type="checkbox" name="pan" value="${cat.pan}"></td>
					<td>
						${cat.pan}
					</td> 
					<td>
						${cat.name}
					</td> 
					<td>
						${cat.type}
					</td> 
					<td>
						${cat.registeredaddress}
					</td>
				</tr>
			</c:forEach>
		</table>
		<input type="submit" value="notify">
	</center>
	</form>
</body>
</html>