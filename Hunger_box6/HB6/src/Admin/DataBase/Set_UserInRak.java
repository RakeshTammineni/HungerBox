package Admin.DataBase;

import java.sql.DriverManager;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

public class Set_UserInRak 
{
	public static void setData1(int id,String ename,String pass)
	{
		
		try{  
			Class.forName("com.mysql.jdbc.Driver");  //driver registration
			Connection con=(Connection) DriverManager.getConnection(  
			"jdbc:mysql://localhost:3306/rakesh","root","");//this are used to establish connection to the database,so never fiddle with this  
			PreparedStatement pr=(PreparedStatement) con.prepareStatement("Insert into rak values(?,?,?)");//helps in creating a statement 
			pr.setString(1, ename);
			pr.setString(2, pass);
			pr.setInt(3, id);
			
			int rs=pr.executeUpdate();  //helps to write a query as the statement is allowed
			
			con.close();  //to close the connection
			}catch(Exception e){ System.out.println(e);}


	}
}
