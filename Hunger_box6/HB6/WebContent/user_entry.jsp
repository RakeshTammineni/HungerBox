<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
#child1
 {
  position: absolute;
  top: 70px;
  right: 55px;
}
#child3{

    position: center;

    right:50px;
    top:120;
    width: auto;

    margin-right: 150px;

}
.button {
    background-color: #7E7426; /* Green */
    border: none;
    
        color:white ;
     padding: 6px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 2px 1.5px;
    cursor: pointer;
    border-radius: 6px;
    
}

.b5 {border-radius: 50%;}

.bg-img {
    background-image: url("bg5.jpg");

    min-height: 100%;
    /* Center and scale the image nicely */
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}
 header {

    text-align: center;
    font-size: 20px;
    color: #8C0649;
}
  

</style>
<body  class="bg-img" >
<div class="container">
 <header>
<h1><i>Register user here</i></h1>
</header>
<%
response.setHeader("cache-control", "no-cache,no-store,must-revalidate");
if(session.getAttribute("id")==null)
{
	response.sendRedirect("login.jsp");
}
else
{
	if(session.getAttribute("id").equals(1)||session.getAttribute("id").equals(2))
	{
		if(session.getAttribute("id").equals(2))
		{
			response.sendRedirect("login.jsp");
		}
	}
	else
	{
		System.out.println(session.getAttribute("id"));
		response.sendRedirect("login.jsp");
	}
}
%>
<form action="Add_UserDetails">
    <div class="child3">
      <ul>
 
    <b>Employee name<l>&nbsp</l> </b><input type="text"  name="ename" required></br></br>
    <b>Mobile no <l>&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp</l> </b> <input type="text" name="mobile_no" required></br></br>
    <b>Emailid  <l>&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp</l>  </b> <input type="text"  name="email_id" required></br></br>
    <b>Employee id 	<l>  &nbsp &nbsp &nbsp&nbsp </l>  </b> <input type="text" name="eid" required></br></br>
    <b>Password  <l>&nbsp&nbsp &nbsp &nbsp &nbsp &nbsp</l>     </b> <input type="password"  name="pass" required></br></br>
    <b>Balance    <l>  &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp&nbsp</l>   </b> <input type="text" name="amt" required></br></br>
   
    <input type="submit" class="button button4" value="ADD">
</ul>
  </form>
  
 
</div>
</body>
</html>