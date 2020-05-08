<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
td{
padding:5px;
}
.input1{
width:40%;
height:10%;
font-size:20px;
text-align:center;
margin:5%;

}
</style>
<body>
<%@ include file="header.html" %>
<div class="maindiv">
<h1>fill the right details</h1>
<h2>these information are verify in future</h2>
<form class="form" action="registeradmindb.jsp" method="post">
<table cellspacing=0 style="margin-right:0px;inline-padding:20px;">
<tr style="color:green;">
<td><lable>enter full name:</lable></td>
<td><input type="text" name="admin_name" placeholder="ENTER NAME"  class="input" required="required"></td>
</tr>
<tr style="color:green;">
<td><label>enter father name:</label></td>
<td><input type="text" name="admin_fathername" placeholder="FATHER NAME"  class="input" required="required"></td>
</tr>
<tr style="color:green;">
<td><label>enter email:</label></td>
<td><input type="text" name="admin_email" placeholder="ENTER EMAIL"  class="input" required="required"></td>
</tr>
<tr style="color:green;">
<td><label>enter address:</label></td>
<td><input type="text" name="admin_address" placeholder="ENTER ADDRESS"  class="input" required="required"></td>
</tr>
<tr style="color:green;">
<td><label>enter adhar no:</label></td>
<td><input type="text" name="admin_adharnumber" placeholder="ENTER ADHAR NO."  class="input" required="required"></td>
</tr>
<tr style="color:green;">
<td><label>enter DOB:</label></td>
<td><input type="text" name="admin_dob" placeholder="dd/MM/yyyy"  class="input" required="required"></td>
</tr>
<tr style="color:green;">
<td><label>enter mobile no:</label></td>
<td><input type="text" name="admin_mobile" placeholder="ENTER MOBILE NO."  class="input" required="required"></td>
</tr>
<tr style="color:green;">
<td><label>enter password:</label></td>
<td><input type="text" name="admin_password" placeholder="ENTER password"  class="input" required="required"></td>
</tr>
</table>
<input type="submit" value="submit" class="input1">
</form>
</div>
<%@ include file="footer.html" %>
</body>
</html>
