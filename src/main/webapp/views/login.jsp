<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>

<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link href="resources/css/style.css" rel="stylesheet">

<style>
.container {
	background-color: #000000;
	overflow: auto;
}

.logform {
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
		<div class=logform>
			<!-- Complete Form  -->

			<!-- Complete Panel -->
			<div class="panel panel-smart"  align="center">

				<!-- Complete Panel -->
				<div class="panel-heading">
					<h3 class="panel-title">Login</h3>
				</div>

				<div class="panel-body">
					<!-- Panel Body -->
					<p>Please login using your existing account</p>

					<c:url var="action" value="/login"></c:url>

					<form:form action="${action}" method="post">

						<table>
							<tr>
								<td>Username:</td>
								<td><input type="text" name="name"> <!-- placeholder="enter your username"> --></td>
							</tr>
							<tr>
								<td>Password:</td>
								<td><input type="password" name="password"> <!-- placeholder="enter your password"> --></td>
							</tr>
							<tr>
								<td><input type="submit" value="Login"></td>
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