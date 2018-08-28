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

    position: absolute;

    right:50px;
    top:178px;
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

.button4 {border-radius: 12px;}
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
<body class="bg-img">
<%
response.setHeader("cache-control", "no-cache,no-store,must-revalidate");//http 1.1 to stop back button
response.setHeader("pragma", "no-cache");//http 1.0 to stop back button
%> 
<%
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
		//System.out.println(session.getAttribute("id"));
		response.sendRedirect("login.jsp");
	}
}
%> 
<header>
<h1><i>Add Food Here</i></h1>
</header>

 <form action="Add_Food">
 	<b> Food Id </b><l>&nbsp &nbsp &nbsp &nbsp</l><input type="text"  name="foodid" required></br></br>
 	 <b>Food Name </b><l>&nbsp </l><input type="text"  name="foodname" required></br></br>
	 <b> Food Price </b><l>&nbsp &nbsp</l><input type="text"  name="foodprice" required></br></br>
 	<input type="submit" class="button" value="Add Food">
 </form>

</body>
</html>