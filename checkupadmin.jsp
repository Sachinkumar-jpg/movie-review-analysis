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
        String a=request.getParameter("admin_email");
        String p=request.getParameter("admin_password");

    	Connection con=ConnectionProvider.getCon();
        PreparedStatement ps=con.prepareStatement("select * from admin where admin_email=? and admin_password=?");
        ps.setString(1,a);
        ps.setString(2,p);
        ResultSet rs=ps.executeQuery();
        if(rs.next())
        {
        	session.setAttribute("users",a);
        	response.sendRedirect("index.jsp?msg=login successfully");
        }
        else
        {
        	response.sendRedirect("admin.jsp?msg=Invalid email or Password!   please try again");
        }
        con.close();
    
%>
</body>
</html>