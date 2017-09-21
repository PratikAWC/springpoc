<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Vendors</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
		<script>
            $(document).ready(function () {
                $("#ckbCheckAll").click(function () {
                    $(".checkBoxClass").prop('checked', $(this).prop('checked'));
                });

                $(".checkBoxClass").change(function(){
                    if (!$(this).prop("checked")){
                        $("#ckbCheckAll").prop("checked",false);
                    }
                });
            });
        </script>
	</head>
	<body style="font-family: Arial, Helvetica, sans-serif;">
		<br/>
		<center>
			<form action="">
				<table border="1" style="width: 90%; border-collapse: collapse; border-color: #006400;">
					<tr style="height: 35px; text-align: center; color: white; background-color: #368BC1;">
						<td><input type="checkbox" name="ckbCheckAll" id="ckbCheckAll"/>ALL</td>
						<td>NAME</td><td>TYPE</td><td>PAN NO.</td><td>REGISTERED ADDRESS</td>
					</tr>
					<c:forEach items="${category}" var="cat">
						<tr style="height: 30px; text-align: center;">
							<td>
								<input type="checkbox" class="checkBoxClass" name="chbvendor" id="chbvendor" />
							</td>
							<td>${cat.name}</td> 
							<td>${cat.type}</td> 
							<td>${cat.pan}</td> 
							<td>${cat.registeredaddress}</td>
						</tr>
					</c:forEach>
				</table>
				<br/><br/>
				<div style="margin: 0 auto;">
					<input type="submit" name="btnvendor" id="btnvendor" style="background-color: #368BC1; color: white; border-radius: 5px; font-size:18px; width: 150px; height: 45px; border-bottom-right-radius: 15px; border-top-left-radius: 15px;" value="Submit" />
				</div>
			</form>
		</center>
	</body>
</html>