package Admin.Food;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Admin.DataBase.GetFood;

/**
 * Servlet implementation class FoodType
 */
public class FoodType extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FoodType() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String s=request.getParameter("Foodtype");
		if(s.equals("breakfast"))
		{
			ArrayList ar=GetFood.display(1);
		}
		else if(s.equals("lunch"))
		{
			ArrayList ar=GetFood.display(2);
		}
		else
		{
			ArrayList ar=GetFood.display(0);
		}
		response.sendRedirect("admin.jsp");
	}

	

}
