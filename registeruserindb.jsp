<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page  import="java.sql.*,mrs.*" %>
<%
try
{
  String name=request.getParameter("name");
  String mobile=request.getParameter("mobile");
  String email=request.getParameter("email");
  String pass=request.getParameter("password");
  String dob=request.getParameter("dob");
  Connection con=ConnectionProvider.getCon();
  PreparedStatement pst=con.prepareStatement("insert into users values(?,?,?,?,?)");
  pst.setString(1,name);
  pst.setString(2,mobile);
  pst.setString(3,email);
  pst.setString(4,pass);
  pst.setString(5,dob);
  pst.executeUpdate();
  con.close();
  response.sendRedirect("login.jsp?msg=You have registered successfully"); 
}
catch(Exception e)
{
response.sendRedirect("login.jsp?msg=email and password are not exist");

}
%>
</body>
</html>