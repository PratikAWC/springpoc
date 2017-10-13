<%@page import="dto.PurchaseRequisition"%>
<%@page import="dto.Vendors"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
		body{background-color: #f2f2f2;font-family: Arial, Helvetica, sans-serif;}
		</style>
</head>
<body>
<div style="width:90%; background-color:#0054a6; color:#fff; padding:10px; margin:10% auto 2% auto; border:solid 5px #6bb2f7; text-align:center;  font-size:16px;">
	Hi ,${pr.name}
	</div>
	<c:forEach var="prx" items="${pr.vendorPrice}">
		
			<table  border="1" style="width: 90%; border-collapse: collapse; border: solid 1px #9ab4c5; margin:0 auto;"><tr><td style="padding:10px;">${prx.key}</td> <td style="padding:10px;">${prx.value}</td></tr></table>
		
	</c:forEach>
	
	
	
</body>
</html>