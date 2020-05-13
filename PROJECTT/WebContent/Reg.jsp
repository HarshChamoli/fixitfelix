<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert  here</title>
</head>
<body>
<%
String firstname=request.getParameter("fname");
String lastname=request.getParameter("lname");
String email=request.getParameter("emaill");
String password=request.getParameter("passw");
String phonenumber=request.getParameter("pnumber");
String address=request.getParameter("addr");

try
{ 
Class.forName("com.mysql.jdbc.Driver");
Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/projectt","root","root");
PreparedStatement stmt =con.prepareStatement("insert into projectregister values(?,?,?,?,?,?)");
stmt.setString(1,firstname);
stmt.setString(2,lastname);
stmt.setString(3,email);
stmt.setString(4,password);
stmt.setString(5,phonenumber);
stmt.setString(6,address);
stmt.executeUpdate();
con.close();
request.getRequestDispatcher("RegisterSuccess.jsp").forward(request,response);
}
catch(Exception e1)
{   
	System.out.println(e1);
}
%>

</body>
</html>