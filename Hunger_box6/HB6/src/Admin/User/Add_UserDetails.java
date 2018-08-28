package Admin.User;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Admin.DataBase.Get_UserDB;
import Admin.DataBase.Set_UserData;
import Admin.DataBase.Set_UserInRak;

/**
 * Servlet implementation class Add_UserDetails
 */
public class Add_UserDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Add_UserDetails() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		int id=2;
		String ename=request.getParameter("ename");
		int mobile_no=Integer.parseInt(request.getParameter("mobile_no"));
	//	System.out.println(mobile_no);
		String email_id=request.getParameter("email_id");
		String eid=request.getParameter("eid");
		String pass=request.getParameter("pass");
		int amt=Integer.parseInt(request.getParameter("amt"));
		Set_UserData.setData(id, ename, mobile_no, email_id, eid, pass,amt);
		Set_UserInRak.setData1(id, ename, pass);
		Get_UserDB.user();
		response.sendRedirect("user_sub.jsp");
	}

	

}
