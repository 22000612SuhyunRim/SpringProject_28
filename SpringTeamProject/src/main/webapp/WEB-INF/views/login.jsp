<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
<style>
	body {
		background-color: lightblue;
	}
	img {
		border-radius: 10px;
		border: 2px solid white;
	}
	img, label {
		display:inline-block;
	}
	label{
		width: 130px;
	}
	form {
		font-size: 15px;
	}
	button{
		background-color: lightblue;
		color: white;
		font-size: 20px
	}
</style>
</head>
<body>
<div style='width:100%;text-align:center;padding-top:100px'>
<img src='../img/coffee.jpg' height="400">
<form method="post" action="loginOk">
<br>
<div><label>User ID: </label><input type='text' name='userid' /></div>
<div><label>Password: </label>
	<input type='password' name='password' />
</div>
<br>
<button type='submit'>login</button>
</form>
</div>
</body>
</html>