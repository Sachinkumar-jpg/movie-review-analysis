<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
.form1{
text-align:center;

  width: 100%;
  height: 500px;
  
}
.main{
width:100%;
height:100%;
background-color: grey;
background-image: url('image/photo1.jfif');
}
.input{
width:40%;
height:9%;
font-size:20px;
}
.button{
 width:20%;
height:9%;
font-size:20px;
}
.submit{
width:10%;
height:9%;
font-size:20px;
}
.form1 a:visited{
    color:green;
}
.form1 a:hover{
    color:greenyellow;

}
.form1 a:active{
    color:hotpink;
}

</style>
<body>
 <%@ include file="header.html" %>
 <div>
 <% 
String msg=request.getParameter("msg");
if(msg!=null)
	out.println(msg);
%>
 <div class="main">
  <form class="form1" action="checkup.jsp"  method="post">
        <h1 style="color:green;">hello...! WELCOME</h1>
       <input class="input" type="text" name="user" required="required" placeholder="enter email"><br><br>
       <input class="input" type="password" name="pass" required="required" placeholder="enter password"><br><br>
       <input class="submit" type="submit" value="login" style="background-color:green"><br>
       <a href="#">forget password</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <a href="registeruser.jsp">new Register</a>
  </form>
  </div>
  </div>
  &nbsp;
 <%@ include file="footer.html" %>
</body>
</html>