<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>peinto</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
body {
	background-image: url("http://www.pixelstalk.net/wp-content/uploads/2016/07/Free-Desktop-Plain-Images.jpg");
	background-size:100%;
}
</style>
</head>
<body>
<%@ include file="/views/header.jsp" %>
${username}
${successlogin}

 <%@ include file="/views/Carousel.jsp" %>
 <br>
 <%@ include file="/views/video.jsp" %><br>
 <%@ include file="/views/thumbnail.jsp" %><br>
 <%@ include file="/views/footer.jsp" %><br>
 </body>
</html>