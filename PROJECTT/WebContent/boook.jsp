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
String wid=request.getParameter("id");

String dt=request.getParameter("datee");
String time=request.getParameter("tm");
String address=request.getParameter("addre");
String landmark=request.getParameter("lm");
    try
 { 
Class.forName("com.mysql.jdbc.Driver");
Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/projectt","root","root");
PreparedStatement stmt =con.prepareStatement("insert into books values(?,?,?,?,?)");
stmt.setString(1,wid);
stmt.setString(2,dt);
stmt.setString(3,time);
stmt.setString(4,address);
stmt.setString(5,landmark);
stmt.executeUpdate();
con.close();
request.getRequestDispatcher("booked.jsp").include(request,response);

 
 
}

catch(Exception e1)
{    System.out.println(e1);
}

%>

</body>
</html>