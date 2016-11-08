<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  } 
.navbar-bottom
 {
min-height: 30px;
margin-top: 10px;
background-color: none;
padding-top: 35px;
color:lightblue;
}
  </style>
</head>
<body>

<div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">

      <div class="item active">
        <img src="C:\Users\Intel\workspace\ShoppingCartFrontEnd\src\main\resources\images\103.jpg" alt="Chania" width="460" height="345">
        <div class="carousel-caption">
          <h3>Asian</h3>
          <p>Colr your room with asian</p>
        </div>
      </div>

      <div class="item">
        <img src="C:\Users\Intel\workspace\ShoppingCartFrontEnd\src\main\resources\images\colorful_paint_splatter-t2.jpg" alt="Chania" width="460" height="345">
        <div class="carousel-caption">
          <h3>Dulux</h3>
          <p>color the room with Dulux</p>
        </div>
      </div>
    
      <div class="item">
        <img src="C:\Users\Intel\workspace\ShoppingCartFrontEnd\src\main\resources\images\03.jpg" alt="Flower" width="460" height="345">
        <div class="carousel-caption">
          <h3>Shalimar</h3>
          <p>Have a beautiful Room</p>
        </div>
      </div>

      <div class="item">
        <img src="C:\Users\Intel\workspace\ShoppingCartFrontEnd\src\main\resources\images\102.jpg" alt="Flower" width="460" height="345">
        <div class="carousel-caption">
          <h3>Berger</h3>
          <p>Have a sweet Room</p>
        </div>
      </div>
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

</body>
</html>