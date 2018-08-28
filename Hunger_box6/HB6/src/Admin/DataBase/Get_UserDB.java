package Admin.DataBase;

import java.sql.DriverManager;
import java.util.ArrayList;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.ResultSet;

public class Get_UserDB 
{
	public static int coloumn_count=6;
	public static ArrayList userdetails =new ArrayList();
	public static void user()
	{
		userdetails.clear();
		try{  
			Class.forName("com.mysql.jdbc.Driver");  //driver registration
			Connection con=(Connection) DriverManager.getConnection(  
			"jdbc:mysql://localhost:3306/rakesh","root","");//this are used to establish connection to the database,so never fiddle with this  
			
			PreparedStatement stmt=(PreparedStatement) con.prepareStatement("select * from user_table where id=2");//helps in creating a statement  
			ResultSet rs=(ResultSet) stmt.executeQuery();  //helps to write a query as the statement is allowed
			
			while(rs.next()) 
			{
				//userdetails.add(rs.getInt("id"));
				userdetails.add(rs.getString("username"));
				userdetails.add(rs.getString("user_mobile"));
				userdetails.add(rs.getString("user_mail"));
				userdetails.add(rs.getString("emp_id"));
				//userdetails.add(rs.getString("password"));
				userdetails.add(rs.getInt("balance"));
				
		   }
			
			
			
			
			con.close();  //to close the connection
			}catch(Exception e){ System.out.println(e);}
		
	}
}
