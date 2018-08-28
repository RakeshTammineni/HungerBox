<%@page import="Admin.DataBase.Get_UserDB"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
/*for heading*/
header {
    text-align: center;
    font-size: 20px;
    color: #8C0649;

  }


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
.bg-img {
    background-image: url("bg5.jpg");

    min-height: 100%;

    /* Center and scale the image nicely */
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}
</style>
<style>

/*for heading*/
body
 {

    font-family: Arial, Helvetica, sans-serif;

}



/*for logout button*/
#child1
 {
  position: absolute;
  top: 70px;
  right: 55px;
}

/*to position delete option*/
#child2
{

    position: absolute;

    right:55px;

    bottom:25px;

    font-size: 18px;

}

/*for table position*/
#child3{

    position: absolute;

    right:50px;
    top:178px;
    width: auto;

    

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

</style>


<body class="bg-img">

<form action="home">
<input type="submit" class="button" value="home">
</form>

<header>
  <h1><i>User Registration</i></h1>
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
		//System.out.println(session.getAttribute("id"));
		response.sendRedirect("login.jsp");
	}
}
%>

<%

int coloumn=Get_UserDB.coloumn_count;
out.println("<table>");

out.println("<th><b><i>" + "User Name" + "</i></b></th>");
out.println("<th><b><i>" + "Mobile no" + "</i></b></th>");
out.println("<th><b><i>" + "Email-id" + "</i></b></th>");
out.println("<th><b><i>" + "Emp-id" + "</i></b></th>");
//out.println("<td><b>" + "Password" + "</b></td>");
out.println("<th><b><i>" + "Balance" + "</i></b></th>");

out.print("<tr>"+"</tr>");
int count=1;
//System.out.println(Get_UserDB.userdetails.size());
for(int i=0;i<Get_UserDB.userdetails.size();i++)
{	
	if(count%coloumn==0)
	{
		
		out.print("<tr>"+"</tr>");
		out.println("<td>"+Get_UserDB.userdetails.get(i)+"</td>");
		count++;
	}
	else
	{
		out.println("<td>"+Get_UserDB.userdetails.get(i)+"</td>");	
	}
	count++;
}
out.println("</table>"); 

%>

<form action="Add_User">
       <input type="submit" class="button" class="pos" value="Add User"></input>
</form>
<p>


</p>
<form action="Delete_UserDetails">
<input type="submit" class="button " value="DELETE">
      
     <select name="UsernameDelete">
     <option value=" "></option>>
 <%
 int count1=0;
 
 for(int i=0;i<Get_UserDB.userdetails.size();i++)
{
	if(i%5==0)
	{%>
		 <option value=<%=Get_UserDB.userdetails.get(i)%>><%=Get_UserDB.userdetails.get(i)%></option>
		 <%}} %>
		 </select>

</form>
 
<div id="child1">
<form action="Logout">
	 <input type="submit" value="Logout" class="button"></input>
   </div>
  </form>

</body>
</html>