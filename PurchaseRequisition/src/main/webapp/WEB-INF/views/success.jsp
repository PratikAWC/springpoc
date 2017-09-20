<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Success</title>		
	</head>
	<body style="font-family: Arial, Helvetica, sans-serif;">
		<center>
		<br/>
			<div style="color: #368BC1; text-align: right; width: 90%; font-size: 16px; font-weight: bold;">Welcome, ${user}&nbsp;&nbsp;</div>
			<table border="1" style="width: 90%; border-collapse: collapse; border-color: #006400;">
			<!-- <tr style="height: 35px; text-align: center; color: white; background-color: #778899;"> -->
				<tr style="height: 35px; text-align: center; color: white; background-color: #368BC1;">
					<td>TYPE</td><td>NAME</td><td>CATEGORY</td><td>DESCRIPTION</td><td>AMOUNT</td>
					<!-- <td>Type</td><td>Name</td><td>Category</td><td>Description</td><td>Amount</td> -->
				</tr>
				<c:forEach items="${pr}" var="prs">
				<tr style="height: 30px;">
					<td style=" text-align: center;">${prs.type}</td>
					<td style=" text-align: center;">${prs.name}</td>
					<td style=" text-align: center;">${prs.category}</td>
				  	<td style=" text-align: center;">${prs.description}</td> 
				  	<td style="width: 20%;">
				  		<table>
				  			<tr>
				  				<td style="width: 150px; text-align: center;">${prs.amount}</td>
				  				<td style="text-align: right;">
				  					<a href="./vendors?category=${prs.category}">
							  			<button style="background-color: #368BC1; color: white; border-radius: 5px; width: 90px; height: 25px; border-bottom-right-radius: 15px; border-top-left-radius: 15px;">Vendor</button>
							  		</a>
				  				</td>
				  			</tr>
				  		</table>
				  		
				  	</td>
				<tr>
				</c:forEach>
			</table>
		</center>
	</body>
</html>