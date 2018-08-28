<%@page import="Admin.DataBase.GetFood"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
* {
    box-sizing: border-box;
}

body {
    font-family: Arial, Helvetica, sans-serif;
}

/* Style the header */
header {
    padding: 40px;
    text-align: center;
    font-size: 20px;
    color: #8C0649;
}

/* Create two columns/boxes that floats next to each other */
nav {
    float: left;
    width: 30%;
    height: 300px; /* only for demonstration, should be removed */
   
    padding: 20px;
}

/* Style the list inside the menu */
nav ul {
    list-style-type: none;
    padding: 0;
}

article {
     float: left;
   
    width: 70%;
    height: 300px; /* only for demonstration, should be removed */
}

/* Clear floats after the columns */
section:after {
    content: "";
    display: table;
    clear: both;
}
#child1 {
    position: absolute;
    top: 70px;
    right: 55px;
}
#child2{
    position: absolute;
    right:55px;
    bottom:50px;
    font-size: 18px;
}
#child3{
    position: absolute;
    right:400px;
    width:auto;
    margin-right: 150px;
    
}

footer
{
    padding: 00px;
    text-align: right;
    color: white;
}

.pos
{
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
#pos1
{
   position: absolute;
  bottom: 50px;
  right:00px;

}
.bg-img {
    background-image: url("bg5.jpg");

    min-height: 100%;
    /* Center and scale the image nicely */
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}
@media (max-width: 600px) {
       nav, article {
        width: 100%;
        height: auto;
    }
    }
}

</style>

<style>

table, th, td
 {
  
/*   font-size: 17.8px; */
  border: 3px solid black;
  border-collapse: collapse;
  /* border-color:#1F3906; */
  border-width: 5px;
  text-align: center;
 /*  background-color: #DAD2B4; */
  margin-left: 460px;
 */
 
 margin:0 0 400px 1000px;
    border: 4px solid black;
    border-collapse: collapse;
    width: 300px;
     
  text-align: center
 }

td 
{
    padding: 5px;
    text-align: center;
    color:  #000000;
}

th 
{   padding: 5px;
     color:#8C0649; 
    text-align: center;
  }

.buttons {
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
    position: absolute;
    top: 210px;
    right: 400px;
    
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
    top:250px;
 
    
}
.buttonss {
   
   
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 2px 1.5px;
    cursor: pointer;
    border-radius: 6px;
    position: absolute;
    top: 210px;
    right: 300px;
    
}

 #mybutton1 {
  position: absolute;
   bottom:375px;
  right: 950px; 
}
 */</style>

<body class="bg-img">
<form action="home">
<input type="submit" class="button" value="home">
</form>



<div class="container">
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
		//System.out.println(session.getAttribute("id"));
		response.sendRedirect("login.jsp");
	}
}
%>
 
<div id="child1">
<form action="Logout">
	 <input type="submit" value="Logout" class="button "></input>
   </div>
  </form>

 <%
GetFood gf=new GetFood();
   %>
 <header> 
  <h1><i>Food Details</i></h1>
  </header>
  <div id="mybutton1">
	<form action="Add_FoodPage">
	   <input type="submit"  class="button " value="Add Food">
     </form>
     </div>
     <form action="FoodType">
    <p>
    <b>Food Id</b>
    <select name="Foodtype">
    <option value=""></option>
	<option value="breakfast">breakfast</option>
	<option value="lunch">lunch</option>
    </select>
    <input type="submit"  class="button" value="Fetch">
    </form> 
 &nbsp &nbsp &nbsp &nbsp
 
<form action="Delete_Food">
	  <select name="foodDelete" class="buttonss">
	  <option value=" " class="buttonss"></option>
 <%

 for(int j=0;j<gf.ar.size();j++)
{ if(j%2==0){%>
		 <option value=<%=gf.ar.get(j)%> class="buttons" ><%=gf.ar.get(j)%></option>
		 <%}} %>
		 </select>
    	 	<input type="submit" value="Delete Food"class="buttons">
</form>
<section>
 
	  <article>
    <div id="child3">
    
  
   <div style="overflow-x:auto;">
   <% 
     out.println("<table>");
     out.println("<td><b>" + "Food Items" +"</td>");
     out.println("<td><b>" + "Price" + "</td>");
     out.print("<tr>"+"</tr>");
    int i=0;
	 while(i<gf.ar.size())
		{
		 if(gf.ar.get(i) instanceof Integer)
		 {	
			
			out.println("<td>" + gf.ar.get(i) + "</td>");
			out.print("<tr>"+"</tr>");
			i++;
		 }
		  else if(gf.ar.get(i) instanceof String)
		 {
			 out.println("<td>" + gf.ar.get(i) + "</td>");
				i++; 		
		 }  
		
		}
	out.println("</table>"); 

	%>
</div>

	
</article>
    </section>
	<!-- <footer>
	<div id="pos1">
   <form action="Add_User">
       <input type="submit" class="pos" value="Add User">
	</form>
	</div> 
	
</footer> -->

</body>
</html>