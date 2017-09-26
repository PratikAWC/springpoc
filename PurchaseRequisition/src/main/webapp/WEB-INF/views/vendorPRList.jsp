<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "d" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Vendor PR List</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
		<script type='text/javascript'>
			 $(document).ready(function(){
			    $('#ack').on('change', function() {
			      if ( this.value === 'yes')
			      {$("#txtprice").show();}
			      else
			      {$("#txtprice").hide();}
			    });
			});
		 </script>
	</head>
	<body>
		<form action="./acknowledge" method="post">
		<input type="hidden" name="vendor" value="${vendor.pan}">
			<br/><br/>
			<div style="width:70%; margin: 0 auto; border: 1px green solid; border-top-right-radius:30px; border-bottom-left-radius:30px; background-color:#F5F5F5; height:400px;">
				<div style="margin-left: 20px;">
					<br/>
					<b>Hi,</b>&nbsp;&nbsp;<span style="color: #368BC1; text-align: right; width: 90%; font-size: 16px; font-weight: bold;">${vendor.name}</span>				
					<br><br>
					Your Open Notifications
					<br><br>
					<table border="1" style="width: 90%; border-collapse: collapse; border-color: #006400;">
						<tr style="height: 35px; text-align: center; color: white; background-color: #368BC1;">
							<td>
								<input type="checkbox" name="ckbCheckAll" id="ckbCheckAll" title="Select" />
							</td>
							<td>TYPE</td>
							<td>NAME</td>
							<td>CATEGORY</td>
							<td>DESCRIPTION</td>
							<td>AMOUNT</td>
							<td>PARTICIPATE</td>
						</tr>
					</table>
					<d:forEach items="${openNotification}" var="openNotifications">
						<tr style="height: 30px; text-align: center;">
							<td><input type="checkbox" class="checkBoxClass" name="prname" id="prname" value="${openNotifications.name}" /></td>
							<td>${openNotifications.type}</td>
							<td>${openNotifications.name}</td>
							<td>${openNotifications.category}</td>
							<td>${openNotifications.description}</td>
							<td>${openNotifications.amount}</td>
							<td>
								<select name="ack" id="ack" onchange="selectItem();" style="border-radius:10px; width:110px; height:25px;">
									<option value="">--Select--</option>
									<option value="yes">Yes</option>
									<option value="no">No</option>
								</select>
							</td>
						</tr>
						
					</d:forEach>
					&nbsp;<input type="number" name="txtprice" id="txtprice" placeholder=" Rupees" style="display:none;border-radius:5px; border: 1px blue solid; height: 20px; width:90px;"/>
					<br><br>
					<div style="margin: 0 auto;">
						<input type="submit" name="btnvendor" id="btnvendor" style="background-color: #368BC1; color: white; border-radius: 5px; font-size: 18px; width: 150px; height: 35px; border-bottom-right-radius: 15px; border-top-left-radius: 15px;" value="Acknowledge"/>
					</div>
					<br/><br/>
				</div>
			</div>
		</form>
	</body>
</html>