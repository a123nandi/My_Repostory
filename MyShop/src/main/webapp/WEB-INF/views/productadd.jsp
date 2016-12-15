<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>

<head>
 <title>Shopping Cart</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Product Registration Form</title>
	<link href="<c:url value='/static/css/bootstrap.css' />" rel="stylesheet"></link>
	<link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
</head>

<body>

 	<div class="generic-container">
	<div class="well lead">Product Registration Form</div>
	
	<c:url var="addAction" value="/add/product" ></c:url>
<form:form   class="form-horizontal" action="${addAction}" commandName="product" method="POST" enctype="multipart/form-data">


	
 	<%-- <form:form method="POST"  modelAttribute="user" class="form-horizontal"> --%>
		<form:input type="hidden" path="id" id="id"/>
		
		<div class="row">
			<div class="form-group col-md-12">
				<label class="col-md-3 control-lable" id="productname">Product Name</label>
				<div class="col-md-7">
					<form:input type="text" path="productname" id="productname" class="form-control input-sm"/>
					<div class="has-error">
						<form:errors path="productname" class="help-inline"/>
					</div>
				</div>
			</div>
		</div>
		
		

		<div class="row">
			<div class="form-group col-md-12">
				<label class="col-md-3 control-lable" for="productcategory">Product Category</label>
				<div class="col-md-7">
					<form:input type="text" path="productcategory" id="productcategory" class="form-control input-sm" />
					<div class="has-error">
						<form:errors path="productcategory" class="help-inline"/>
					</div>
				</div>
			</div>
		</div>

		

		<div class="row">
			<div class="form-group col-md-12">
				<label class="col-md-3 control-lable" for="brand">Brand</label>
				<div class="col-md-7">
					<form:input type="text" path="brand" id="brand" class="form-control input-sm" />
					<div class="has-error">
						<form:errors path="brand" class="help-inline"/>
					</div>
				</div>
			</div>
		</div>
		
		<div class="row">
			<div class="form-group col-md-12">
				<label class="col-md-3 control-lable" for="description">Description</label>
				<div class="col-md-7">
					<form:input type="text" path="description" id="description" class="form-control input-sm" />
					<div class="has-error">
						<form:errors path="description" class="help-inline"/>
					</div>
				</div>
			</div>
		</div>
		
		<div class="row">
			<div class="form-group col-md-12">
				<label class="col-md-3 control-lable" for="username">Price</label>
				<div class="col-md-7">
					<form:input type="text" path="price" id="price" class="form-control input-sm" />
					<div class="has-error">
						<form:errors path="price" class="help-inline"/>
					</div>
				</div>
			</div>
		</div>
		
		
		

				<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-3 control-lable" id="image">Upload a document</label>
							<div class="col-md-7">
								<form:input type="file" path="image" id="image" class="form-control input-sm"/>
								<div class="has-error">
									<form:errors path="image" class="help-inline"/>
								</div>
							</div>
						</div>
					</div>




		<div class="row">
			<div class="form-actions floatRight">
				<c:choose>
					<c:when test="${edit}">
						<input type="submit" value="Update" class="btn btn-primary btn-sm"/> or <a href="<c:url value='/userlist' />">Cancel</a>
					</c:when>
					<c:otherwise>
						<input type="submit" value="Register" class="btn btn-primary btn-sm"/> or <a href="<c:url value='/userlist' />">Cancel</a>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
		
		<%-- <c:if test="${edit}">
			<span class="well pull-left">
				<a href="<c:url value='/add-document/${user.id}' />">Click here to upload/manage your documents</a>	
			</span>
		</c:if> --%>
		
	</form:form>
	</div>
</body>
</html>