package Admin.DataBase;

import java.sql.DriverManager;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

public class Set_UserData 
{
	public static void setData(int id,String ename,int mobile,String email_id,String eid,String pass,int amt)
	{
		
		try{  
			Class.forName("com.mysql.jdbc.Driver");  //driver registration
			Connection con=(Connection) DriverManager.getConnection(  
			"jdbc:mysql://localhost:3306/rakesh","root","");//this are used to establish connection to the database,so never fiddle with this  
			PreparedStatement pr=(PreparedStatement) con.prepareStatement("Insert into user_table values(?,?,?,?,?,?,?)");//helps in creating a statement 
			pr.setInt(1, id);
			pr.setString(2, ename);
			pr.setInt(3, mobile);
			pr.setString(4, email_id);
			pr.setString(5, eid);
			pr.setString(6, pass);
			pr.setInt(7, amt);
			int rs=pr.executeUpdate();  //helps to write a query as the statement is allowed
			
			
			con.close();  //to close the connection
			}catch(Exception e){ System.out.println(e);}

	}
}
