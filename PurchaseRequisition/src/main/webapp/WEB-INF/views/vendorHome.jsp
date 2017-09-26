<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Vendor</title>
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js">
		</script>
		<script>
			$(document).ready(function() {
				$("#ckbCheckAll").click(function() {
					$(".checkBoxClass").prop('checked', $(this).prop('checked'));
				});
		
				$(".checkBoxClass").change(function() {
					if (!$(this).prop("checked")) {
						$("#ckbCheckAll").prop("checked", false);
					}
				});
			});
		</script>
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
		<div style="width: 90%; text-align:center;">
			<a href="./vendorPr?pan=${user.pan}">
				<button style="background-color: #368BC1; color: white; border-radius: 5px; font-size: 18px; width: 150px; height: 35px; border-bottom-right-radius: 15px; border-top-left-radius: 15px;">Notifications</button>
			</a>	
		</div>
	</body>
</html>