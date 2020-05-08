<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script>
function myFunction(){
	var x=document.getElementById("myInput");
	if(x.type === "password"){
		x.type="text";
	}else{
		x.type="password";
	}
}
</script>
</head> 
<style>
.maindiv {
text-align:center;
background-color:lightgray;
width:100%;
height:80%;
}
.form{
width:100%;
height:100%;
pading:0px;
margin:0px;
text-align:left;
padding-left:10%;
padding-right:10%;
}
.input{
width:100%;
height:10%;
font-size:24px;
text-align:center;
}
td {
 padding:5px;
}
.input1{
width:40%;
height:10%;
font-size:20px;
text-align:center;
padding:10%;

}
.container-flex-box {
display:flex;
justify-content:space-around;
width:100%;
hieght:10%;
}
</style>
<body>
<%@ include file="header.html" %>
<label>
<% 
String msg=request.getParameter("msg");
if(msg!=null)
	out.println(msg);
%>
</label>
<div>
<div class="maindiv">
<h1 style="color:green;">signup in Movie Review Analyser</h1>
<form class="form" action="registeruserindb.jsp" method="post">
<table cellspacing=0 style="margin-right:0px" style="inline-padding:20px;">
 <tr class="tr1">
 <td><label style="color:green;">Name:</label></td>
 <td><input type="text" name="name" placeholder="name" class="input" required="required"></td>
 </tr>
 <tr>
 <td><label style="color:green;">Mobile no:</label></td>
 <td><input type="number" name="mobile" placeholder="mobile" class="input" required="required"></td>
 </tr>
<tr class="tr1">
<td><label style="color:green;">Email id:</label></td>
<td><input type="text" name="email" placeholder="email" class="input" required="required"></td>
</tr>
<tr class="tr1">
<td><label style="color:green;">Password:</label></td>
<td><input type="password" name="password" placeholder="password" class="input" id="myInput" required="required"></td>
<td><input type="checkbox" onclick="myFunction()">show</td>
</tr>
<tr class="tr1">
<td><label style="color:green;">Dob:</label></td>
<td><input type="date" name="dob" placeholder="dd/mm/yyyy" class="input" required="required"></td>
</tr>
</table><br>
<div class="container-flex-box">
<input type="submit" value="submit" class="input">

<input type="reset" value="reset" class="input">
</div>
</form>
</div>
</div>
<br>
<%@ include file="footer.html" %>
</body>
</html>