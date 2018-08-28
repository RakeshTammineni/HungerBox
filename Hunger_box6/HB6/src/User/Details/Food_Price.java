package User.Details;

import java.sql.DriverManager;
import java.util.ArrayList;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.ResultSet;

public class Food_Price 
{
	private static ArrayList<Integer> array=new ArrayList<Integer>();
	public static ArrayList<Integer> display(String food)
	{
		array.clear();
		try{  
			Class.forName("com.mysql.jdbc.Driver");  //driver registration
			Connection con=(Connection) DriverManager.getConnection(  
			"jdbc:mysql://localhost:3306/rakesh","root","");//this are used to establish connection to the database,so never fiddle with this  
			PreparedStatement pr=(PreparedStatement) con.prepareStatement("select * from food_list where food_name=?");
			pr.setString(1,food);
			
			ResultSet rs=(ResultSet) pr.executeQuery();
			while(rs.next())
			{
				array.add(rs.getInt("food_price"));
			}
		con.close();  //to close the connection
	}catch(Exception e){ System.out.println(e);}
	return array;
}

}
