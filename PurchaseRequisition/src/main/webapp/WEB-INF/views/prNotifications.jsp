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
</head>
<body>
	Hi ,${pr.name}
	
	<c:forEach var="prx" items="${pr.vendorPrice}">
		<tr>
			<td>${prx.key}</td> <td>${prx.value}</td>
		</tr>
	</c:forEach>
	
	
	
</body>
</html>