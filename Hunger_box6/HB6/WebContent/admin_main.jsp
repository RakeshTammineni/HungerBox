<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style >

.button {
    background-color: #7E7426; /* Green */
    border: none;
    
        color:white ;
     padding: 60px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 2px 1.5px;
    cursor: pointer;
    border-radius: 6px;
    
    position: absolute;
    top: 200px;
    right: 400px;
    
}

.buttonn {
    background-color: #7E7426; /* Green */
    border: none;
    
        color:white ;
     padding: 60px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 2px 1.5px;
    cursor: pointer;
    border-radius: 6px;
    position: absolute;
    top: 200px;
    right: 900px;
    
}

.button1 {
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


#child1 {
    position: absolute;
    top: 130px;
    right: 55px;
}
.bg-img {
    background-image: url("bg5.jpg");
    min-height: 100%;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    padding: 50px;
    
}
header {
        color: #8C0649;
    padding: 10px;
    text-align: center;
        font-size: 20px;
}


</style>

<body class="bg-img">
<div id="child1">
<form action="Logout">
	 <input type="submit" value="Logout" class="button1"></input>
   </div>
  </form>


<%
response.setHeader("cache-control", "no-cache,no-store,must-revalidate");
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
		System.out.println(session.getAttribute("id"));
		response.sendRedirect("login.jsp");
	}
}
%>
<header>
<h1><i>Hunger Box</i></h1>
</header>
</div>

 <div>
  
 <form action="Admin_reduser">
<input type="submit" class="buttonn" value="User">
</form>

  </div>

  <div>
 
<form action="Admin_redfood">
<input type="submit" class="button" value="Food">
 </div>

</form>
</body>
</html>