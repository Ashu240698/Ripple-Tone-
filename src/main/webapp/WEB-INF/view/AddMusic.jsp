<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
<link href="/resources/Navbar.css" rel="stylesheet" />
<title>Add Music</title>
</head>
<style>
body {
	background-image: url("<c:url value="/resources/images/img4.jpg"/>");
	background-size: cover;
	opacity: 1.8;
	z-index: 5.0;
}

.container {
	height: 1000px;
	width: 1000px;
}

.jumbotron-fluid {
	display: block;
	padding: 20px;
	text-align: center;
	height: 300px;
}

input {
	border-radius: 10px;
	width: 300px;
	height: 30px;
}

.footer {
	position: relative;
	top: 20px;
	text-align: center;
	justify-content: center;
}

.navbar {
	background-color: coral;
	padding-left: 10px;
	padding-top: 10px;
	height: 80px;
}

.navbar-header {
	font-size: x-large;
	font-weight: bolder;
	padding-top: 10px;
}

h1 {
	text-align: center;
}

table {
	text-align: center;
	position: relative;
	left: 214px;
}

 .error {
         color: red;
      }

#btn {
	text-align: center;
	position: relative;
	left: 44px;
}

.right {
	float: right;
}

ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
}

#warning{
	color: red;
}
</style>

<body>
	<%response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");%>
	<%
		if(session.getAttribute("admin")==null){
			response.sendRedirect("redirect:/adminlogin");
		}
	%>
	
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">Neo-Music</div>
			<ul>
				<li class="right"><a href="/Ripple_Tone/logoutadmin"><button type="button" class="btn btn-outline-danger">Logout</button></a></li>
			</ul>
		</div>
	</nav>
	<h1>Add Music Page</h1>
	<div class="container">
		<div class="jumbotron-fluid">
			<form:form action="add" modelAttribute="musicObj">
				<h4 id="warning">**Note: Music Name should be same as Music present in songs folder otherwise song won't load</h4>
				<table>
					<tr>
						<td><form:hidden path="musicId" value="${id}"/></td>
					</tr>
					<tr>
						<td><form:label path="musicName">Music Name</form:label></td>
						<td><form:input path="musicName" required="Required"/></td>  
						<td><form:errors path="musicName" cssClass="error" /></td>
					</tr>
					<tr>
						<td><form:label path="musicUrl">Music Url</form:label></td>
						<td><form:input path="musicUrl" required="Required"/></td>
						<td><form:errors path="musicUrl" cssClass="error" /></td>
					</tr>
					<tr>
						<td><form:label path="musicPosterUrl">Music Poster Url</form:label></td>
						<td><form:input path="musicPosterUrl" required="Required"/></td>
						<td><form:errors path="musicPosterUrl" cssClass="error" /></td>
					</tr>
					<tr>
						<td><form:label path="musicAlbum">Music Album</form:label></td>
						<td><form:input path="musicAlbum" required="Required"/></td>
						<td><form:errors path="musicAlbum" cssClass="error" /></td>
					</tr>
					<tr>
						<td><form:label path="musicArtist">Music Artist</form:label></td>
						<td><form:input path="musicArtist" required="Required"/></td>
						<td><form:errors path="musicArtist" cssClass="error" /></td>
					</tr>
					<tr>
						<td colspan="10"><form:button id="btn" name="Submit">Submit</form:button>
						</td>
					</tr>
				</table>
			</form:form>
		</div>

	</div>

</body>

</html>