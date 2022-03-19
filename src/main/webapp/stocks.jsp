<%@page import="goodies.connection"%>
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Stocks</title>
</head>
<style>
table{
width: 50%;
height: 50%;
}
</style>
<body>

<table border="1">
<tr>
	<td>id</td>
	<td>name</td>
	<td>nos</td>
	<td>date</td>
</tr>
<% 

try{
	connection obj=new connection();
	Connection con=obj.getConnection();
	java.sql.Date sqlDate = new java.sql.Date(new java.util.Date().getTime());
	
	String query="SELECT * FROM stocks WHERE date=?";
	PreparedStatement ps=con.prepareStatement(query);
	ps.setDate(1, sqlDate);
	ResultSet rs=ps.executeQuery();
	while(rs.next()){
		out.println("<tr><td>"+rs.getInt(1)+"</td> <td>"+rs.getString(2)+"</td><td> "+rs.getInt(3)+"</td> <td>"+rs.getDate(4)+"</td>");
	%>
	<%
	}
	con.close();
	}catch (Exception e) {
		e.printStackTrace();
	}
	%>
	
</table>

</body>
</html>