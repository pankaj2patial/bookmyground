<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
	  rs = stmt.executeQuery("select * from players");
	  %>
	<center>
<font color = "dark green" size = "5"> Show All Players </font>
</center>
	<table border = "1"width = "80%" height = 50%>
	<tr>
	<td><b>Team Name</b></td>
	<td><b>Players1</b></td>
	<td><b>Players2 </b></td>
	<td><b>Players3</b></td>
	<td><b>Players4</b></td>
	<td><b>Players5</b></td>
	<td><b>Players6</b></td>
	<td><b>Players7 </b></td>
	<td><b>Players8</b></td>
	<td><b>Players9</b></td>
	<td><b>Players10</b></td>
	<td><b>Players11</b></td>
	<td><b>Players12 </b></td>
	<td><b>Players13</b></td>
	<td><b>Players14</b></td>
	<td><b>Players15</b></td>
	</tr>
	<%
	while(rs.next())
	{
		%>
		<tr>
		<td>
			<a href="cricket11.jsp?t1=<%=rs.getString(1) %>"><%out.print(rs.getString(1));%></a></td>
		<td><%out.print(rs.getString(2));%></td>
		<td><%out.print(rs.getString(3));%></td>
		<td><%out.print(rs.getString(4));%></td>
		<td><%out.print(rs.getString(5));%></td>
		<td><%out.print(rs.getString(6));%></td>
		<td><%out.print(rs.getString(7));%></td>
		<td><%out.print(rs.getString(8));%></td>
		<td><%out.print(rs.getString(9));%></td>
		<td><%out.print(rs.getString(10));%></td>
		<td><%out.print(rs.getString(11));%></td>
		<td><%out.print(rs.getString(12));%></td>
		<td><%out.print(rs.getString(13));%></td>
		<td><%out.print(rs.getString(14));%></td>
		<td><%out.print(rs.getString(15));%></td>
		<td><%out.print(rs.getString(16));%></td>
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