<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>welcome to Peinto</title>
</head>
<body>
<c:if test="${empty successadmin}">

<jsp:include page="header.jsp"></jsp:include>
 
</c:if>
<c:if test="${carousel}">
		<jsp:include page="Carousel.jsp" />
	</c:if>
	${successlogin}
	<c:if test="${not empty successlogin}">
		<jsp:include page="Carousel.jsp" />
		</c:if>
<c:if test="${ not empty successadmin}">

<jsp:include page="Admin.jsp"></jsp:include>
 
</c:if> 
<hr>



<c:if test="${userClickedLogin}">

<jsp:include page="login.jsp"></jsp:include>
</c:if>

<c:if test="${userClickedRegister}">

<jsp:include page="register.jsp"></jsp:include>
</c:if>
<c:if test="${userClickedregister}">

<jsp:include page="register.jsp"></jsp:include>
</c:if>

<jsp:include page="Carousel.jsp"></jsp:include>

<c:if test="${userClickedAboutUs}">

<jsp:include page="AboutUs.jsp"></jsp:include>
</c:if>
<c:if test="${userClickedContactUs}">

<jsp:include page="contactus.jsp"></jsp:include>
</c:if>
<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>
