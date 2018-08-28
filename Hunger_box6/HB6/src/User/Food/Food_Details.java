package User.Food;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;

import Admin.DataBase.GetFood;

public class Food_Details 
{
	public static ArrayList fooddetails=new ArrayList();
	public static void main() 
	{

		int i;
		 DateTimeFormatter dtf = DateTimeFormatter.ofPattern("HH");
		   LocalDateTime now = LocalDateTime.now();
		   int time=Integer.parseInt(dtf.format(now));
		   if(time<12)
		   {
			  i=1;
			   
		   }
		   else
		   {
			   i=2;
			   
		   }
		   fooddetails= GetFood.display(i);
		   

	}
}
