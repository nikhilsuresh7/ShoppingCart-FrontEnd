<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register User</title>

<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link href="resources/css/style.css" rel="stylesheet">

<style>
.container {
	background-color: #000000;
	overflow: auto;
}

.regform {
	color: black;
	width: 400px;
	margin: 0 auto;
}

.panel {
	background-color: #808080;
}
</style>

</head>
<body>

	<div class=container>

		<%@include file="common/header.jsp"%>
		${message }
		<div class=regform>
			<!-- Complete Form  -->

			<!-- Complete Panel -->
			<div class="panel panel-smart"  align="center">

				<!-- Complete Panel -->
				<div class="panel-heading">
					<h3 class="panel-title">Register</h3>
				</div>

				<div class="panel-body">
					<!-- Panel Body -->
					<p>Please register entering the following details</p>

					<c:url var="action" value="/register"></c:url>

					<form:form action="${action}" method="post" modelAttribute="user">

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
								<td><form:input type="tel" path="mobile" pattern="^\d{10}$"
										required="true" title="It should contain 10 numbers" /></td>
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
								<td><input type="submit" value="Register" /></td>
								<td><input type="reset" value="Reset" /></td>
							</tr>

						</table>

					</form:form>

				</div>
				<!-- Panel Body -->

			</div>
			<!-- Complete Panel -->

		</div>
		<!-- Complete Form  -->

		<%@include file="common/footer.jsp"%>

	</div>
	<!-- Container -->

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script
		src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>