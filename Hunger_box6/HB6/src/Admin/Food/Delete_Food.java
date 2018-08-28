package Admin.Food;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Admin.DataBase.Delete_FoodDB;

/**
 * Servlet implementation class Delete_Food
 */
public class Delete_Food extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Delete_Food() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String delete=request.getParameter("foodDelete");
		Delete_FoodDB.delete(delete);
		
		response.sendRedirect("admin.jsp");
	}

}
