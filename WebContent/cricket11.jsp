<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.sql.*" %>
<%
  Connection con = null;
  Statement stmt = null;
  ResultSet rs = null;
  String t1=request.getParameter("t1");
  try 
  {
	  Class.forName("com.mysql.jdbc.Driver");
	  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo","root","root");
	  stmt = con.createStatement();
	  out.print(t1);
	  rs = stmt.executeQuery("select * from players where team_name='"+t1+"'");
	  rs.next();
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
	</tr>

	<tr>
		<td>
		<% out.print(rs.getString(1)); %>
		</td>
		
		<%
		
		if(rs.getString(17).equalsIgnoreCase("1"))
		{	out.print("<td>"+rs.getString(2)+"</td>");	}
		if(rs.getString(18).equalsIgnoreCase("1"))
		{	out.print("<td>"+rs.getString(3)+"</td>");	}
		if(rs.getString(19).equalsIgnoreCase("1"))
		{	out.print("<td>"+rs.getString(4)+"</td>");	}
		if(rs.getString(20).equalsIgnoreCase("1"))
		{	out.print("<td>"+rs.getString(5)+"</td>");	}
		if(rs.getString(21).equalsIgnoreCase("1"))
		{	out.print("<td>"+rs.getString(6)+"</td>");}
		if(rs.getString(22).equalsIgnoreCase("1"))
		{out.print("<td>"+rs.getString(7)+"</td>");}
		if(rs.getString(23).equalsIgnoreCase("1"))
		{out.print("<td>"+rs.getString(8)+"</td>");}
		if(rs.getString(24).equalsIgnoreCase("1"))
		{out.print("<td>"+rs.getString(9)+"</td>");}
		if(rs.getString(25).equalsIgnoreCase("1"))
		{out.print("<td>"+rs.getString(10)+"</td>");}
		if(rs.getString(26).equalsIgnoreCase("1"))
		{out.print("<td>"+rs.getString(11)+"</td>");}
		if(rs.getString(27).equalsIgnoreCase("1"))
		{out.print("<td>"+rs.getString(12)+"</td>");}
		if(rs.getString(28).equalsIgnoreCase("1"))
		{out.print("<td>"+rs.getString(13)+"</td>");}
		if(rs.getString(29).equalsIgnoreCase("1"))
		{out.print("<td>"+rs.getString(14)+"</td>");}
		if(rs.getString(30).equalsIgnoreCase("1"))
		{out.print("<td>"+rs.getString(15)+"</td>");}
		if(rs.getString(31).equalsIgnoreCase("1"))
		{out.print("<td>"+rs.getString(16)+"</td>");}
		
		
		
		%>
		
		
		</tr>
		
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