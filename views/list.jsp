<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Update Details</title>

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="${request.contextPath }/static/styles/bootstrap.min.css">

</head>
<body>
	<%-- <nav class="navbar navbar-expand-lg navbar-dark bg-primary"
		style="margin-bottom:90px;"> <a class="navbar-brand" href="#">Vehicle
		Reservation System</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarColor01" aria-controls="navbarColor01"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarColor01">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item"><a class="nav-link" href="homeAgain">Home</a></li>
			<li class="nav-item"><a class="nav-link" href="create">Create</a></li>
			<li class="nav-item"><a class="nav-link" href="search">Search</a></li>
			<li class="nav-item active"><a class="nav-link" href="#">List<span
					class="sr-only">(current)</span></a></li>
		</ul>
	</div>
	<form action="#">
		<button type="submit" class="btn btn-outline-secondary">Logout</button>
	</form>
	</nav> --%>


	<nav class="navbar navbar-expand-lg navbar-dark bg-primary"> <a
		class="navbar-brand" href="#">Vehicle Reservation System</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarColor01" aria-controls="navbarColor01"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarColor01">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="#">Home
					<span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="create">Create</a>
			</li>
			<li class="nav-item"><a class="nav-link" href="search">Search</a>
			</li>
			<li class="nav-item"><a class="nav-link" href="list">List</a></li>
		</ul>
	</div>
	<form class="form-inline my-2 my-lg-0" action="#">
		<!--  <input class="form-control mr-sm-2" type="text" placeholder="Search"> -->
		<button class="btn btn-secondary my-2 my-sm-0" type="submit">Logout</button>
	</form>

	</nav>

	<!-- table code here -->
	<h3>Vehicles</h3>
	<c:if test="${!empty vehicleList}">
		<table class="table table-hover">
			<thead>
				<tr class="table-dark">
					<th scope="col">Vehicle No</th>
					<th scope="col">Branch</th>
					<th scope="col">Vehicle Type</th>
					<th scope="col">Insurance Expiry Date</th>
					<th scope="col">Last Service Date</th>
					<th scope="col">Service Due Date</th>
				</tr>
			</thead>
			<tbody>

				<!--  <tr class="table-primary">
      <th scope="row">Primary</th>
      <td>Column content</td>
      <td>Column content</td>
      <td>Column content</td> -->



				<c:forEach items="${vehicleList}" var="vh">
					<tr class="table-primary">
						<td>${vh.vehicleNo}</td>
						<td>${vh.branch}</td>
						<td>${vh.vehicleType }</td>
						<td>${vh.insuranceExpiryDate }</td>
						<td>${vh.lastServiceDate }</td>
						<td>${vh.serviceDueDate}</td>
						<td><a href="edit/${vh.vehicleNo}">edit</a></td>
						<td><a href="delete/${vh.vehicleNo}">delete</a></td>
						<td><a href="sendMailSSL">send email</a></td>

					</tr>
				</c:forEach>


			</tbody>

		</table>
	</c:if>



	<%-- <h3>Vehicles</h3>
	<c:if test="${!empty vehicleList}">
		<table class="table table-hover">
			<tr class="table-dark">
				<th>Vehicle No</th>
				<th>Branch</th>
				<th>Vehicle Type</th>
				<th>Insurance Expiry Date</th>
				<th>Last Service Date</th>
				<th>Service Due Date</th>
				<th colspan="3">Actions</th>
			</tr>
			<c:forEach items="${vehicleList}" var="vh">
				<tr class="table-light">
					<td>${vh.vehicleNo}</td>
					<td>${vh.branch}</td>
					<td>${vh.vehicleType }</td>
					<td>${vh.insuranceExpiryDate }</td>
					<td>${vh.lastServiceDate }</td>
					<td>${vh.serviceDueDate}</td>
					<td><a href="edit/${vh.vehicleNo}">edit</a></td>
					<td><a href="delete/${vh.vehicleNo}">delete</a></td>
					<td><a href="sendMailSSL">send email</a></td>

				</tr>
 --%>
	<%-- </c:forEach>
		</table>
	</c:if> --%>
</body>
</html>