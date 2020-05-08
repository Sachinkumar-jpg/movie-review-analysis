<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>

.container-1{
padding-left:20%;
padding-right:20%;
padding-down:10%;
width:100%;
height:100;

}
.container-2{
display:flex;
}
.container-2_div1{
display:flex;
justify-content: space-around;
margin-left:100px;
margin-right:100px;
margin-top:20px;
margin-bottom:20px;
width:100%;
height:100px;
}
.container-2_div1 div{
display:flex;

}
.container-2_div1 div img{
width:100px;
height:97px;

</style>
<body>
<div>
<%@ include file="header.html" %>
</div>

<div class="container-1">
<h1 style="text-align:center;">About us</h1>
<p>Hi! we are software dovloper.we are develop a web site. name of this web site
 is movie review system.this work as give movie review by public and detect which 
 gives wrong rating.<br>this web site work very efficiently.</p>
</div>
<div class="container-2">
<div class="container-2_div1">
<div>
<img src="image/sachin1.jpg"> 
<div>
<p style="margin:4px">name:- Sachin Kumar</p>
</div>
</div>

</div>

<div class="container-2_div1">
<div>
<img src="image/sachin1.jpg"> 
<div>
<p style="margin:4px">name:- Sachin Kumar</p>
</div>
</div>

</div>

</div>

<%@ include file="footer.html" %>

</body>
</html>