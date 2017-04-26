<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>


<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
		<title>Update Student</title>
	</head>
	<body>
		<section>
			<div class="jumbotron">
				<div class="container text-center">
					<h1>Update student data</h1>
					<p>Please fill the student form</p>
				</div>
				<a href="<c:url value="/j_spring_security_logout" />" class="btn btn-danger btn-mini pull-right">
					Logout
				</a>
				<a href="<c:url value="/panel" />" class="btn btn-primary btn-mini pull-left">
					Back
				</a>
			</div>
		</section>
		<form:form modelAttribute ="newStudent" class="form-horizontal">
			<fieldset>
				<legend>Update: </legend>
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="firstName">
						<spring:message code="addStudent.form.firstName.label"/>
					</label>
					<div class="col-lg-10">
						<form:input id="firstname" path="firstName" type="text" class="form:input-large"/>
						<form:errors path="firstName" cssClass="text-danger"/>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="lastName">
						<spring:message code="addStudent.form.lastName.label"/>
					</label>
					<div class="col-lg-10">
						<form:input id="lastname" path="lastName" type="text" class="form:input-large"/>
						<form:errors path="lastName" cssClass="text-danger"/>
					</div>
				</div>
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
					<label class="control-label col-lg-2 col-lg-2" for="email">
						<spring:message code="addStudent.form.email.label"/>
					</label>
					<div class="col-lg-10">
						<form:input id="email" path="email" type="text" class="form:input-large"/>
						<form:errors path="email" cssClass="text-danger"/>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="faculty">
						<spring:message code="addStudent.form.faculty.label"/>
					</label>
					<div class="col-lg-10">
						<form:input id="faculty" path="faculty" type="text" class="form:input-large"/>
						<form:errors path="faculty" cssClass="text-danger"/>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="yearofstudy">
						<spring:message code="addStudent.form.yearofstudy.label"/>
					</label>
					<div class="col-lg-10">
						<form:input id="yearOfStudy" path="yearOfStudy" type="text" class="form:input-large"/>
					</div>
				</div>
				<div class="form-group">
					<div class="col-lg-offset-2 col-lg-10">
						<input type="submit" id="btnAdd" class="btn btn-primary" value ="Add"/>
					</div>
				</div>
			</fieldset>
        </form:form>
	</body>
</html>