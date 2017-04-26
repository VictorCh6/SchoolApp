<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>


<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
		<title>Add Student</title>
	</head>
	<body>
		<section>
			<div class="jumbotron">
				<div class="container text-center">
					<h1>Delete Student</h1>
					<p>Please type pesel</p>
				</div>
				<a href="<c:url value="/j_spring_security_logout" />" class="btn btn-danger btn-mini pull-right">
					Logout
				</a>
				<a href="<c:url value="/panel" />" class="btn btn-primary btn-mini pull-left">
					Back
				</a>
			</div>
		</section>
		<div>
		<form:form modelAttribute ="newStudent" class="form-horizontal">
		<form:errors path="*" cssClass="alert alert-danger" element="div"/>
			<fieldset>
				<legend>Delete student</legend>
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="pesel">
						<spring:message code="addStudent.form.pesel.label"/>
					</label>
					<div class="col-lg-10">
						<form:input id="pesel" path="pesel" type="text" class="form:input-large"/>
						<form:errors path="pesel" cssClass="text-danger"/>
					</div>
				</div>
				<div class="form-group">
					<div class="col-lg-offset-2 col-lg-10">
						<input type="submit" id="btnAdd" class="btn btn-warning" value ="Delete"/>
					</div>
				</div>
			</fieldset>
        </form:form>
		</div>
	</body>
</html>