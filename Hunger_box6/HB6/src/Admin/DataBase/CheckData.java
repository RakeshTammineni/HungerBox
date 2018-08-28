package Admin.DataBase;

import java.sql.DriverManager;
import java.util.ArrayList;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.ResultSet;
import com.mysql.jdbc.Statement;

public class CheckData
{
	
	public static ArrayList<String> Username=new ArrayList<String>();
	public static ArrayList<String> Password=new ArrayList<String>();
	public static ArrayList<Integer> Id=new ArrayList<Integer>();
	// TODO Auto-generated method stu  
	public static void m1()
	{  
		Username.clear();
		Password.clear();
		Id.clear();
		try{  
		Class.forName("com.mysql.jdbc.Driver");  //driver registration
		Connection con= (Connection) DriverManager.getConnection(  
		"jdbc:mysql://localhost:3306/rakesh","root","");//this are used to establish connection to the database,so never fiddle with this  
		//here sonoo is database name, root is user name and password  
		
	/*	for (String object: foodlist) {
		    System.out.println(object);
		}
		Username.forEach(a->out.println(a\t\t));*/
		
		
		Statement stmt=(Statement) con.createStatement();//helps in creating a statement  
		ResultSet rs=(ResultSet) stmt.executeQuery("select * from rak");  //helps to write a query as the statement is allowed			
		while(rs.next()) 
		{
			Username.add(rs.getString("UserName"));
			Password.add(rs.getString("Password"));
			Id.add(rs.getInt("id"));
		}
		
		con.close();  //to close the connection
		}catch(Exception e){ System.out.println(e);}
	  
		}

}
