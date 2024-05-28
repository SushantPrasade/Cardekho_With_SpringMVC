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
	background: linear-gradient(hotpink,White,skyblue);
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

.action {
	height: 30px;
	width: 80px;
	border: 1px solid;
	border-radius: 20px;
	border: none;
	box-shadow: 0px 0px 10px white;
	font-weight: 900;
}

#message {
	color: white;
}
</style>
</head>
<body>
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
				<td class="head" colspan="2" style="text-align: center;">Action</td>
			</tr>
			<%
			for (CarDTO car : cars) {
			%>
			<tr>
				<td class="data"><%=car.getId()%></td>
				<td class="data"><%=car.getName()%></td>
				<td class="data"><%=car.getBrand()%></td>
				<td class="data"><%=car.getPrice()%></td>
				<td class="data"
					style="text-align: center; height: 30px; width: 80px;">
					<form action="delete_car" method="post">
						<input type="text" name="id" value="<%=car.getId()%>"
							hidden="true">
						<button class="action" type="submit"
							style="background-color: green; color: white;">DELETE</button>
					</form>
				</td>
				<td class="data"
					style="text-align: center; height: 30px; width: 80px;">
					<form action="edit_car" method="post">
						<input type="text" name="id" value="<%=car.getId()%>"
							hidden="true">
						<button class="action" type="submit"
							style="background-color: royalblue; color: white;">UPDATE
						</button>
					</form>
				</td>
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