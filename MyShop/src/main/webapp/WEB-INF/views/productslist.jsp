<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Product List</title>
	<link href="<c:url value='/static/css/bootstrap.css' />" rel="stylesheet"></link>
	<link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
</head>

<body>
	<div class="generic-container">
		<div class="panel panel-default">
			  <!-- Default panel contents -->
		  	<div class="panel-heading"><span class="lead">List of Product </span></div>
		  	<div class="tablecontainer">
				<table class="table table-hover">
		    		<thead>
			      		<tr>
					        <th>Product Name</th>
					        <th>Product Category</th>
					        <th>Brand</th>
					        <th>Description</th>
					        <th>Price</th>
					        <th width="100"></th>
					        <th width="100"></th>
						</tr>
			    	</thead>
		    		<tbody>
					<c:forEach items="${listProduct}" var="user">
						<tr>
							<td>${product.productname}</td>
							<td>${product.productcategory}</td>
							<td>${product.brand}</td>
							<td>${product.description}</td>
							<td>${product.price}</td>
							<td><a href="<c:url value='/edit-user/${user.id}' />" class="btn btn-success custom-width">edit</a></td>
							<td><a href="<c:url value='/delete-user/${user.id}' />" class="btn btn-danger custom-width">delete</a></td>
						</tr>
					</c:forEach>
		    		</tbody>
		    	</table>
		    </div>
		</div>
	 	<div class="well">
	 		<a href="<c:url value='/addproduct' />">Add New User</a>
	 	</div>
   	</div>
</body>
</html>