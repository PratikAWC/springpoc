<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Insert title here</title>
	</head>
	<body style="font-family: Arial, Helvetica, sans-serif;">
		<div style="color: #368BC1; text-align: right; width: 90%; font-size: 16px; font-weight: bold;">Welcome, ${user.name}</div>
		<br><br>
		<table style="width: 50%; border-color: #006400; margin: 0 auto;">
			<tr>
				<td style="color: #368BC1; width: 50%; font-size: 16px; font-weight: bold;">Your Details,</td>
			</tr>
		</table>
		<table border="1" style="width: 50%; border-collapse: collapse; border-color: #006400; margin: 0 auto;">
			<tr>
				<td style="width: 30%; font-weight: bold; background-color: #F5F5F5;color: navy;">&nbsp;Name</td>
				<td style="width: 70%;">&nbsp;${user.name}</td>
			</tr>
			<tr>
				<td style="width: 30%; font-weight: bold; background-color: #F5F5F5;color: navy;">&nbsp;PAN</td>
				<td style="width: 70%;">&nbsp;${user.pan}</td>
			</tr>
			<tr>
				<td style="width: 30%; font-weight: bold; background-color: #F5F5F5;color: navy;">&nbsp;Type</td>
				<td style="width: 70%;">&nbsp;${user.type}</td>
			</tr>
			<tr>
				<td style="width: 30%; font-weight: bold; background-color: #F5F5F5;color: navy;">&nbsp;Address</td>
				<td style="width: 70%;">&nbsp;${user.registeredaddress}</td>
			</tr>
		</table>
		<br><br>
		<table style="width: 50%; border-color: #006400; margin: 0 auto;">
			<tr>
				<td style="color: #368BC1; width: 50%; font-size: 16px; font-weight: bold;">Your Notifications,</td>
			</tr>
		</table>			
		<form action="./acknowledgement" method="post">
		<!-- **************************************************************************** -->
		<input type="hidden" name="vendor" value="${user.name}">
		<!-- **************************************************************************** -->
		<table border="1" style="width: 50%; border-collapse: collapse; border-color: #006400; margin: 0 auto;">
			<tr style="height: 35px; text-align: center; color: navy; background-color: #F5F5F5; font-weight: bold;">
				<td>TYPE</td><td>NAME</td><td>CATEGORY</td><td>DESCRIPTION</td><td>AMOUNT</td>
			</tr>
			<c:forEach items="${user.pr}" var="pr">
				<tr style="height: 30px; text-align: center;">
				<!-- **************************************************************************** -->
					<td>
						<input type="checkbox" name="pr" value="${pr.name}">
					</td>
				<!-- **************************************************************************** -->	
					<td>			
						${pr.type} 
					</td>
					<td>			
						${pr.name} 
					</td>
					<td>			
						${pr.category} 
					</td>
					<td>			
						${pr.description} 
					</td>
					<td>			
						${pr.amount} 
					</td>
				</tr>
			</c:forEach>
		</table>
			<input type="submit" value="acknowledge">
		</form>
	</body>
</html>