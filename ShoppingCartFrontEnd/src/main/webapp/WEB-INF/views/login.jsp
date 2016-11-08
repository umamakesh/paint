<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >
<head>
<style>
@import url(http://fonts.googleapis.com/css?family=Tenor+Sans);
html {
  background-color: lightblue;
  font-family: "Tenor Sans", sans-serif;
}

.container {
  width: 500px;
  height: 400px;
  margin: 0 auto;
}

.login {
  margin-top: 50px;
  width: 450px;
}

.login-heading {
  font: 1.8em/48px "Tenor Sans", sans-serif;
  color: white;
}

.input-txt {
  width: 100%;
  padding: 20px 10px;
  background: #5D92BA;
  border: none;
  font-size: 1em;
  color: white;
  border-bottom: 1px dotted rgba(250, 250, 250, 0.4);
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
  -moz-transition: background-color 0.5s ease-in-out;
  -o-transition: background-color 0.5s ease-in-out;
  -webkit-transition: background-color 0.5s ease-in-out;
  transition: background-color 0.5s ease-in-out;
}
.input-txt:-moz-placeholder {
  color: #81aac9;
}
.input-txt:-ms-input-placeholder {
  color: #81aac9;
}
.input-txt::-webkit-input-placeholder {
  color: #81aac9;
}
.input-txt:focus {
  background-color: #4478a0;
}

.login-footer {
  margin: 10px 0;
  overlow: hidden;
  float: left;
  width: 100%;
}

.btn {
  padding: 15px 30px;
  border: none;
  background: white;
  color: #5D92BA;
}

.btn--right {
  float: right;
}

.icon {
  display: inline-block;
}

.icon--min {
  font-size: .9em;
}

.lnk {
  font-size: .8em;
  line-height: 3em;
  color: white;
  text-decoration: none;
}
@import "compass/css3";

@import url(http://fonts.googleapis.com/css?family=Tenor+Sans);

@mixin placeholder($color: $placeholder-text) {
  &:-moz-placeholder {
    color: $color;
  }
  &:-ms-input-placeholder {
    color: $color;
  }
  &::-webkit-input-placeholder {
    color: $color;
  }
}

$blue: #5D92BA;
$heading-font: 'Tenor Sans', sans-serif;


html{
  background-color: $blue;
  font-family: $heading-font
}
.container{
  width: 500px;
  height: 400px;
  margin: 0 auto;
}
.login{
  margin-top: 50px;
  width: 450px;
}
.login-heading{
  font: 1.8em/48px $heading-font;
  color: white;
}

.input-txt{
  width: 100%;
  padding: 20px 10px;
  background: $blue;
  border: none;
  font-size: 1em;
  color: white;
  border-bottom: 1px dotted rgba(250, 250, 250, .4);
  @include box-sizing(border-box);
  @include placeholder(lighten($blue, 10%));
  @include transition(background-color .5s ease-in-out);
    &:focus{
     background-color: darken($blue, 10%);
    }
}
.login-footer{
  margin: 10px 0;
  overlow: hidden;
  float: left;
  width: 100%;
}
.btn{
  padding: 15px 30px;
  border: none;
  background: white;
  color: $blue;
}
.btn--right{
  float: right;
}
.icon{
  display: inline-block;
}
.icon--min{
  font-size: .9em;
}
.lnk{
  font-size: .8em;
  line-height: 3em;
  color: black;
  text-decoration: none;
}

</style>
  <meta charset="UTF-8">
  <title>Simple login form</title>
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

  
      <link rel="stylesheet" href="css/style.css">

  
</head>
<body>
 <div class="container">
  <div class="login">
  	<h1 class="login-heading">
      <strong>Welcome.</strong> Please login.</h1>
      <form action="validate" method="
      0post">
        <input type="text" name="userID" placeholder="Username" required="required" class="input-txt" />
          <input type="password" name="password" placeholder="Password" required="required" class="input-txt" />
          <div class="login-footer">
             <a href="#" class="lnk">
              <span class="icon icon--min"></span> 
              I've forgotten something
            </a>
            <button type="submit" class="btn btn--right">Sign in  </button>
    
          </div>
      </form>
  </div>
</div>
  
      <script src="js/index.js"></script>

</body>
</html>
