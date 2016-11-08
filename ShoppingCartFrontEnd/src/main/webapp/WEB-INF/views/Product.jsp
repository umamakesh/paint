<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product</title>
<style>
body {
	background-image: url("/resources/login.jpg");
	background-repeat: no-repeat;
	background-size: 600px;
}

div.product {
	text-align: center;
	border: 0px;
	margin-top: 100px;
	margin-left: 500px;
	margin-right: 500px;
	margin-bottom: 110px;
	padding: 20px;
}
</style>
</head>
<body>

<div class="product">
		<h1>product</h1>
		<form>
			<table style="margin: 40px;">
				<tr>
					<td><label for="productId">ProductId</label></td>
					<td>:</td>
					<td><input type="text" placeholder="productId" name="productId"></td>
				</tr>
				<tr>
					<td><label for="name">ProductName</label></td>
					<td>:</td>
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<td><label for="price">ProductPrice</label></td>
					<td>:</td>
					<td><input type="text" name="price"></td>
				</tr>
				<tr>
					<td><label for="categoryid">CategoryId</label></td>
					<td>:</td>
					<td><input type="text" name="categoryid"></td>
				</tr>
				<tr>
					<td><label for="supplierid">SupplierId</label></td>
					<td>:</td>
					<td><input type="text" name="supplierid"></td>
				</tr>
			</table>
			<a href="#"> <input type="submit" value="save"></a>
			 <a href="#"> <input type="button" value="delete"></a>
		</form>
	</div>


</body>
</html>