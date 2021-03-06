<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<title>Create - Customer - Form</title>
	
	<link type="text/css"
			rel="stylesheet"
			href="${pageContext.request.contextPath}/resources/css/style.css" />
			
	<link type="text/css"
			rel="stylesheet"
			href="${pageContext.request.contextPath}/resources/css/add-customer-style.css" />
	
</head>
<body>
	<div id="wrapper">
		<div id="header">
			<h2>CRM - Customer Relationship Management</h2>
		</div>
	</div>
	<div id="container">
		<h3>Create New Customer</h3>
		
		<form:form action="saveCustomer" modelAttribute="customer" method="POST">
		
		<!-- we need to associate the updated data to same entity by id -->
		<form:hidden path="id" />
		
			<table>
				<tbody>
					<tr>
						<td><label>First Name:</label></td>
						<td><form:input path="firstName"/></td>
					</tr>
					<tr>
						<td><label>Last Name:</label></td>
						<td><form:input path="lastName"/></td>
					</tr>
					<tr>
						<td><label>Email:</label></td>
						<td><form:input path="email"/></td>
					</tr>
					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Create" class="save"></td>
					</tr>
				</tbody>
			</table>
		</form:form>
		
		<div style="clear; both;"></div>
		
		<p>
			<a href="${pageContext.request.contextPath}/customers/list">Back to Customer List</a>
		</p>
		
	</div>
</body>
</html>