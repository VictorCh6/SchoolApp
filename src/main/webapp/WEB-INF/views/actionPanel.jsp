<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
	<head>
		<meta charset="utf-8">
		<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
		<title>Welcome</title>
	</head> 
	<body>
    	<section>
			<div class="jumbotron" >
				<div class="container text-center">
					<h1> ${greeting} </h1>
					<p> ${tagline} </p>
				</div>
			</div>
		</section>
		<div class="row">
		    <div class="col-6 col-sm-3 text-center">
		    	<a href="<spring:url value="/add" />" class="btn btn-lg">
					<span class="glyphicon glyphicon-user" aria-hidden="true"></span>
					Add student to database
				</a>	
		    </div>
		    <div class="col-6 col-sm-3 text-center">
		    	<a href="<spring:url value="/all" />" class="btn btn-lg">
					<span class="glyphicon glyphicon-cloud-download" aria-hidden="true"></span>
					Show all students
				</a>	
			</div>
			<div class="col-6 col-sm-3 text-center">
		    	<a href="<spring:url value="/update" />" class="btn btn-lg">
					<span class="glyphicon glyphicon-folder-open" aria-hidden="true"></span>
					Update student data
				</a>	
			</div>
			<div class="col-6 col-sm-3 text-center">
		    	<a href="<spring:url value="/delete" />" class="btn btn-lg btn-danger">
					<span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
					Delete student
				</a>	
			</div>	
		</div>
		<br><br><br><br>
		<div class="row">
			<div class=".col-md-6 .offset-md-3 text-center">
				<a href="<c:url value="/j_spring_security_logout" />" class="btn btn-danger btn-md">
					<span class="glyphicon glyphicon-log-in" aria-hidden="true"></span>
					Logout
				</a>
			</div>
		</div>
    </body>
</html>