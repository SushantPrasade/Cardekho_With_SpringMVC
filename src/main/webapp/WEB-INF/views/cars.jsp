<%@page import="com.jspiders.springmvc.dto.CarDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Cars Page</title>
<style type="text/css">
body {
	height: 650px;
	background: linear-gradient(hotpink,white,skyblue);
}

.head {
	width: 150px;
	font-size: 25px;
	padding: 10px;
	font-weight: bold;
	font-size: 25px;
	border: 1px solid;
	color: white;
	border: none;
	box-shadow: 0px 0px 10px red;
}

.data {
	width: 150px;
	font-size: 20px;
	padding: 10px;
	border: 1px solid;
	color: white;
	border: none;
	box-shadow: 0px 0px 10px red;
}

#table {
	background-color: rgba(0,0,0,0.3);
	margin-top: 100px;
	border: 3px solid;
	box-shadow: 0px 0px 10px white;
	border: none;
}

a {
	text-decoration: none;
	color: blue;
}

#box {
	height: 80px;
	width: 480px;
	border: 1px solid;
	display: flex;
	flex-wrap: wrap;
	align-content: center;
	flex-direction: column;
	justify-content: space-around;
	margin: 100px auto;
	border: none;
}

input {
	height: 30px;
	width: 150px;
	border: 1px solid;
	border-radius: 20px;
	background-color: black;
	color : white;
	box-shadow: 0px 0px 10px white;
	margin-left: 10px;
	text-align: center;
}

#button {
	color: white;
	outline: none;
	border: none;
	background-color: green;
}

#message {
	color: white;
}
</style>
</head>
<body>
	<div id="box">
		<form action="search" method="post">
			<table>
				<tr>
					<td colspan="3"
						style="text-align: center; font-size: 25px; color: white; padding: 10px;"><label
						for="">Filter Cars By Price</label></td>
				</tr>
				<tr>
					<td><input type="text" name="low" required="required"
						placeholder="Enter Lower Price"></td>
					<td><input type="text" name="high" required="required"
						placeholder="Enter higher Price"></td>
					<td><input id="button" type="submit" value="SEARCH"></td>
				</tr>
			</table>

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
	@SuppressWarnings("unchecked")
	List<CarDTO> cars = (List<CarDTO>) request.getAttribute("cars");
	if (cars != null) {
	%>
	<div align="center">
		<table id="table">
			<tr>
				<td class="head">Id</td>
				<td class="head">Name</td>
				<td class="head">Brand</td>
				<td class="head">Price</td>
			</tr>
			<%
			for (CarDTO car : cars) {
			%>
			<tr>
				<td class="data"><%=car.getId()%></td>
				<td class="data"><%=car.getName()%></td>
				<td class="data"><%=car.getBrand()%></td>
				<td class="data"><%=car.getPrice()%></td>
			</tr>
			<%
			}
			%>
		</table>
	</div>
	<%
	}
	%>
	<div align="center">
		<h3 style="color: black;">
		Do you want to go to <a href="home">Home Page</a> ?
	</h3>
	</div>
</body>
</html>