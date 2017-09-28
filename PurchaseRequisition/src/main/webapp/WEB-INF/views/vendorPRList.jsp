<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Vendor's PR List</title>

</head>
<body>
	Hi, ${vendor.name}
	<br><br>
	Your Open Notification,
	<form action="./acknowledge" method="post">
		<input type="hidden" name="vendor" value="${vendor.pan}">
		<table border="1"
				style="width: 90%; border-collapse: collapse; border-color: #006400;">
		<tr
					style="height: 35px; text-align: center; color: white; background-color: #368BC1;">
					<td><input type="checkbox" name="ckbCheckAll" id="ckbCheckAll"
						title="Select" /></td>
						<td>Type</td>
					<td>Name</td>
					<td>Category</td>
					<td>Description</td>
					<td>Amount</td>
					<td>Action</td>
					<td>Description</td>
					<td>Amount</td>
					
				</tr>
			<c:forEach items="${openNotification}" var="openNotifications">
				<tr style="height: 30px; text-align: center;">
				<td><input type="checkbox" name="prname" value="${openNotifications.name}"></td> <td>${openNotifications.type}</td> <td>${openNotifications.name}</td> <td>${openNotifications.category}</td> 
				<td>${openNotifications.description}</td> <td>${openNotifications.amount}</td>
					<td>
						<input type ='checkbox' class="Blocked" name='useriddiv' id='useriddiv' style="margin-left:150px;" value="yes" ><label>Yes/No</label></p> 
					</td>
					<td>
					<td>
						<input type="number" name="amount" id="amount" class="textbox" disabled>
					</td>
				</tr>
			</c:forEach>
			
		</table>
		<br />
			<br />
		
       <c:choose>
    <c:when test="${openNotifications.name !=null}">
       <div style="margin: 0 auto;">
		<input type="submit" name="acknowledge" id="acknowledge"
					style="background-color: #368BC1; color: white; border-radius: 5px; font-size: 18px; width: 150px; height: 45px; border-bottom-right-radius: 15px; border-top-left-radius: 15px;"
					value="acknowledge" />
					</div> 
        <br />
    </c:when>    
    <c:otherwise>
       <div style="margin: 0 auto;">
		<input type="submit" name="acknowledge" id="acknowledge"
					style="background-color: #368BC1; color: white; border-radius: 5px; font-size: 18px; width: 150px; height: 45px; border-bottom-right-radius: 15px; border-top-left-radius: 15px;"
					value="acknowledge" disabled title="No data to show"/>
					</div> 
        <br />
    </c:otherwise>
</c:choose>
    
			 
	</form>
</body>
<script>
 $('.Blocked').change( function() {
           $(this).parents("tr:eq(0)").find(".textbox").prop("disabled", !this.checked).val(''); 
          ; 
       });
 </script>
</html>