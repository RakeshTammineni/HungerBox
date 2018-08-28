package User.Details;

import java.sql.DriverManager;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

public class Update_UserBalance 
{
	public static void m1(int balance,String username)
	{
	try{  
		Class.forName("com.mysql.jdbc.Driver");  //driver registration
		Connection con=(Connection) DriverManager.getConnection(  
		"jdbc:mysql://localhost:3306/rakesh","root","");//this are used to establish connection to the database,so never fiddle with this  
		//here sonoo is database name, root is user name and password  
		//dynamic checking
		PreparedStatement pr=(PreparedStatement) con.prepareStatement("update user_table set balance=? where username=?");
		pr.setInt(1, balance);
		pr.setString(2, username);
		
		int rs=pr.executeUpdate();
	con.close();  //to close the connection
}catch(Exception e){ System.out.println(e);}
}
}
