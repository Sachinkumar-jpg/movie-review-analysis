<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
.main{
    
    width: 100%;
    height: 10%;
    background-color: blue;

}
.main1{
  display:flex;
  margin-top:0px;
  width:100%;
  height:80%;
}
.main2{
    width:100%;
    height:20%;
    background-color: brown;
}
.main1 div{
    float:left;
}
.main3{
    width:20%;
    height:100%;
    background-color: lightgray;
    box-shadow: 1px 2px 10px 0px black;
    border-right:1px solid black;
}
.main4{
    width:80%;
    height:100%;
    background-color: lightgray;
}
.slid{
   width:80%;
   height:20%;
   margin-left:10%;
   margin-right:10%;
   margin-top:2%;
   margin-bottom:2%;
}
.form{
width:100%;
height:20%;
}
.input{
width:80%;
height:30px;
}
.input2{
width:30%;
height:30px;
}
</style>

<body>
    <div class="main">

<%@ include file="header.html" %>

    </div>
      <div class="main1">
      <div class="main3">
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
      <div class="main4">
      <div class="slid"><%@ include file="slider2.html" %></div>
      <div class="slid"><%@ include file="slider2.html" %></div>
      <div class="slid"><%@ include file="slider2.html" %></div>
      <div class="slid"><%@ include file="slider2.html" %></div>
      <div class="slid"><%@ include file="slider2.html" %></div>
      </div>


    </div>
    <div class="main2">
      <%@ include file="footer.html" %>

    </div>
</body>
</html>