<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<title>Method Not Allowed</title>
<script src="https://unpkg.com/ionicons@5.1.2/dist/ionicons.js"></script>
</head>
<style>
body {
	font-family: 'Roboto', sans-serif;
	background-color: rgb(224, 224, 224);
}

.container {
	text-align: center;
	margin-top: 20%;
}

.container .error {
	display: inline-block;
	font-size: 100px;
	color: red;
	vertical-align: middle;
	font-weight: 700;
}

.container .desc {
	display: inline-block;
	margin-left: 20px;
	vertical-align: middle;
	text-align: left;
}

.container .desc p {
	margin: 0;
	font-size: 15px;
	font-weight: 400;
	line-height: 1.4;
	color: #555;
}

.container .desc a {
	margin-left: 5px;
	font-size: 15px;
	color: blue;
	text-decoration: none;
	font-weight: 400;
}

.container .desc a:hover {
	text-decoration: underline;
}

.container .desc ion-icon {
	color: red;
	font-size: 24px;
	vertical-align: middle;
}
</style>
<body>
	<div class="container">
		<div class="error">405</div>
		<div class="desc">
			<p>
				<ion-icon name="warning-outline"></ion-icon>
				Oops! This method is not allowed for this URL.
			</p>
			<p>The page you are looking for was not found.</p>
			<p>
				You may return to<a href="<%=request.getContextPath()%>/"> Go
					to Home</a>
			</p>
		</div>
	</div>
</body>
</html>
