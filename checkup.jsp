<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.*,mrs.*" %>
<%
        String u=request.getParameter("user");
        String p=request.getParameter("pass");

    	Connection con=ConnectionProvider.getCon();
        PreparedStatement ps=con.prepareStatement("select * from users where email=? and pass=?");
        ps.setString(1,u);
        ps.setString(2,p);
        ResultSet rs=ps.executeQuery();
        if(rs.next())
        {
        	session.setAttribute("users",u);
        	response.sendRedirect("registeruser.jsp?msg=login successfully");
        }
        else
        {
        	response.sendRedirect("login.jsp?msg=Invalid Username or Password!   please try again");
        }
        con.close();
    
%>
</body>
</html>