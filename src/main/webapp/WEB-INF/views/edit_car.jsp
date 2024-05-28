<%@page import="com.jspiders.springmvc.dto.CarDTO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Page</title>
<style type="text/css">
body{
      height: 650px;
	background: linear-gradient(hotpink,white,skyblue);
    }
#button {
	height: 40px;
    width: 100px;
    border: 1px solid;
    background-color: green;
    color: white;
    font-size: 20px;
    font-weight: 900;
    outline: none;
    border-radius: 10px;
    margin: 30px ;
    border: none;
    box-shadow: 0px 0px 15px white;
}

#box {
	border: 1px solid;
	height: 400px;
	width: 380px;
    margin: 100px auto;
    border-radius: 20px 0px 20px 0px;
    background-color: black;
    box-shadow: 0px 0px 10px white;
    
	
}

.input {
	height: 40px;
    width: 250px;
    border: 1px solid;
    border-radius: 10px;
    background-color: black;
    box-shadow: 0px 0px 10px red;
    margin-top: 10px;
    font-size: 15px;
    font-weight: 500;
    color: white;
    border: none;
    outline: none;
    margin-left: 10px;
    text-align: center;
}

#head {
	font-size: 30px;
    color: white;
}

.label {
	font-size: 20px;
	padding-top: 10px;
    color: white;
}
a {
	text-decoration: none;
	color: blue;
}
#message{
	color: white;
}
</style>
</head>
<body>
	<%
	CarDTO car = (CarDTO) request.getAttribute("car");
	%>
	<div id="box" align="center">
		<h3 id="head">Update Car Details</h3>
		<form action="update_car" method="post">
			<table>
				<tr>
					<td class="label">Id</td>
					<td><input class="input" type="text" name="id"
						value="<%=car.getId()%>" readonly="readonly"></td>
				</tr>
				<tr>
					<td class="label">Name</td>
					<td><input class="input" type="text" name="name"
						value="<%=car.getName()%>" required="required"></td>
				</tr>
				<tr>
					<td class="label">Brand</td>
					<td><input class="input" type="text" name="brand"
						value="<%=car.getBrand()%>" required="required"></td>
				</tr>
				<tr>
					<td class="label">Price</td>
					<td><input class="input" type="text" name="price"
						value="<%=car.getPrice()%>" required="required"></td>
				</tr>
			</table>
			<input id="button" type="submit" value="UPDATE">
		</form>
		
	</div>
	<%
	String message = (String) request.getAttribute("message");
	if (message != null) {
	%>
	<div align="center">
		<h3 id="message"><%=message%></h3>
	</div>
	<%
	}
	%>
	<div align="center">
		<h3 style="color: white;">
		Do you want to go to <a href="home">Home Page</a> ?
	</h3>
	</div>
</body>
</html>