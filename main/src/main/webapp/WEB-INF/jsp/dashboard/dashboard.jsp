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
	<c:if test="${userRoleId == 1}">
		<c:import url="/WEB-INF/jsp/hr/hrDashboard.jsp" />
	</c:if>
	<c:if test="${userRoleId == 2}">
		<c:import url="/WEB-INF/jsp/emp/employeeDashboard.jsp" />
	</c:if>
	<c:if test="${userRoleId == 3}">
		<c:import url="/WEB-INF/jsp/mngr/mngrDashboard.jsp" />
	</c:if>
</body>
</html>