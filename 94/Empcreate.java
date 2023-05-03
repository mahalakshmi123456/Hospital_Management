


import java.sql.*;
import java.util.*;
class Empcreate
{
	public static void main(String args[])
	{
		try
		{		
			Class.forName("oracle.jdbc.driver.OracleDriver");  
			System.out.println("loaded");
			Connection con =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","manager");
			System.out.println("connection established");
			Statement st=con.createStatement();
			Scanner s =new Scanner(System.in);
			boolean res=true;


			st.executeUpdate("create table personreg(ID int auto_increment,FIRSTNAME varchar(20),MIDDLENAME varchar(20),LASTNAME varchar(20),MOBILE varchar(10),EMAIL varchar(60),PASSWORD varchar(20),PRIMARY KEY(EMAIL))");
			//ResultSet rs=st.executeQuery("insert into employee values(241,'she',50000)");


			//System.out.println("enter employee name: ");
			//String nm=s.next();
			ResultSet rs1=st.executeQuery("select * from personreg");
			while(rs1.next())
			{
				//if(nm.equals(rs1.getString("NAME")))
				//{
					System.out.println(rs1.getInt("ID")+" "+rs1.getString("EMAIL")+" "+rs1.getInt("PASSWORD"));
					//res=false;
					//break;
				//}
			}
			/*if(res)
			{
				System.out.println("user not found");
			}*/
			con.close();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		
	}
}
