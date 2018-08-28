package Admin.Food;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Admin.DataBase.Set_Food;

/**
 * Servlet implementation class Add_Food
 */
public class Add_Food extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Add_Food() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int foodid= Integer.parseInt(request.getParameter("foodid"));
		String foodname= request.getParameter("foodname");
		int foodprice= Integer.parseInt(request.getParameter("foodprice"));
		Set_Food.setData(foodid,foodname,foodprice);
		response.sendRedirect("admin.jsp");
	}


}
