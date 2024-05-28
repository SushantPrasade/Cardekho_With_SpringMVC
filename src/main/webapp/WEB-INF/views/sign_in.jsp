<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign In Page</title>
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

#message {
	color: white;
}

#box {
	border: 1px solid;
	height: 400px;
	width: 380px;
	margin: 100px auto;
	border-radius: 20px 0px 20px 0px;
	box-shadow: 0px 0px 10px white;
	background-image: linear-gradient(140deg, orangered 50%, cyan 50%);
}

.input {
	height: 40px;
	width: 250px;
	border: 1px solid;
	border-radius: 10px;
	background-color: rgba(0, 0, 0, 0.3);
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

#message {
	color: white;
}
</style>
</head>
<body>
	<div id="box" align="center">
		<h3 id="head">Sign In</h3>
		<form action="check_user" method="post">
			<table>
				<tr>
					<td class="label">Email</td>
					<td><input class="input" type="text" name="email"
						required="required" autofocus="autofocus"></td>
				</tr>
				<tr>
					<td class="label">Password</td>
					<td><input class="input" type="text" name="password"
						required="required"></td>
				</tr>
			</table>
			<input id="button" type="submit" value="Sign In">
		</form>
		<h3 style="color: white; margin: -10px auto;">
			New User? <a href="sign_up">Sign up</a>
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