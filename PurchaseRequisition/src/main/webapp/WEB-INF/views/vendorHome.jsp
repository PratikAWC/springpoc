<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Vendor</title>
		
		<style>
		body{background-color: #f2f2f2;}
		</style>
		
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
		<div style="color:  #0054a6;text-align: center;width: 90%;font-size: 16px;font-weight: bold;margin-top: 10%;">Welcome, ${user.name}</div>
		<br><br>
		<table  border="1" style="width: 50%; border-collapse: collapse; border: solid 1px #9ab4c5; margin:0 auto;">
			<tr>
				<td style="color:#fff; background-color:#0054a6; width: 50%; font-size: 16px; font-weight: bold; padding:10px;">Your Details,</td>
			</tr>
		</table>
		<table  border="1" style="width: 50%; border-collapse: collapse; border: solid 1px #9ab4c5; margin:0 auto;">
			<tr style="height: 35px; text-align:center;  background-color:#dcdcdc; font-size:14px;">
				<td style="width: 30%; font-weight: bold; background-color: #F5F5F5;color: #368bc1;">&nbsp;Name</td>
				<td style="width: 70%;">&nbsp;${user.name}</td>
			<tr style="height: 35px; text-align:center;  background-color:#dcdcdc; font-size:14px;">
			
				<td style="width: 30%; font-weight: bold; background-color: #F5F5F5;color: #368bc1;">&nbsp;PAN</td>
				<td style="width: 70%;">&nbsp;${user.pan}</td>
			</tr>
			<tr style="height: 35px; text-align:center;  background-color:#dcdcdc; font-size:14px;">
				<td style="width: 30%; font-weight: bold; background-color: #F5F5F5;color:#368bc1;">&nbsp;Type</td>
				<td style="width: 70%;">&nbsp;${user.type}</td>
			</tr>
			<tr style="height: 35px; text-align:center;  background-color:#dcdcdc; font-size:14px;">
				<td style="width: 30%; font-weight: bold; background-color: #F5F5F5;color:  #368bc1;">&nbsp;Address</td>
				<td style="width: 70%;">&nbsp;${user.registeredaddress}</td>
			</tr>
		</table>
		<br><br>
		<div style="width: 90%; text-align:center;">
			<a href="./vendorPr?pan=${user.pan}">
				<button style="background-color: #0054a6;color: white;border-radius: 5px;width: 120px;height: 32px;border-radius: 15px;border-color: #368bc1;margin: 5px;">Notifications</button>
			</a>	
		</div>
	</body>
</html>