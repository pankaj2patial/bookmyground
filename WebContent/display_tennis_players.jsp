<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="style3.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Team And Players list</title>
</head>
<body>

<img src = "frontpage.png" width = "100%" height = "1%">

<a href="tennis_zone.jsp">Home</a>
 <a href="teamregistrationtennis.jsp">Team Registration</a>
 <a href="display_tennis_players.jsp">List All Teams</a>
 <a href="display_tournament_tennis.jsp">Tournament List</a>
		
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
	  rs = stmt.executeQuery("select * from tennis_players");
	  %>
<marquee behavior = "alternate" bgcolor = #0080ff>
<font color = white size = "7">Team with Players</font> </marquee>
	<table border = "1"width = "100%" height = 50%>
	<tr>
	<td ><b>SINGLES</b></td>
	<td><b>DOUBLES 1</b></td>
	<td><b>DOUBLES 2 </b></td>
	</tr>
	<%
	while(rs.next())
	{
		%>
		
		<tr>
		<td><%out.print(rs.getString(1));%></td>
		<td><%out.print(rs.getString(2));%></td>
		<td><%out.print(rs.getString(3));%></td>
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