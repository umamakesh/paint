<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>eCommerce Product Detail</title>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700" rel="stylesheet">
<style>
    
/*****************globals*************/
body {
  font-family: 'open sans';
  overflow-x: hidden; }

img {
  max-width: 100%; }

th, td {
    padding: 5px;
    text-align: left;    
}

.card {
  margin-top: 50px;
  background: #eee;
  padding: 3em;
  line-height: 1.5em; }

@media screen and (min-width: 997px) {
  .wrapper {
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex; } }


.colors {
  -webkit-box-flex: 1;
  -webkit-flex-grow: 1;
      -ms-flex-positive: 1;
          flex-grow: 1; }

.product-title, .price, .sizes, .colors {
  text-transform: UPPERCASE;
  font-weight: bold; }

.checked, .price span {
  color: #ff9f1a; }

.product-title, .rating, .product-description, .price, .vote, .sizes {
  margin-bottom: 15px; }

.product-title {
  margin-top: 0; }

.size {
  margin-right: 10px; }
  .size:first-of-type {
    margin-left: 40px; }

.color {
  display: inline-block;
  vertical-align: middle;
  margin-right: 10px;
  height: 1em;
  width: 1em;
  border-radius: 1px; }
  .color:first-of-type {
    margin-left: 20px; }

.add-to-cart, .like {
  background: #ff9f1a;
  padding: 1em 1em;
  border: none;
  text-transform: UPPERCASE;
  font-weight: bold;
  color: #fff;
  -webkit-transition: background .3s ease;
          transition: background .3s ease; }
  .add-to-cart:hover, .like:hover {
    background: #b36800;
    color: #fff; }

.not-available {
  text-align: center;
  line-height: 2em; }
  .not-available:before {
    font-family: fontawesome;
    content: "\f00d";
    color: #fff; }


.tooltip-inner {
  padding: 1em; }

@-webkit-keyframes opacity {
  0% {
    opacity: 0;
    -webkit-transform: scale(3);
            transform: scale(3); }
  100% {
    opacity: 1;
    -webkit-transform: scale(1);
            transform: scale(1); } }

@keyframes opacity {
  0% {
    opacity: 0;
    -webkit-transform: scale(3);
            transform: scale(3); }
  100% {
    opacity: 1;
    -webkit-transform: scale(1);
            transform: scale(1); } }

/*# sourceMappingURL=style.css.map */
</style>
  </head>

  <body  background="http://www.pixelstalk.net/wp-content/uploads/2016/07/Free-Desktop-Plain-Images.jpg">
	
	<div class="container">
		<div class="card">
		<div class="col-md-12">

			<div class="container-fliud">
				<div class="wrapper row">
					<div class="col-md-6">
						
						<div class="preview-pic tab-content">
						  <div class="tab-pane active" id="pic-1"><img src="https://upload.wikimedia.org/wikipedia/commons/a/aa/Dutch_Boy_1912.png" /></div>
						  
						</div>
						
						
					</div>
					<div class="col-md-6">
						<h2 class="product-title">Amazing paint</h2>
						<div class="rating">
							<div class="stars">
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star"></span>
								<span class="fa fa-star"></span>
							</div>
							<span class="review-no">41 reviews</span>
						</div>
						<h3>DESCRIPTION ABOUT PRODUCR</h3>
						<p class="product-description">In Decorative paints, Asian Paints is present in all the four segments v.i.z Interior Wall Finishes, Exterior Wall Finishes, Enamels and Wood Finishes.  It also offers Water proofing,  wall coverings and adhesives in its product portfolio.</p>
						<h4 class="price">current price: <span>RS.580</span></h4>
						<p class="vote"><strong>91%</strong> of buyers enjoyed this product! <strong>(87 votes)</strong></p>
						<h3>SPECIFICATION</h3>
					    <h4>In the Box</h4>
						<p>1 wall paint</p>
							<table class="table">
						<h3>GENERAL</h3>
						<tr>
							<td>Brand </td>
							<td>Asian Paints </td>
						</tr>
						<tr>
							<td>Model Number</td>
							<td>TSD-RED-1L</td>
						</tr>
						<tr>
							<td>Quantity</td>
							<td>1L</td>
						</tr>
						<tr>
							<td>Brand Color</td>
							<td>Clear</td>
						</tr>
						<tr>
							<td> Color</td>
							<td>Red</td>
						</tr>
						<tr>
							<td>Type</td>
							<td>Distemper</td>
						</tr>
						<tr>
							<td>Finish</td>
							<td>Pearl</td>
						</tr>
						<tr>
							<td>Suitable For</td>
							<td>living Room</td>
						</tr>
						<tr>
							<td>Application Type</td>
							<td>Interior</td>
						</tr>
						<tr>
							<td>Washable</td></br>
							<td>Yes</td>
						</tr>
</table>

						<div class="action">
							<a href="MyCart" class="add-to-cart btn btn-default" type="button">add to cart</a>
							<button class="like btn btn-default" type="button"><span class="fa fa-heart"></span></button>
						</div>
					</div>
				</div>
				</div>
			</div>
		</div>
	</div>
  </body>
</html>
