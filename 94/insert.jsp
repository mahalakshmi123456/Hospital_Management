<%@ page import="java.sql.*" %>
	<%
	String Name=request.getParameter("sname");
	String password=request.getParameter("pwd");
	String email=request.getParameter("email");
	try
	{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","manager");
		String qry="insert into registerform1 values(?,?,?)";
		PreparedStatement pstmt=con.prepareStatement(qry);
		pstmt.setString(1,Name);
		pstmt.setString(2,password);
		pstmt.setString(3,email);
		int sts=pstmt.executeUpdate();
		out.println(sts+ "row inserted successfully");
	}
	catch(Exception e)
	{
            out.print(e);
	}
	%>