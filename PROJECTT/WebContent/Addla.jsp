<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add</title>
</head>
<body>
<%
String fname=request.getParameter("na");
String workerid=request.getParameter("workid");
String phone=request.getParameter("pno");
String address=request.getParameter("addre");
String type=request.getParameter("wtype");
String experience=request.getParameter("exper");

try
{ 
Class.forName("com.mysql.jdbc.Driver");
Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/projectt","root","root");
PreparedStatement stmt =con.prepareStatement("insert into addlabor values(?,?,?,?,?,?)");
stmt.setString(1,fname);
stmt.setString(2,workerid);
stmt.setString(3,phone);
stmt.setString(4,address);
stmt.setString(5,type);
stmt.setString(6,experience);
stmt.executeUpdate();
con.close();
request.getRequestDispatcher("Addsuccess.jsp").forward(request,response);
}
catch(Exception e1)
{   
	System.out.println(e1);
}
%>

</body>
</html>