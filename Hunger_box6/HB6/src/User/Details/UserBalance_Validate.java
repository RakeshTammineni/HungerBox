package User.Details;

import java.util.ArrayList;

public class UserBalance_Validate 
{
	public static int value;
	public static int check(ArrayList<Integer> foodprice,int balance,String User)
	{
		value=0;
		int sum=0;
		for(int i=0;i<foodprice.size();i++)
		{
			int temp=0;
			temp=foodprice.get(i);
			sum=sum+temp;
		}
		if(sum<=balance)
		{
			balance=balance-sum;
			 value=1;
		}
		else
		{
			value=2;
		}
		Update_UserBalance.m1(balance, User);
		return value;
		
	}
}
