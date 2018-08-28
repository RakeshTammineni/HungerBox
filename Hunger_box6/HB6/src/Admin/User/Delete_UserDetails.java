package Admin.User;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Admin.DataBase.DeleteUserDB;
import Admin.DataBase.Delete_UserfromAdminDB;
import Admin.DataBase.Get_UserDB;

/**
 * Servlet implementation class Delete_UserDetails
 */
public class Delete_UserDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Delete_UserDetails() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String deletedetails=request.getParameter("UsernameDelete");
		
		
		DeleteUserDB.delete(deletedetails);
		Delete_UserfromAdminDB.delete(deletedetails);
		Get_UserDB.user();
		response.sendRedirect("user_sub.jsp");
	}

	

}
