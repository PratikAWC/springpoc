<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "d" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Vendor PR List</title>
</head>
<body>
	Hi ${vendor.name}
	<br>
	<br>
	You Open notifications
	<form action="./acknowledge" method="post">
	<d:forEach items="${openNotification}" var="openNotifications">
	<input type="checkbox" name="prname" value="${openNotifications.name}"> ${openNotifications.type} ${openNotifications.name} ${openNotifications.category} ${openNotifications.description} ${openNotifications.amount}
	Do You want to participate:
	<select name="ack" onchange="">
		<option value="yes">Yes</option>
		<option value="no">No</option>
	</select>
	</d:forEach>
	<input type="submit" value="acknowledge">
	</form>
</body>
</html>