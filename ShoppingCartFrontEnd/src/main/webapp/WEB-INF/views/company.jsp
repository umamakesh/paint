<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<link rel="stylesheet" href="http://cdn.bootcss.com/animate.css/3.5.1/animate.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<style>
/*Now the styles*/
* {
    margin: 0; 
	padding: 0;
}
body {
	background: #ccc; 
	font-family: arial, verdana, tahoma;
}

/*Time to apply widths for accordian to work
Width of image = 640px
total images = 5
so width of hovered image = 640px
width of un-hovered image = 40px - you can set this to anything
so total container width = 640 + 40*4 = 800px;
default width = 800/5 = 160px;
*/

.accordian {
	width: 805px; height: 320px;
	overflow: hidden;
	
	/*Time for some styling*/
	margin: 100px auto;
	box-shadow: 0 0 10px 1px rgba(0, 0, 0, 0.35);
	-webkit-box-shadow: 0 0 10px 1px rgba(0, 0, 0, 0.35);
	-moz-box-shadow: 0 0 10px 1px rgba(0, 0, 0, 0.35);
}

/*A small hack to prevent flickering on some browsers*/
.accordian ul {
	width: 2000px;
	/*This will give ample space to the last item to move
	instead of falling down/flickering during hovers.*/
}

.accordian li {
	position: relative;
	display: block;
	width: 160px;
	float: left;
	
	border-left: 1px solid #888;
	
	box-shadow: 0 0 25px 10px rgba(0, 0, 0, 0.5);
	-webkit-box-shadow: 0 0 25px 10px rgba(0, 0, 0, 0.5);
	-moz-box-shadow: 0 0 25px 10px rgba(0, 0, 0, 0.5);
	
	/*Transitions to give animation effect*/
	transition: all 0.5s;
	-webkit-transition: all 0.5s;
	-moz-transition: all 0.5s;
	/*If you hover on the images now you should be able to 
	see the basic accordian*/
}

/*Reduce with of un-hovered elements*/
.accordian ul:hover li {width: 40px;}
/*Lets apply hover effects now*/
/*The LI hover style should override the UL hover style*/
.accordian ul li:hover {width: 640px;}


.accordian li img {
	display: block;
}

/*Image title styles*/
.image_title {
	background: rgba(0, 0, 0, 0.5);
	position: absolute;
	left: 0; bottom: 0;	
width: 640px;	

}
.image_title a {
	display: block;
	color: #fff;
	text-decoration: none;
	padding: 20px;
	font-size: 16px;
}
</style>
<body>
<div class="accordian">
    <ul>
		<li>
			<div class="image_title">
				<a href="#">KungFu Panda</a>
			</div>
			<a href="#">
				<img src="C:\Users\Intel\Pictures\Screenshots\02.jpg"/>
			</a>
		</li>
		<li>
			<div class="image_title">
				<a href="#">Toy Story 2</a>
			</div>
			<a href="#">
				<img src="C:\Users\Intel\Pictures\Screenshots\0.jpg"/>
			</a>
		</li>
		<li>
			<div class="image_title">
				<a href="#">Wall-E</a>
			</div>
			<a href="#">
				<img src="C:\Users\Intel\Pictures\Screenshots\101.jpg"/>
			</a>
		</li>
		<li>
			<div class="image_title">
				<a href="#">Up</a>
			</div>
			<a href="#">
				<img src="C:\Users\Intel\Pictures\Screenshots\100.jpg"/>
			</a>
		</li>
		<li>
			<div class="image_title">
				<a href="#">Cars 2</a>
			</div>
			<a href="#">
				<img src="C:\Users\Intel\Pictures\Screenshots\103.jpg"/>
			</a>
		</li>
	</ul>
</div>
</body>
</html>