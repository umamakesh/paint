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
  <script src="https://maxcdn.bootst3rapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
  <style>
body  {
    background-image: url("100.jpg");
}
</style>
</head>
<body>

<nav class="navbar navbar-default" role="navigation">
  <!-- Brand and toggle get grouped for better mobile display -->
  <div class="navbar-header">
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
      <span class="sr-only">Toggle navigation</span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>
  </div>

  <!-- Collect the nav links, forms, and other content for toggling -->
  <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
    <ul class="nav navbar-nav">
 <li class="active"><a href="#">home</a></li>

      <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">menu <b class="caret"></b></a>
        <ul class="dropdown-menu">
<li class="divider"></li>
          <li><a href="#">water</a></li>
<li class="divider"></li>
          <li><a href="#">imter</a></li>
<li class="divider"></li>
          <li><a href="#">exter</a></li>
        
        </ul>
       <li><a href="ContactUs">contactus</a></li>
      <li><a href="AboutUs">aboutus</a></li>
      </li>
    </ul>
    <div class="col-sm-3 col-md-3">
        <form class="navbar-form" role="search">
        <div class="input-group">
            <input type="text" class="form-control" placeholder="Search" name="q">
            <div class="input-group-btn">
                <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
            </div>
        </div>
        </form>
    </div>
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

  </div>
</div>
</body>
</html>


