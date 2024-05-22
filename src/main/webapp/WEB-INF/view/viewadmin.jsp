<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin List</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
</head>
<style>
body {
	background-color: #FAEDC6;
}

ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	background-color: #333;
}

li {
	float: left;
}

li a {
	display: block;
	color: white;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

li a:hover {
	background-color: #111;
}

.text {
background: #FAFF6B;
}

.right {
	float: right;
}
</style>
<body>
	<%response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");%>
	<%
		if(session.getAttribute("admin")==null){
			response.sendRedirect("redirect:/welcome");
		}
	%>
	<ul>
		<li> <h2 style="color: silver; padding: 10px;">Admin Home</h2> </li>
		<li class="right"><a href="logoutadmin"><button type="button" class="btn btn-outline-danger">Logout</button></a></li>
	</ul>

	<h1 class="text">Admin List</h1>
	<table border="2" width="70%" cellpadding="2" class="text">
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Email</th>
			<th>Contact</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
		<c:forEach var="admin" items="${list}">
			<tr>
				<td>${admin.adminId}</td>
				<td>${admin.adminName}</td>
				<td>${admin.adminEmail}</td>
				<td>${admin.adminContact}</td>

				<td><a href="editadmin/${admin.adminId}/edit">Edit</a></td>
				<td><a href="deleteadmin/${admin.adminId}">Delete</a></td>
			</tr>
		</c:forEach>
	</table>
	<br />
</body>
</html>