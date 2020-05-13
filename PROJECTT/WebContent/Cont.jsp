<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String name=request.getParameter("namee");

String email=request.getParameter("emailll");
String message=request.getParameter("messa");


    try
 { 
Class.forName("com.mysql.jdbc.Driver");
Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/projectt","root","root");
PreparedStatement stmt =con.prepareStatement("insert into contactt values(?,?,?)");
stmt.setString(1,name);
stmt.setString(2,email);
stmt.setString(3,message);

stmt.executeUpdate();
con.close();
request.getRequestDispatcher("message.jsp").include(request,response);

 
 
}

catch(Exception e1)
{    System.out.println(e1);
}

%>
</body>
</html>