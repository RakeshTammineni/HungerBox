<%@page import="Admin.DataBase.GetFood"%>
<%@page import="User.Details.UserBalance_Validate"%>
<%@page import="User.Details.Updated_Balance"%>
<%@page import="User.Food.Food_Details"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User</title>
</head>
<script type="text/javascript">
console.log("sfdfsda");
</script>


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

<body  class="bg-img" >

<div class="container">
<header>
<h1><i>Today's Menu</i></h1>
</header>

<form action="Logout">

   <div id="child1">

    <input type="submit" value="Logout"
            class="button"></input>
   </div>
  </form>

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
		if(session.getAttribute("id").equals(1))
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

   Food_Details.main();

   while(i<Food_Details.fooddetails.size())
   {
			if(Food_Details.fooddetails.get(i) instanceof Integer)
			{    
				out.println("<td>" + Food_Details.fooddetails.get(i) + "</td>");
				out.print("<tr>"+"</tr>");

                 i++;

          }

            else if(Food_Details.fooddetails.get(i) instanceof String)

          {

                 out.println("<td>" + Food_Details.fooddetails.get(i) + "</td>");

                        i++;         

           } 

         

          }

   out.println("</table>");

    

   %>

	
</div>

	
</article>
    </section>



<form action="Collect_FoodDetails" >
                <div class="child3">
      <ul>
      <b>Food Items &nbsp; </b>
   <select name="Update">
	<option value=" "></option> 
<%
for(int j=0;j<Food_Details.fooddetails.size();j++)
{ if(j%2==0){
%>
			
		 <option value=<%=Food_Details.fooddetails.get(j)%>><%=Food_Details.fooddetails.get(j)%></option>
		 <%}} %>
		 </select>
    	 	
                      <input type="submit" class="button button4" value="Submit">
      </ul>
    </div>

<%
int val=UserBalance_Validate.value;
if(val==2)
{
	 %>
     <font color="red">Insufficient balance!</font>
     <%
     }
else if(val==1)
{
	out.println("Order placed "+"& your remaining balance is "+Updated_Balance.balance);
}
%>
</div>
</body>
</html>