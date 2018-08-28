package User.Details;

import java.sql.DriverManager;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.ResultSet;

public class Updated_Balance 
{
	public static int balance;
	public static void userBalance(String username)
	{
		
		try{  
			Class.forName("com.mysql.jdbc.Driver");  //driver registration
			Connection con=(Connection) DriverManager.getConnection(  
			"jdbc:mysql://localhost:3306/rakesh","root","");//this are used to establish connection to the database,so never fiddle with this  
			
			PreparedStatement stmt=(PreparedStatement) con.prepareStatement("select balance from user_table where username=?");
			stmt.setString(1,username);  
			ResultSet rs=(ResultSet) stmt.executeQuery();  //helps to write a query as the statement is allowed
			
			while(rs.next()) 
			{
				
			 balance=rs.getInt("balance");
				
		   }
			
			
			
			
			con.close();  //to close the connection
			}catch(Exception e){ System.out.println(e);}
	
		
	}
}
