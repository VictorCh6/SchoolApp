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
		
		<br><br><br><br>
			<div class=".col-md-6 .offset-md-3 text-center">
			    <a href="<spring:url value="/login" />" class="btn btn-lg btn-success">
					<span class="glyphicon glyphicon-log-in" aria-hidden="true"></span>
					Log in
				</a>
			</div>
    </body>
</html>