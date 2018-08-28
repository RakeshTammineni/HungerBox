package User.Details;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.Session;

import Admin.compare.Validate;

/**
 * Servlet implementation class Collect_FoodDetails
 */
public class Collect_FoodDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Collect_FoodDetails() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String food_name=request.getParameter("Update");
		String user=Validate.get();
		int balance=Get_Balance.m1(user);
		
		ArrayList<Integer> foodprice=Food_Price.display(food_name);
		UserBalance_Validate.check(foodprice,balance,user);
		Updated_Balance.userBalance(user);
		response.sendRedirect("user_main.jsp");
			
	}


}
