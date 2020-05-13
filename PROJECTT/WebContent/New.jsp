<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
label{
font-family: sans-serif;
	margin-left: 40px;
	font-size: 20px;
	color: white;
	font-weight: bold;
	}
	h3{
	margin-left: 40px;
	}
	button{
	margin-left: 40px;
	}
	</style>
	
</head>
<body>
<table><tr>
<% 
 
try
{ 
Class.forName("com.mysql.jdbc.Driver");
Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/projectt","root","root");
Statement stmt =con.createStatement();
ResultSet rs=stmt.executeQuery("select * from addlabor where workertype='carpenter'");

while (rs.next())
{
	%>
	
	
	<td>
	 <div style="background-color:skyblue; width:500px;height:550px; border-radius:15px ; padding-top:15px;">
	 <label>Name</label><h3><%= rs.getString(1)%></h3>
	 <label>Id</label><h3><%= rs.getString(2)%></h3>
	 <label>Number</label><h3><%= rs.getString(3)%></h3>
	 <label>Address</label><h3><%= rs.getString(4)%></h3>
	 <label>Type</label><h3><%= rs.getString(5)%></h3>
	 <label>Experience</label><h3><%= rs.getString(6)%></h3>
	 <button>Book</button>
	 
	 </div></td>
	 
	 <% 
	 }
}

catch (Exception e)
{}

%></tr>
</table>

<!-- Footer
<footer class="footer" style = "width: 100%;position: fixed; text-align:center; background-color: #000; bottom: 0;">
<div class="container" style="padding-top:15px;padding-bottom:7px" >
	<h3 style="color: white;">Fix-It Felix</h3>
    

</div>
<div class="copyright" style="padding-top:7px;padding-bottom:15px">
			<p>© 2019 Fix-It Felix. All Rights Reserved </p>
			
</div>

</footer>
-->	

</body>
</html>