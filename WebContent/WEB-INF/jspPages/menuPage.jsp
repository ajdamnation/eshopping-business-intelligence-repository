<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="resources/css/view.css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<title>E-Shopping System</title>
</head>
<body>
 <div class="content">
		<div id="top">
			<div class="topright">
			 	by Leah D. Maranan			
			</div>
		</div>
		<div id="header">
			<div class="headings">
				<h1>Shop-Online</h1>
				<h2>we bring shopping into your home</h2>
			</div>
		</div>
			<div id="menu">
			  	<ul>
					<li><a href="#">Home</a></li>
					<li><a href="#">About Us</a></li>
					<li><a href="#">Contact Us</a></li>
      			</ul>
			</div>	
		<div id="main">
			<div class="right">
				<div class="nav">
				<h2>About Us</h2>
				<div class="text">
			Hi, My name is Leah Maranan and this is my final project in j2ee. This is a dummy online shopping system that uses j2ee with spring framework.
				</div>
				<h2>Products</h2>
					<ul>
						<li>Iphone</li>
						<li>Samsung</li>
						<li>Sony</li>
						<li>Nokia</li>
						
					</ul>
				</div>
			</div>
			
			<div class="left">
				<h2><font color="blue">${admin}</font> <font color="red">${guest}</font></h2>
				<font color="red">${errormessage}</font> <font color="red">${message}</font>
				<font color="blue">${customer}</font>
				<form:form method="GET" action="/Eshopping/transactions">
				<tr>
					<td colspan="4"><c:choose>
							<c:when test="${admin eq 'admin'}">
								<input type="hidden" value="admin" name="admin" class="login login-submit" />
								<input value="Add Product" name="addProduct" type="submit" class="login login-submit" />
								<input value="View Products" name="viewAllProductAdmin" type="submit" class="login login-submit" />
								<input value="Log Out" name="logOut" type="submit" class="login login-submit" />
							</c:when>
							<c:when test="${not empty guest}">
								<input type="hidden" value="guest" name="guest" class="login login-submit" />
								<input value="View Products" name="viewAllProduct" type="submit" class="login login-submit" />
								<input value="Log Out" name="logOut" type="submit" class="login login-submit" />
							</c:when>
							<c:when test="${empty guest && 'admin' != admin}">
								<input type="hidden" value="${admin}" name="customer" class="login login-submit" />
								<input value="View Products" name="viewAllProductCustomer" type="submit" class="login login-submit" />
								<input value="Log Out" name="logOut" type="submit" class="login login-submit" />
							</c:when>
						</c:choose></td>
				</tr>
			</form:form>
			<table>
			<tbody>
			<tr>
			<td></td>
			<td>Product Brand</td>
			<td>Product Description</td>
			<td>Quantity</td>
			<td>Product Cost</td>
		</tr>

			<c:forEach var="product" items="${productlistOwn}">
				<tr>
					<td><c:out value='${product.productid}'></c:out></td>
					<td><c:out value='${product.productbrand}'></c:out></td>
					<td><c:out value='${product.productname}'></c:out></td>
					<td><c:out value='${product.quantity}'></c:out></td>
					<td><c:out value='${product.productprice}'></c:out></td>
				</tr>
			</c:forEach>
		</tbody>
		</table>

			</div>
			
		</div>
		
		<div id="footer">
			<div class="info">
				&copy; Shop-Online 2015<br />
				by leah maranan
			</div>
		</div>
	</div>
</body>
</html>