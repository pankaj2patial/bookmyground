<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="style3.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Playing Eleven Football Players</title>
</head>
<body>

<%@ page import = "java.sql.*" %>
<%
  Connection con = null;
  Statement stmt = null;
  ResultSet rs = null;
  
  String t2 = request.getParameter("t2");
  
  try 
  {
	  Class.forName("com.mysql.jdbc.Driver");
	  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo","root","root");
	  stmt = con.createStatement();
	  
	  out.print(t2);
	  
	  rs = stmt.executeQuery("select * from football_players where team_name = '"+t2+"'");
	  rs.next();
	  %>
	  <a href="football_zone.jsp">Home</a>
	  <marquee behavior = "alternate" bgcolor = #0080ff>
<font color = white size = "7">Playing Players</font> </marquee>
	<table border = "1"width = "100%" height = 50%>
	<tr>
	<td ><b>Team Name</b></td>
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
		
		if(rs.getString(27).equalsIgnoreCase("1"))
		{	out.print("<td>"+rs.getString(2)+"</td>");	}
		if(rs.getString(28).equalsIgnoreCase("1"))
		{	out.print("<td>"+rs.getString(3)+"</td>");	}
		if(rs.getString(29).equalsIgnoreCase("1"))
		{	out.print("<td>"+rs.getString(4)+"</td>");	}
		if(rs.getString(30).equalsIgnoreCase("1"))
		{	out.print("<td>"+rs.getString(5)+"</td>");	}
		if(rs.getString(31).equalsIgnoreCase("1"))
		{	out.print("<td>"+rs.getString(6)+"</td>");}
		if(rs.getString(32).equalsIgnoreCase("1"))
		{out.print("<td>"+rs.getString(7)+"</td>");}
		if(rs.getString(33).equalsIgnoreCase("1"))
		{out.print("<td>"+rs.getString(8)+"</td>");}
		if(rs.getString(34).equalsIgnoreCase("1"))
		{out.print("<td>"+rs.getString(9)+"</td>");}
		if(rs.getString(35).equalsIgnoreCase("1"))
		{out.print("<td>"+rs.getString(10)+"</td>");}
		if(rs.getString(36).equalsIgnoreCase("1"))
		{out.print("<td>"+rs.getString(11)+"</td>");}
		if(rs.getString(37).equalsIgnoreCase("1"))
		{out.print("<td>"+rs.getString(12)+"</td>");}
		if(rs.getString(38).equalsIgnoreCase("1"))
		{out.print("<td>"+rs.getString(13)+"</td>");}
		if(rs.getString(39).equalsIgnoreCase("1"))
		{out.print("<td>"+rs.getString(14)+"</td>");}
		if(rs.getString(40).equalsIgnoreCase("1"))
		{out.print("<td>"+rs.getString(15)+"</td>");}
		if(rs.getString(41).equalsIgnoreCase("1"))
		{out.print("<td>"+rs.getString(16)+"</td>");}
		if(rs.getString(42).equalsIgnoreCase("1"))
		{out.print("<td>"+rs.getString(17)+"</td>");}
		if(rs.getString(43).equalsIgnoreCase("1"))
		{out.print("<td>"+rs.getString(18)+"</td>");}
		if(rs.getString(44).equalsIgnoreCase("1"))
		{out.print("<td>"+rs.getString(19)+"</td>");}
		if(rs.getString(45).equalsIgnoreCase("1"))
		{out.print("<td>"+rs.getString(20)+"</td>");}
		if(rs.getString(46).equalsIgnoreCase("1"))
		{out.print("<td>"+rs.getString(21)+"</td>");}
		if(rs.getString(47).equalsIgnoreCase("1"))
		{out.print("<td>"+rs.getString(22)+"</td>");}
		if(rs.getString(48).equalsIgnoreCase("1"))
		{out.print("<td>"+rs.getString(23)+"</td>");}
		if(rs.getString(49).equalsIgnoreCase("1"))
		{out.print("<td>"+rs.getString(24)+"</td>");}
		if(rs.getString(50).equalsIgnoreCase("1"))
		{out.print("<td>"+rs.getString(25)+"</td>");}
		if(rs.getString(51).equalsIgnoreCase("1"))
		{out.print("<td>"+rs.getString(26)+"</td>");}
		
		
		
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
  
</body>
</html>
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
