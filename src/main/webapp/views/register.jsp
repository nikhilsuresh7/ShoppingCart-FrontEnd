<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register User</title>
</head>
<body>

	<form:form action="user/register" method="post" modelAttribute="user">

		<table>

			<tr>
				<td><form:label path="id">ID</form:label></td>
				<td><form:input path="id" pattern=".{4,15}" required="true"
						title="Username should contain 4 to 15 characters" /></td>
			</tr>
			<tr>
				<td><form:label path="name">Name</form:label></td>
				<td><form:input path="name" required="true"
						title="Name should not be empty" /></td>
			</tr>

			<tr>
				<td><form:label path="password">Password</form:label></td>
				<td><form:input path="password" pattern=".{4,15}"
						required="true"
						title="Password should contains 4 to 15 characters" /></td>
			</tr>

			<tr>
				<td><form:label path="mobile">Mobile</form:label></td>
				<td><form:input type="tel" path="mobile" pattern="^\d{10}$" required="true"
						title="It should contain 10 numbers" /></td>
			</tr>

			<tr>
				<td><form:label path="email">Email</form:label></td>
				<td><form:input type="email" path="email" /></td>
			</tr>

			<tr>
				<td><form:label path="address">Address</form:label></td>
				<td><form:input path="address" required="true" /></td>
			</tr>

			<tr>
				<td><input type="submit" value="Register"/></td>
				<td><input type="reset" value="Reset"/>
				</td>
			</tr>
			
		</table>

	</form:form>


</body>
</html>