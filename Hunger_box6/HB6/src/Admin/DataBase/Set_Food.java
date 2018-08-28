package Admin.DataBase;

import java.sql.DriverManager;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

public class Set_Food 
{
	public static void setData(int foodid,String foodname,int foodprice) 
	{
		
		try{  
			Class.forName("com.mysql.jdbc.Driver");  //driver registration
			Connection con=(Connection) DriverManager.getConnection(  
			"jdbc:mysql://localhost:3306/rakesh","root","");//this are used to establish connection to the database,so never fiddle with this  
			PreparedStatement pr=(PreparedStatement) con.prepareStatement("Insert into food_list values(?,?,?)");//helps in creating a statement 
			pr.setInt(1, foodid);
			pr.setString(2, foodname);
			pr.setInt(3, foodprice);
			int rs=pr.executeUpdate();  //helps to write a query as the statement is allowed
			
			
			
			
			
			con.close();  //to close the connection
			}catch(Exception e){ System.out.println(e);}
	}
}
