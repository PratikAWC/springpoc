<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"
	type="text/javascript"></script>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Vendor's PR List</title>
<style>
		body{background-color: #f2f2f2;font-family: Arial, Helvetica, sans-serif;}
		</style>
</head>
<body>
<div style="margin: 1% auto;text-align: left;font-size: 16px;font-weight:bold;color:#0054a6;width: 90%;">
	Hi, ${vendor.name}
	<br>
	 Your Open Notification,
	</div>
	<form action="./acknowledge" method="post">
		<input type="hidden" name="vendor" value="${vendor.pan}">
		<c:remove var="currency" scope="session" />
		<table border="1" style="width: 90%; border-collapse: collapse; border: solid 1px #9ab4c5; margin:0 auto;">
			<tr style="height: 35px; text-align:center;  background-color:#0054a6; color:#fff; font-size:14px;">
				<td><input type="checkbox" name="ckbCheckAll" id="ckbCheckAll"
					title="Select" /></td>
				<td>Type</td>
				<td>Name</td>
				<td>Category</td>
				<td>Description</td>
				<td>Amount</td>
				<td>Action</td>
				<td>Your Biding Amount</td>
				<!-- <td>Amount</td> -->

			</tr>
			<c:forEach items="${openNotification}" var="openNotifications">
				<tr style="height: 30px; text-align: center;">
					<td>
					
					
					<input type="checkbox" name="prname"
						value="${openNotifications.name}" id="chkbx" onchange="changeThis(this)"></td>
					<td>${openNotifications.type}</td>
					<td>${openNotifications.name}</td>
					<td>${openNotifications.category}</td>
					<td>${openNotifications.description}</td>
					<td>${openNotifications.amount}</td>
					<td>
					<div>
					<label>
					<input type='radio' name='ack' class='Blocked2'	name='useriddiv' id='useriddiv'	value="yes" onclick="document.getElementById('amount').removeAttribute('disabled')"  disabled>Yes</label>
						
						<label>
					<input type='radio' name="ack" class='Blocked' name='useriddiv' id='useriddiv2'	value='no' disabled  checked >No</label>
					</div></td>

					<td><input type="number" name="amount" id="amount" value="0.0"
						class="textbox" disabled></td>
				</tr>
				<c:set var="currency" value="${openNotifications.name}"
					scope="session" />
			</c:forEach>

		</table>
		<br /> <br />

		<c:choose>
			<c:when test="${sessionScope.currency !=null}">

				<div style="margin: 0 auto; text-align: center">
			<input type="submit" name="acknowledge" id="acknowledge"style="background-color: #0054a6;color: white;border-radius: 5px;width: 120px;height: 32px;border-radius: 15px;border-color: #368bc1;margin: 5px;"
						value="acknowledge" />
				</div>
				<br />
			</c:when>
			<c:otherwise>

				<div style="margin: 0 auto; text-align: center;">
			<input type="submit" name="acknowledge" id="acknowledge"style="background-color: #0054a6;color: white;border-radius: 5px;width: 120px;height: 32px;border-radius: 15px;border-color: #368bc1;margin: 5px;"
						value="acknowledge" disabled title="No data to show" />
				</div>
				<br />
			</c:otherwise>
		</c:choose>


	</form>
</body>
<!--  <script>
	$('.Blocked').change(
			function() {
				$(this).parents("tr:eq(0)").find(".textbox").prop("disabled",
						!this.checked).val('');
				;
			});
</script> --> 
<script>

		
$( "#acknowledge" ).click(function() {
	  if($('#amount').val()=="0.0" && $('#useriddiv2').attr('checked', true))
	{
	  alert( "Handler for .click() called." );
	}
  
});

</script>
<script>
function changeThis(sender) { 
  if(document.getElementById('chkbx').checked){
    document.getElementById("useriddiv").removeAttribute('disabled');
    document.getElementById("useriddiv2").removeAttribute('disabled');
  }
  else{
    document.getElementById("useriddiv").disabled = true;
    document.getElementById("second2").disabled = true;
  }
  
  
}
</script>
</html>