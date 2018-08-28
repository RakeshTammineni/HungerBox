package Admin.DataBase;

import java.sql.DriverManager;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

public class Delete_FoodDB 
{
	public static void delete(String delete)
	{
	try{  
		Class.forName("com.mysql.jdbc.Driver");  //driver registration
		Connection con=(Connection) DriverManager.getConnection(  
		"jdbc:mysql://localhost:3306/rakesh","root","");//this are used to establish connection to the database,so never fiddle with this  
		PreparedStatement pr=(PreparedStatement) con.prepareStatement("Delete from food_list where food_name=?");//helps in creating a statement 
		pr.setString(1, delete);
		
		int rs=pr.executeUpdate();  //helps to write a query as the statement is allowed
		
		
		
		
		
		con.close();  //to close the connection
		}catch(Exception e){ System.out.println(e);}
	}
}
