<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin page</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"
	type="text/javascript"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	type="text/javascript"></script>
</head>
<body>
	<header>
	<h1 >peinto</h1>
	<h5>(Konwledge And Fun ONline)</h5>
	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
	<ul class="nav navbar-nav">
			<li><a href="category">Category</a></li>
			<li><a href="product">Product</a></li>
			<li><a href="suppliers">Supplier</a></li>
		</ul>
		<ul class="nav navbar-nav navbar-right">

				<li><a href="home">Logout <span
						class="glyphicon glyphicon-log-out"></span></a></li>
		
		</ul>
	</div>
	</nav>
	 </header>
	<h4 style="text-align:center">Admin Page</h4>
	<c:if test="${product}">
		<jsp:include page="Product.jsp" />
		<jsp:include page="Footer.jsp"/>
	</c:if>
	<c:if test="${category}">
		<jsp:include page="Category.jsp" />
		<jsp:include page="Footer.jsp"/>
	</c:if>
	<c:if test="${supplier}">
		<jsp:include page="Supplier.jsp" />
	<jsp:include page="Footer.jsp"/>
	</c:if>


</body>
</html>