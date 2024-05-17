<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HRMS</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://unpkg.com/ionicons@5.1.2/dist/ionicons.js"></script>
<script src="<c:url value="/js/dashboard/dashboard.js" />"></script>
<link rel="stylesheet" type="text/css"
	href="<c:url value="/css/dashboard/dashboard.css" />">
</head>
<body>
	<div id="body-pd">
		<div class="l-navbar" id="navbar">
			<nav class="nav">
				<div>
					<div class="nav__brand" onclick="toggleMenu()">
						<ion-icon name="menu-outline" class="nav__toggle" id="nav-toggle"></ion-icon>
					</div>

					<div class="nav__list">
						<a href="#" class="nav__link active"> <ion-icon
								name="home-outline" class="nav__icon"></ion-icon> <span
							class="nav__name active">Dashboard</span>

						</a>

						<div class="nav__link collapse">
							<ion-icon name="people-outline" class="nav__icon"></ion-icon>
							<span class="nav__name" onclick="toggleSubMenuEA()">Employee
								Attendance <ion-icon name="chevron-down-outline"
									class="collapse__link"></ion-icon>
							</span>

						</div>

						<ul class="collapse__menuEA" style="margin-top: -30px;">
							<li><a id="myBtn" href="#" class="collapse__sublink">Time-In/Out</a></li>
							<li style="margin-top: -30px;"><a href="#"
								class="collapse__sublink">Leave Application</a></li>
							<li style="margin-top: -30px;"><a href="#"
								class="collapse__sublink">vertime Application</a></li>
							<li style="margin-top: -30px;"><a href="#"
								class="collapse__sublink">Official Business Application</a></li>
						</ul>

						<div class="nav__link collapse">
							<ion-icon name="folder-outline" class="nav__icon"></ion-icon>
							<span class="nav__name" onclick="toggleSubMenuRD()">Request
								Documents<ion-icon name="chevron-down-outline"
									class="collapse__link"></ion-icon>
							</span>
						</div>

						<ul class="collapse__menuRD" style="margin-top: -30px;">
							<li><a id="myBtn" href="#" class="collapse__sublink">Request
									c-off use</a></li>
							<li style="margin-top: -30px;"><a href="#"
								class="collapse__sublink">Request update bank details</a></li>
						</ul>

						<div class="nav__link collapse">
							<ion-icon name="calendar-outline" class="nav__icon"></ion-icon>
							<span class="nav__name" onclick="toggleSubMenuSched()">Your
								Details<ion-icon name="chevron-down-outline"
									class="collapse__link"></ion-icon>
							</span>
						</div>

						<ul class="collapse__menuSched" style="margin-top: -30px;">
							<li><a id="myBtn" href="#" class="collapse__sublink">Employee
									Benefits</a></li>
							<li style="margin-top: -30px;"><a href="#"
								class="collapse__sublink">Pending Course</a></li>
						</ul>

						<div class="nav__link collapse">
							<ion-icon name="calendar-outline" class="nav__icon"></ion-icon>
							<span class="nav__name">Schedule</span>
						</div>

						<div class="nav__link collapse">
							<ion-icon name="settings-outline" class="nav__icon"></ion-icon>
							<span class="nav__name">Settings</span>
						</div>
					</div>
				</div>
				<div onclick="logout()">
					<a href="#" class="nav__link navloglink activeLog"> <ion-icon
							name="log-out-outline" class="nav__icon"></ion-icon> <span
						class="nav__name activeLog">Log Out</span>
					</a>
				</div>
			</nav>
		</div>

		<!--/.Header-->
		<header class="header">
			<div class="greetMsg">
				<ion-icon name="person-circle-outline" class="navpersonicon"></ion-icon>
				<h1 style="margin-left: 10px;">Welcome ${username}</h1>
			</div>

			<div>
				<h1 style="font-size: 13px; letter-spacing: 2px;">LOGO HERE</h1>
			</div>
			<div class="subheader" id="subheader"></div>
		</header>

		<div class="subBody">
			<h1 style="color:rgb(0, 128, 255);">Employee Details</h1>
			<p>Employee Number: ${employeeNo}</p>
			<p>Assigned Department: ITD</p>
		</div>

	</div>
</body>
</html>