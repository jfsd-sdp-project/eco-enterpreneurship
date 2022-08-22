<!DOCTYPE html>
<html>
<head>
	<title>Home</title>
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
	<style>
*{
	margin: 0;
	padding: 0;
	font-family: Century Gothic;
}

header{
	background-image:linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5)), url(https://wallpapercave.com/wp/wp2561067.jpg);
	height: 100vh;
	background-size: cover;
	background-position: center;
}
ul{
	float: right;
	list-style-type: none;
	margin-top: 25px;
}
ul li{
	display: inline-block;
}
ul li a{
	text-decoration: none;
	color: #fff;
	padding: 5px 20px;
	border: 1px solid transparent;
	transition: 0.6s ease;
}
ul li a:hover{
	background-color: #fff;
	color: #000;
}
ul li.active a{
	background-color: #fff;
	color: #000;
}
.logo img{
	float: left;
	width: 150px;
	height: auto;
}
.main{
	maxwidth: 1200px;
	margin: auto;
}
.title{
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%,-50%);
}

.title h1{
	color: #fff;
	font-size:  70px;
}
.button{
	position: absolute;
	top: 62%;
	left: 50%;
	transform: translate(-50%,-50%);
}
.btn{
	border: 1px solid #fff;
	padding: 10px 30px;
	color: #fff;
	text-decoration: none;
	transition: 0.6s ease;
}
.btn:hover{
	background-color: #fff;
	color: #000;

}

</style>
</head>
<body>
	<header>
		<div class="main">
			
			<ul>
				<li><a href="/">Home</a></li>
				<li><a href="/about">About</a></li>
				<li><a href="/services">Services</a></li>
				<li><a href="/login">Login</a></li>
				<li><a href="/register">Register</a></li>
<li><a href="contact.html">Contact</a></li>
			</ul>
		</div>
		<div class="title">
			<h1>LOGIN AS</h1>
		</div>
		<div class="button">
			<a href="/login" class="btn">USER</a>
			<a href="/expertlogin" class="btn">EXPERT</a>
<a href="businesslogin" class="btn">BUSINESS CLASS</a>
		</div>
	</header>

</body>
</html>