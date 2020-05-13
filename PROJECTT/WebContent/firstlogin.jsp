<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Login </title>
<style>
.box{
background-color:#bbc0c9;
opacity=1;

}
#ss{
display: block;
 
  width: 350px;
  height:100%;
}
div{
width:340px;
height:495px;
border-radius:10px;
background-color:#bbc0c9;
border:2px solid black;
margin:1px 50%;
padding:50px;
opacity:1;
}
form input{
font-size:20px;
font-family:patua one;
padding:10px;
border-radius:10px;
margin:100 px 100px 500px 900px;
}
body{
padding:20px;
background-image:url("img3.jpg");
background-size:cover;
}
h1
{
color:black;
margin:60px;
}
h3
{
color:black;}
button{
border:1px solid black;
background-color:grey;
color:black;
font-size:patua one;
font-size:35px;
width:200px;
padding:9px;
border-radius:28px;
opacity:1;}
 button:hover{
color:white;
background-color:#0b2047;}
label{

}
</style>
</head>
<body>
<table>
<tr>
<td>
<div class="box"><img src="img7.jpg" id="ss"></div></td>
<td><div>
<br><br><br>
<center><a href="Adminlogin.jsp">Click here for admin login</a></center><br>
<img src="img6.jpg" ><br>

<form action="Validate.jsp" method="post">
Username:<br><input type="email"  name="e" placeholder="username"  required><br><br>
Password:<br><input type="password" name="p" placeholder="password" required><br><br>
<button>Login</button><br><br>
<a href="Register.jsp">Click here to register</a>
</form>
</div></td>
</tr>
</table>


</body>
</html>