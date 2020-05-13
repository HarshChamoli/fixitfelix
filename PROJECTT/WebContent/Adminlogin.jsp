<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="style2.css">
<title>Admin login here</title>
</head>
<body>
<div id="container">
<br>
<h3> Admin Login</h3>



<form action="Validateadmin.jsp" method="post">


<label>Email</label><br>

<input type="email" name="em" required><br><br>

<label>Password</label><br>

<input type="password" name="pa" required><br><br><br><br>


<center>
<button>Login</button>
</center>
</form>



</div>

</body>
</html>