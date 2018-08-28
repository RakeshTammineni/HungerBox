<%@page import="Admin.compare.Validate"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link media="all" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
body, html {
    height: 100%;
    font-family: Arial, Helvetica, sans-serif;
}

* {
    box-sizing: border-box;
}

#child3{
    position: absolute;
    right:150px;
    width: auto;
    margin-right: 150px;
}
/* Add styles to the form container */
.container {
    position: absolute;
    right: 0;
    margin: 20px;
    max-width: 300px;
    padding: 16px;
    background-color: white;
}

/* Full-width input fields */
.c1 {
    width: 100%;
    padding: 15px;
    margin: 5px 0 22px 0;
    border: none;
    background: #f1f1f1;
    position: left;
    left:0;
}

input[type=text]:focus, input[type=password]:focus {
    background-color: #ddd;
    outline: none;
}

/* Set a style for the submit button */
.btn {
    background-color: #4CAF50;
    color: white;
    padding: 16px 20px;
    border: none;
    cursor: pointer;
    width: 100%;
    opacity: 0.9;
}

.btn:hover {
    capacity: 1;
}


</style>
<body Background="1stpg.png">
<div class="container">

<%
response.setHeader("cache-control", "no-cache,no-store,must-revalidate");//http 1.1 to stop back button
response.setHeader("pragma", "no-cache");//http 1.0 to stop back button
%> 
 <%

 if(session.getAttribute("id")!=null)
 {
	 if(session.getAttribute("id").equals(1)||session.getAttribute("id").equals(2))
 	{	
 	}
	 else
	 {
		if(Validate.invaliduser==3)
	{
			 %>
		       <font color="red">User does not exist in the system.</font>
		       <%
		       }
		      
		if(Validate.invaliduser==2)
	{
			 %>
		       <font color="red">Invalid password. Try again!</font>
		       <%
		       }
		
		if(Validate.invaliduser==0)
	{
			 %>
		       <font color="red">User exist in the system..</font>
		       <%
		       }
}
 }
%> 

 <form action="Login" method="post">
 
      <h1>Login</h1>
     
   	<b>User Name</b> : <input type="text" name="uname" class="c1"><br>
   	<b>Password</b> : <input type="password" name="pass" class="c1"><br>
   	<input type="submit" value ="Login" class="btn">
   	</div>
   	<div id="ExtensionCheck_JamesEggersAwesomeExtension"></div>
 </form>

</body>
</html>
