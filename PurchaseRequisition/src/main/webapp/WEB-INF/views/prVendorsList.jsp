<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Vendors</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
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

<style>
		body{background-color: #f2f2f2;font-family: Arial, Helvetica, sans-serif;}
		</style>
</head>
<body>
	<br />
	<form action="./sendNotification" method="post">
		<input type="hidden" name="name" value="${name}"> <input
			type="hidden" name="type" value="${type}">

		<center>
			<table  border="1" style="width: 90%; border-collapse: collapse; border: solid 1px #9ab4c5;">
				<tr style="height: 35px; text-align: center; color: white; background-color: #0054a6;">
					<td><input type="checkbox" name="ckbCheckAll" id="ckbCheckAll"
						title="Select" /></td>
					<td>PAN NO.</td>
					<td>NAME</td>
					<td>TYPE</td>
					<td>REGISTERED ADDRESS</td>
				</tr>
				<c:forEach items="${category}" var="cat">
					<tr  style="height: 35px; text-align:center;  background-color:#dcdcdc; font-size:14px;">
						<td><input type="checkbox" class="checkBoxClass" name="pan"
							id="pan" value="${cat.pan}" /></td>
						<td>${cat.pan}</td>
						<td>${cat.name}</td>
						<td>${cat.type}</td>
						<td>${cat.registeredaddress}</td>

					</tr>
				</c:forEach>
			</table>
			<br />
			<br />
			<div style="margin: 0 auto;">
				<input type="submit" name="btnvendor" id="btnvendor"
					style="background-color: #0054a6;color: white;border-radius: 5px;width: 120px;height: 32px;border-radius: 15px;border-color: #0054a6;margin: 5px;"
					value="Notify" />
			</div>
		</center>
	</form>
</body>
</html>