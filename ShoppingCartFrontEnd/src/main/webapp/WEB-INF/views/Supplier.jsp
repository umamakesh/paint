<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Supplier</title>
</head>
<body>
<form>
<table>
<tr>
	<td><label  for="id">SupplierId</label></td>
	<td>:</td>
	<td><input type="text" path="id" id="id" name="id"
						placeholder="supplierId"/></td>
</tr>
<tr>
	<td><label  for="name">SupplierName</label></td>
	<td>:</td>
	<td><input type="text" path="name" id="name" name="name"
						placeholder="supplierName"/></td>
</tr>
<tr>
	<td><label path="address" for="address">SupplierAddress</label></td>
	<td>:</td>
	<td><input type="text" path="address" id="address" name="address"
						placeholder="supplierAddress"/></td>
</tr>

</table>						 
</form>
</body>
</html>