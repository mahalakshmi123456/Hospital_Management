<%@ page import="java.sql.*" %>
	<%
	String NAMEOFCARDHOLDER=request.getParameter("n");
	String CARDNO =request.getParameter("c");
	String CARDTYPE=request.getParameter("t");
      String Month=request.getParameter("j");
	String YEAR=request.getParameter("r");
	String FEES=request.getParameter("f");
	try
	{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","manager");
		String qry="insert into booking1 values(?,?,?,?,?,?)";
		PreparedStatement pstmt=con.prepareStatement(qry);
		pstmt.setString(1,NAMEOFCARDHOLDER);
		pstmt.setString(2,CARDNO);
		pstmt.setString(3,CARDTYPE);
		pstmt.setString(4,Month);
		pstmt.setString(5,YEAR);
		pstmt.setString(6,FEES);
		int x=pstmt.executeUpate();
		out.println(x);
	}
	catch(Exception e)
	{
            out.print(e);
	}
	%>