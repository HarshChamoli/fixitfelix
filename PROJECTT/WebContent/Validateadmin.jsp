<%@ page language="java" import="java.sql.*"
contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String email=request.getParameter("em");
String pass=request.getParameter("pa");
if(email.equals("admin@gmail.com")&& pass.equals("123456789"))
{
	
	response.sendRedirect("Addlabor.jsp");
}
else
{
	 request.getRequestDispatcher("error.jsp").forward(request,response); 
}
%>

</body>
</html>