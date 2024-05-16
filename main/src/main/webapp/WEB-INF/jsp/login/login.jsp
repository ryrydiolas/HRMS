<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HRMS</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="<c:url value="/js/login/login.js" />"></script>
<link rel="stylesheet" type="text/css"
	href="<c:url value="/css/login/login.css" />">
</head>
<body>
<div class="subheader" id="subheader"></div>
	<div class="form-container">
		<div class="login-container" id="login-container">
			<h1 class="title">LOGIN</h1>
			<p class="desc">This system is to manage HR informations</p>
			<form action="/login" method="post">
				<div class="input-container">
					<input type="email" name="username"
						placeholder="Enter Your Email Address" autofocus="on">
				</div>
				<div class="input-container">
					<input type="password" name="password"
						placeholder="Enter Your Password">
				</div>
				<div class="account-controls">
					<a href="">Forgot Password?</a>
					<button type="submit" onclick="submitAuthentication(event)">Login</button>
				</div>
			</form>
		</div>
		<div class="placeholder-banner" id="banner">
			 <img src="${pageContext.request.contextPath}/image?name=logo2.png" alt="" class="banner">
		</div>
	</div>
</body>
</html>