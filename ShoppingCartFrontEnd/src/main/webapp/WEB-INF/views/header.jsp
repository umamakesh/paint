<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>insert title here </title>
  </head>
  <head>
  <title>Bootstrap Case</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">Kara Peinto</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="#"><span class="glyphicon glyphicon-home"></span>Home</a></li>
        </li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
      <c:if test="${empty sucessMessage}">
        <li><a href="register">signup<span class="glyphicon glyphicon-user"></span></a></li>
        <li><a href="login">login<span class="glyphicon glyphicon-log-in"></span></a></li>
        </c:if>
        <c:if test="${not empty sucessMessage }">
         <li><a href="#">My Cart<span class="glyphicon glyphicon-shopping-cart"></span></a></li>
        <li><a href="login">log out<span class="glyphicon glyphicon-log-out"></span></a></li>
        </c:if>
      </ul>
    </div>
  </div>
</nav>
</body>
</html>