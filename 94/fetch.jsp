<%@page import="java.sql.*"%>
<%
try{
 Class.forName("oracle.jdbc.driver.OracleDriver");
 Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","manager");
String sql="select * from registerform1";
PreparedStatement stmt=con.prepareStatement(sql);  
ResultSet rs=stmt.executeQuery();  
%>
<html>
<body bgcolor="pink">
<center>
<h1>Welcome</h1>
<h1>Welcome to patient Details</h1>
<table border="5" bgcolor="white">
<tr>


<th colspan="6" align="center">PATIENT DETAILS</th></tr>

<tr>
<td>Name</td>
<td>Password</td>
<td>Email</td>
<%
while(rs.next())
{
%>
<tr>
<td><%=rs.getString(1)%></td>
<td><%=rs.getString(2)%></td>
<td><%=rs.getString(3)%></td>
</tr>
<%
}
%>
</table>
<br>
<br>
<% }
catch(Exception e)
{
 out.println(e.toString());
}
%>