package Admin.DataBase;

import java.sql.DriverManager;
import java.util.ArrayList;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.ResultSet;

public class GetFood 
{
	
		public static ArrayList ar=new ArrayList();
		public static ArrayList display(int foodid)
		{
			ar.clear();
		try{  
			Class.forName("com.mysql.jdbc.Driver");  //driver registration
			Connection con=(Connection) DriverManager.getConnection(  
			"jdbc:mysql://localhost:3306/rakesh","root","");//this are used to establish connection to the database,so never fiddle with this  
			//here sonoo is database name, root is user name and password  
			int i=0;
			//dynamic checking
			PreparedStatement pr=(PreparedStatement) con.prepareStatement("select * from food_list where food_id=?");
			pr.setInt(1, foodid);
			
			ResultSet rs=(ResultSet) pr.executeQuery();
			while(rs.next())
			{
				
				ar.add(rs.getString("food_name"));
				ar.add(rs.getInt("food_price"));
			}
		con.close();  //to close the connection
		}catch(Exception e){ System.out.println(e);}
		return ar;
	}
}
