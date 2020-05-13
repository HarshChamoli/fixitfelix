<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="style4.css">

<title>Register here</title>
</head>
<body>
<div id="container">
<br>
<h3>Register Here</h3>



<form action="Reg.jsp" method="post">

<label>First Name<label><br>

<input type="text" name="fname" style="text-transform:capitalize;"id="in" ><br><br>

<label>Last Name</label><br>
<input type="text" name="lname" style="text-transform:capitalize;" id="in"><br><br>

<label>Email</label><br>

<input type="email" name="emaill" id="in" required><br><br>

<label>Password</label><br>

<input type="password" name="passw" id="in" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required><br><br>

<label>Phone Number</label><br>

<input type="text" maxlength="10" name="pnumber" id="in" pattern="[1-9]{1}[0-9]{9}" required><br><br>

<label>Address</label><br>

<input type="textarea" name="addr" id="in"><br><br>
<center>
<button>Register</button>
</center>
</form>



</div>

</body>
</html>