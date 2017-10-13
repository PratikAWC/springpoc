<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Success</title>	
		<style>
		body{background-color: #f2f2f2; font-family: Arial, Helvetica, sans-serif;}
		</style>	
	</head>
	<body style="font-family: Arial, Helvetica, sans-serif;">
		<center>
		<br/>
			<div style="color: #0054a6;text-align: right;width: 90%;font-size: 18px;font-weight: bold;margin: 13px 0px;">Welcome, ${user}&nbsp;&nbsp;</div>
			<table border="1" style="width: 90%; border-collapse: collapse; border-color: #0054a6;">
			<!-- <tr style="height: 35px; text-align: center; color: white; background-color: #778899;"> -->
				<tr style="height: 35px; text-align: center; color: white; background-color: #0054a6;">
					<td>TYPE</td><td>NAME</td><td>CATEGORY</td><td>DESCRIPTION</td><td>AMOUNT</td><td>VENDOR</td> <td>NOTIFICATIONS</td>
					<!-- <td>Type</td><td>Name</td><td>Category</td><td>Description</td><td>Amount</td> -->
				</tr>
				<c:forEach items="${pr}" var="prs">
					<tr style="height: 35px; text-align:center;  background-color:#dcdcdc; font-size:14px;">
						<td style=" text-align: center;">${prs.type}</td>
						<td style=" text-align: center;">${prs.name}</td>
						<td style=" text-align: center;">${prs.category}</td>
					  	<td style=" text-align: center;">${prs.description}</td> 
					  	<td style=" text-align: center;">${prs.amount}</td>
					  	<td style=" text-align: center;"><a href="./vendors?name=${prs.name}&type=${prs.type}">
								  			<button style="background-color: #0054a6;color: white;border-radius: 5px;width: 120px;height: 32px;border-radius: 15px;border-color: #368bc1;margin: 5px;">Vendor</button>
								  		</a></td>
					  	
					  	<td style="text-align: center;">
					  					<a href="./prNotifications?name=${prs.name}">
								  			<button style="background-color: #0054a6;color: white;border-radius: 5px;width: 120px;height: 32px;border-radius: 15px;border-color: #368bc1;margin: 5px;">Notifications</button>
								  		</a>
					  				</td>
					<tr>
				</c:forEach>
			</table>
		</center>
	</body>
</html>