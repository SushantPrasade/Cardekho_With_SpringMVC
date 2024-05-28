<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Page</title>
<style type="text/css">
body {
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
	margin: 50px;
	border: none;
	box-shadow: 0px 0px 15px white;
}

#box {
	border: 1px solid;
	height: 400px;
	width: 380px;
	margin: 100px auto;
	border-radius: 20px 0px 20px 0px;
	background-image: linear-gradient(135deg, orangered 50%, cyan 50%);
	box-shadow: 0px 0px 10px white;
}

.input {
	background-color:rgba(0,0,0,0.3);
	outline: none;
	border: 1px solid;
	color: white;
	font-size: 20px;
	padding: 10px;
	border : none;
	width: 250px;
	margin-top: 10px;
	border-radius: 20px;
	box-shadow: 0px 0px 10px red;
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

#message {
	font-size: 25px;
	color: black;
}
a{
	text-decoration: none;
	color: blue;
}
#message{
	color: white;
}
</style>
</head>
<body>
	<div id="box" align="center">
		<h3 id="head">Add Car Details</h3>
		<form action="add_car" method="post">
			<table>
				<tr>
					<td class="label">Name</td>
					<td><input class="input" type="text" name="name"
						required="required" autofocus="autofocus"></td>
				</tr>
				<tr>
					<td class="label">Brand</td>
					<td><input class="input" type="text" name="brand"
						required="required"></td>

				</tr>
				<tr>
					<td class="label">Price</td>
					<td><input class="input" type="text" name="price"
						required="required"></td>
				</tr>
			</table>
			
			<input id="button" type="submit" value="ADD">
			
		</form>
		<h3 style="color: white;">
				Do you want to go to <a href="home">Home Page</a> ?
			</h3>
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
</body>
</html>