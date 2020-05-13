<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Plumbers</title>

<style>
button{
background-color: #4CAF50; 
  border: none;
  color: white;
  padding: 5px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  }
table, th, td {
  border: 3px solid black;
}
table {
  width: 90%;
  
}
td{
height: 40px;
}
tr:nth-child(even)
 {
 background-color: #e6f5ff;
 }
th {
  height: 50px;
  background-color: #4CAF50;
  color: white;
}
th,td{
padding: 10px;
  text-align: left;
  }
  tr:hover {
  background-color: #b3d1ff;
  }
</style>
<title>Services</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<meta name="keywords" content="Fast Service a Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">


<link href="css/fontawesome-all.min.css" rel="stylesheet" type="text/css" media="all">
<link href="css/easy-responsive-tabs.css" rel='stylesheet' type='text/css'/>
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="all">
<link rel="stylesheet" type="text/css" href="css/style_common.css" />
<link rel="stylesheet" type="text/css" href="css/style1.css" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
<link href="//fonts.googleapis.com/css?family=Roboto:400,500,700,900" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,600,700,800" rel="stylesheet">
</head>
<body>
<br>
<h1>&nbsp;Plumbers for you...</h1><hr style="height:1px; background-color:#333;"><br>
 <center><table border="3"><tr><th>Name</th><th>Worker Id</th><th>Phone Number</th><th>Home Address</th><th>Type</th><th>Experience(Year)</th><th>Book</th></tr>
<% 
 
try
{ 
Class.forName("com.mysql.jdbc.Driver");
Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/projectt","root","root");
Statement stmt =con.createStatement();
ResultSet rs=stmt.executeQuery("select * from addlabor where workertype='plumber'");

while (rs.next())
{
	%>
	<tr>
	<td> <%=rs.getString(1) %></td>
	<td> <%=rs.getString(2) %></td>
	<td> <%=rs.getString(3) %></td>
	<td> <%=rs.getString(4) %></td>
	<td> <%=rs.getString(5) %></td>
	<td> <%=rs.getString(6) %></td>
	<td><button onclick="location.href='book.jsp';">Book</button></td>
	</tr>

<% 
}

}
catch (Exception e)
{}
%>
</table></center>
<br><br><br><br><br><br>
<section class="footer">
<div class="container">
<h3>Fix-It Felix</h3>
    

</div>
<div class="copyright">
			<p>© 2019 Fix-It Felix. All Rights Reserved </p>
			
		</div>
	</div>
</section>
<!-- Footer 	
<footer class="footer" style = "width: 100%;position:absolute; text-align:center; background-color: #000; bottom: 0;">
<div class="container" style="padding-top:15px;padding-bottom:7px" >
	<h3 style="color: white;">Fix-It Felix</h3>
    

</div>
<div class="copyright" style="padding-top:7px;padding-bottom:15px">
			<p>© 2019 Fix-It Felix. All Rights Reserved </p>
			
</div>

</footer>-->
</body>
</html>