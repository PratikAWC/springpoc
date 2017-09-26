<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Vendor's PR List</title>
</head>
<body>
	Hi, ${vendor.name}
	<br><br>
	Your Open Notification,
	<form action="./acknowledge" method="post">
		<input type="hidden" name="vendor" value="${vendor.pan}">
		<table>
			<c:forEach items="${openNotification}" var="openNotifications">
				<tr>
				<td><input type="checkbox" name="prname" value="${openNotifications.name}"></td> <td>${openNotifications.type}</td> <td>${openNotifications.name}</td> <td>${openNotifications.category}</td> <td>${openNotifications.description}</td> <td>${openNotifications.amount}</td>
					<td>
						<select name="ack">
							<option value="yes">YES</option>
							<option value="no">NO</option>
						</select>
					</td>
					<td>
					<td>
						<input type="text" name="amount">
					</td>
				</tr>
			</c:forEach>
		</table>
		<input type="submit" value="acknowledge">
	</form>
</body>
</html>