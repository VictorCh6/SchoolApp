<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
	<title>Users</title>
</head>
<body>
	<section>
		<div class="jumbotron">
			<div class="container text-center">
				<h1>Students</h1>
				<p>All students</p>
			</div>
			<a href="<c:url value="/j_spring_security_logout" />" class="btn btn-danger btn-mini pull-right">
				Logout
			</a>
			<a href="<c:url value="/panel" />" class="btn btn-primary btn-mini pull-left">
				Back
			</a>
		</div>
	</section>
	<section class="container text-center">
		<div class="row">
			<c:forEach items="${students}" var="student">
				<div class="col-sm-6 col-md-3"  style="padding-bottom: 15px">
					<div class="thumbnail">
						<div class="caption">
							<h3>First name: ${student.firstName}</h3>
							<p>Last name: ${student.lastName}</p>
							<p>Pesel: ${student.pesel}</p>
							<p>Email: ${student.email}</p>
							<p>Faculty: ${student.faculty}</p>
							<p>Year of Study: ${student.yearOfStudy}</p>
						</div>
					</div>
				</div>
			</c:forEach>	
		</div>
	</section>
</body>
</html>
