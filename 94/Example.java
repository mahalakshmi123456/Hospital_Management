import java.sql.*;
import java.util.*;
class Example
{
	public static void main(String args[])
	{
		try
		{		
			Class.forName("oracle.jdbc.driver.OracleDriver");  
			System.out.println("loaded");
			Connection con =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","manager");
			System.out.println("connection established");
            }
		catch(Exception e)
		{
			System.out.println(e);
		}
	}
}