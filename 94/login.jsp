<%@ page import="java.sql.*" %>
	<%
	String Email=request.getParameter("email");
	String password=request.getParameter("pwd");
	try
	{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","manager");
		String qry="insert into loginform values(?,?)";
		PreparedStatement pstmt=con.prepareStatement(qry);
		pstmt.setString(1,Email);
		pstmt.setString(2,password);
	      response.sendRedirect("hos1.html");
	}
	catch(Exception e)
	{
            out.print(e);
	}
	%>