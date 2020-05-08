<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 
</head>
<style>
.movie-container-arr {
width:100%;
}
.link-container-movie-1 {
display:flex;
justify-content: space-around;
border:1px solid green;
}
.main-2 {
display:flex;
}
.main-3 {
border-right:1px solid black;
}
</style>
<body>
<%@ include file="header.html" %>

<div class="main-2">
<div class="main-3">
      <%@ include file="searchbox.html" %>
      <form class="form" action="view_review.jsp" method="post">
      <input class="input" type="text" value="type" placeholder="SEARCH">
      <br>
      <%@page import="java.sql.*,mrs.*" %>
<%
        Connection con=ConnectionProvider.getCon();
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from movies");
	while(rs.next())
	{
%>
	<option value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option>
<%		
	}
	con.close();
%>
      <input class="input2" type="submit" value="search">
      </form>
      </div>
 <div class="movie-container-arr">
      
<%@ include file="moviehtml1/83.html" %>

<%@ include file="moviehtml1/dabang-3.html" %>


<%@ include file="moviehtml1/dolly.html" %>

<%@ include file="moviehtml1/laal-kaptaan.html" %>

<%@ include file="moviehtml1/rifleman.html" %>

<%@ include file="moviehtml1/rifleman.html" %>

<%@ include file="moviehtml1/saand.html" %>

</div>
</div>


<%@ include file="footer.html" %>

</body>
</html>