<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>Navigation Page</title>
<style type="text/css">
* {
	padding: 0px;
	margin: 0px;
	box-sizing: border-box;
}

body {
	background-image:
		url("https://s3.amazonaws.com/the-drive-staging/message-editor/1528475120280-15-bugattichiron_d610129.jpg");
	background-position: center;
	background-attachment: fixed;
	background-repeat: no-repeat;
	background-size: cover;
}

#box {
	height: 70px;
	background-color: rgba(0,0,0,0.3);
	border: 1px solid;
	box-shadow: 0px 0px 10px white;
	display: flex;
	flex-wrap: wrap;
	justify-content: space-around;
	flex-direction: column;
}

a {
	height: 30px;
	width: 60px;
	background-color: green;
	color: white;
	margin-left: 50px;
	border-radius: 5px;
	padding: 10px;
	font-size: 20px;
	text-decoration: none;
	box-shadow: 0px 0px 10px windowtext;
}
a:hover{
	background-color: white;
	color: black;
}

nav {
	width: 600px;
	margin-top: 15px;
	margin-left: 800px;
	margin-top: 15px;
}

p {
	width: 600px;
	font-size: 20px;
	text-align: justify;
	font-family: cursive;
	font-style: italic;
	color: white;
}

h1 {
	margin-top: 150px;
	color: white;
	padding: 20px;
}

#message {
	color: white;
}
</style>
</head>

<body>
	<div id="box" align="center">
		<nav>
			<a href="add_page">ADD</a> <a href="cars">All CARS</a> <a
				href="my_cars">MY CARS</a> <a href="sign_out">SIGN OUT</a>
		</nav>
	</div>
	<div align="center">
		<h1>WELCOME TO CAR DEKHO</h1>
		<p>Car Dekho is a one stop solution for used car dealers and
			dealership business to manage and grow their used car (second hand
			cars) business. Developed by WEJA4 group of developers with a vision
			to empower every used car dealer in every part of India to benefit
			from digital India and make in India revolution.</p>
	</div>
</body>

</html>