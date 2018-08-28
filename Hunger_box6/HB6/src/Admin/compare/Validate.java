package Admin.compare;

import Admin.DataBase.CheckData;

public class Validate extends CheckData
{
	public static int y;
	public static  int invaliduser=3;
	private static String User_Name=null;
	
	public static int valid(String username,String password)
	{
		int id = 0;
		invaliduser=3;
		User_Name=username;
		for(int i=0;i<Username.size();i++)
		{
			if(Username.get(i).equals(username))
			{	
				invaliduser=2; 
				if(Password.get(i).equals(password))
				{
					invaliduser=0;
					id=Id.get(i);
				}
			}
		}
		return id;
	}
	public static String get()
	{
		return User_Name;
		
	}
}
