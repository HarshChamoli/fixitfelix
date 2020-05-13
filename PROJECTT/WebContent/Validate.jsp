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
String username=request.getParameter("e");
String pass=request.getParameter("p");

 try
 { 
Class.forName("com.mysql.jdbc.Driver");
Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/projectt","root","root");
PreparedStatement stmt =con.prepareStatement("select * from projectregister where Email=? and Password=?");
stmt.setString(1,username);
stmt.setString(2,pass);
ResultSet res =stmt.executeQuery();
 if(res.next())
   {
	 session=request.getSession();
	 session.setAttribute("e",username);
	 request.getRequestDispatcher("loginsuccess.jsp").forward(request,response);
	
   }
 else
 {
	 request.getRequestDispatcher("error.jsp").forward(request,response); 
 }
 }
    catch(Exception e){       
        out.println("Something went wrong !! Please try again");       
    } 
%>

</body>
</html>