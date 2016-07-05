<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import = "java.sql.*" %>
 <%
  Connection con = null;
  Statement stmt = null;
  ResultSet rs = null;

  String tournament_name = request.getParameter("tournament_name");
  String dropdown = request.getParameter("dropdown");
  String team_a = request.getParameter("team_a");
  String team_b = request.getParameter("team_b");
  String d_ate = request.getParameter("d_ate");
  String t_ime = request.getParameter("t_ime");
  
  try
  {
  	Class.forName("com.mysql.jdbc.Driver");
  	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo","root","root");
  	stmt = con.createStatement();
	  
	
	  String q = "insert into tournament values('"+tournament_name+"','"+dropdown+"','"+team_a+"','"+team_b+"','"+d_ate+"','"+t_ime+"')";
        
	stmt.executeUpdate(q);	  
  
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
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="style3.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Tournament form Filling</title>
</head>
<body>

<marquee behavior = "alternate" bgcolor = #0080ff>
<font color = white size = "7">TOURNAMENT</font> </marquee>

<img  src="cup.jpg" width = "400px" height = "400px" align = "left">

 <table width = "50%">
 <tr>
 <td class = "td1">Tournament Name </td>
 <td><% out.print(tournament_name); %></td></td>
 </tr>

<tr>
<td class = "td1">Category</td>
<td><%out.print(dropdown); %></td>
 </tr>
 
 <tr>
 <td class = "td1">Team A </td>
 <td><%out.print(team_a); %></td>
 </tr>
 
 <tr>
 <td class = "td1">Team B </td>
 <td><%out.print(team_b); %></td>
 </tr>
 
 <tr>
 <td class = "td1">Date </td>
 <td><%out.print(d_ate); %></td>
 </tr>
 
 <tr>
 <td class = "td1">Time </td>
 <td><%out.print(t_ime); %></td>
 </tr>
 
 
</table>

</body>
</html>