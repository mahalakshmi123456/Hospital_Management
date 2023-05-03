<%@ page import="java.sql.*" %>
	<%
	String PATIENTNAME=request.getParameter("n");
	String DOCTOR=request.getParameter("d");
	String DATEE=request.getParameter("e");
      String FEES=request.getParameter("f");
	String CONTACTNO=request.getParameter("c");
	String ADDRESS=request.getParameter("a");
	String DESCRIPTION=request.getParameter("h");
	try
	{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","manager");
		String qry="insert into booking1 values(?,?,?,?,?,?,?)";
		PreparedStatement pstmt=con.prepareStatement(qry);
		pstmt.setString(1,PATIENTNAME);
		pstmt.setString(2,DOCTOR);
		pstmt.setString(3,DATEE);
		pstmt.setString(4,FEES);
		pstmt.setString(5,CONTACTNO);
		pstmt.setString(6,ADDRESS);
		pstmt.setString(7,DESCRIPTION);
		response.sendRedirect("hos3.html");
	}
	catch(Exception e)
	{
            out.print(e);
	}
	%>