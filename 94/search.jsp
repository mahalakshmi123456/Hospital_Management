<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%


String userid = "system";
String password = "manager";
String name=request.getParameter("sname");
try {
Class.forName("oracle.jdbc.driver.OracleDriver");
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            body{
                background: linear-gradient(135deg,#edecea,#83b738);
            }
            table{
                background: #edecea;
            }
        </style>
    </head>

<body>
<center>
<h1>Search Data</h1>
<table border="1">
<tr>
<td>Name</td>
<td>Email Id</td>
<td>Phone number</td>

</tr>
<%
try{
connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
statement=connection.createStatement();
String sql ="select user_name,email,phone from register where user_name='"+name+"' ";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString(1) %></td>
<td><%=resultSet.getString(2) %></td>
<td><%=resultSet.getString(3) %></td>
</tr>

<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</center>
</body>
</html>