package Admin.valid;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Admin.DataBase.CheckData;
import Admin.compare.Validate;
import User.Details.Updated_Balance;

/**
 * Servlet implementation class Login
 */
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String username=null;
		String password=null;
		
		username=request.getParameter("uname");
		password=request.getParameter("pass");
				CheckData.m1();
				int id1=Validate.valid(username,password);
				int id2=id1;
				
				if(id1==1)
				{
					HttpSession session =request.getSession();
					session.setAttribute("id",id2);
					response.sendRedirect("admin_main.jsp");
				}
				else if(id1==2)
				{
					HttpSession session =request.getSession();
					session.setAttribute("id",id2);
					Updated_Balance.userBalance(username);
					response.sendRedirect("user_main.jsp");
					
				}
				else
				{	
				HttpSession session =request.getSession();
				session.setAttribute("id",id2);
					
					response.sendRedirect("login.jsp");
				}
	}

}
