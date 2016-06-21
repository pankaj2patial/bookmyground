<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="style3.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Display Tournament</title>
</head>
<body>

<img src = "frontpage.png" width = "100%" height = "1%">

<a href="hockey_zone.jsp">Home</a>
<a href="teamregistrationhockey.jsp">Team Registration</a>
<a href="display_hockey_players.jsp">List All Teams</a>
<a href="display_tournament_hockey.jsp">Tournament List</a>

<%@ page import = "java.sql.*" %>
<%
 Connection con = null;
 Statement stmt = null;
 ResultSet rs = null;

try 
{
	  Class.forName("com.mysql.jdbc.Driver");
	  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo","root","root");
	  stmt = con.createStatement();
	  
	  String HOCKEY = "HOCKEY";
	  
	  rs = stmt.executeQuery("select * from tournament where dropdown='"+HOCKEY+"'");

%>
<marquee behavior = "alternate" bgcolor = #0080ff>
<font color = white size = "7">Tournament</font> </marquee>
	<table border = "1"width = "80%" height = 50%>
  
   <tr>
	<td ><b>tournament_name</b></td>
	<td><b>dropdown</b></td>
	<td><b>team_a</b></td>
	<td><b>team_b</b></td>
	<td><b>d_ate</b></td>
	<td><b>t_ime</b></td>
	</tr>
	<% 
	while(rs.next())
	{
	%>
	
	<tr>
	    <td><%out.print(rs.getString(1));%></td>
        <td><%out.print(rs.getString(2));%></td>
		<td><%out.print(rs.getString(3));%></td>
		<td><%out.print(rs.getString(4));%></td>
		<td><%out.print(rs.getString(5));%></td>
		<td><%out.print(rs.getString(6));%></td>
		</tr>
		<%
	    }
		%>
		</table>
			<%
		
}
catch(ClassNotFoundException cnfe)
{
	out.println(cnfe);

}
catch(SQLException sqle)
{
	out.println(sqle);

}
finally{
	if(rs!=null)
		rs.close();
	if(con!=null)
		con.close();
	if(stmt!=null)
		stmt.close();
}
%>
		
</body>
</html>