<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="style3.css">

<style>
#sss{
border-radius: 15px;
width:280px;
height:30px;
margin-left:110px;
font-size: 3vh;
}

a{
color: red;
padding-left: 1280px;
padding-top:10px;
display:block;
font-sixe:20px;

}
</style>
<title>Add worker here</title>
</head>
<body>
        <a href="logout.jsp">Logout</a>
      
<!--  <button id="btn">Logout</button>-->
<div id="container">
<br>
<h3>Add Workers </h3>



<form action="Addla.jsp" method="post">

<label> Name<label><br>

<input type="text" style="text-transform:capitalize;" name="na"><br><br>

<label> Worker Id<label><br>

<input type="text" name="workid" min="1" required><br><br>

<label>Phone Number</label><br>

<input type="tel" maxlength="10" pattern="[1-9]{1}[0-9]{9}" name="pno"required><br><br>

<label>Home Address</label><br>

<input type="textarea" name="addre"><br><br>

<label>Worker Type</label><br>

<select name="wtype" id="sss" required>
<option>Carpenter</option>
<option>Plumber</option>
<option>Electrician</option>
<option>Painter</option>
<option>Welder</option>
</select><br><br>

<label>Experience</label><br>

<input type="number" min="1" name="exper" required><br><br>

<center>
<button>Add</button>
</center>
</form>



</div>



</body>
</html>