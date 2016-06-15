<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import = "java.sql.*" %>
<%
 Connection con = null;
 Statement stmt = null;
 ResultSet rs = null;
 
 String name = request.getParameter("name");
 String nick_name = request.getParameter("nick_name");
 String total_matches = request.getParameter("total_matches");
 String club_team = request.getParameter("club_team");
 String squad_number = request.getParameter("squad_number");
 String position = request.getParameter("position");
 String goals = request.getParameter("goals");
 String age = request.getParameter("age");
 String height = request.getParameter("height");
 String weight = request.getParameter("weight");
 String nty = request.getParameter("nty");
 
 try
 {
	Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo","root","root");
	stmt = con.createStatement();
	
	String q = "insert into football_players_information values('"+name+"','"+nick_name+"','"+total_matches+"','"+club_team+"','"+squad_number+"','"+position+"','"+goals+"','"+age+"','"+height+"','"+weight+"','"+nty+"')";
	
	stmt.executeUpdate(q);
  }
 catch(ClassNotFoundException cnfe)
 {
	 out.print(cnfe);
 }
 catch(SQLException sqle)
 {
	 out.print(sqle);
 }
 finally
 {
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
<link rel = "stylesheet" type = "text/css" href = "style3.css">
</head>
<body>

<form action = "information_football.jsp" method = "post">

<marquee behavior = "alternate" bgcolor = #0080ff>
<font color = white size = "7">Player Profile InforMation</font></marquee>

<img src="lm.jpg" width = "500px" height = "450px" align = "left">

<table width = "50%">
<tr>
<td>Name</td>
<td><% out.print(name); %></td>
</tr>

<tr>
<td>Nick Name</td>
<td><% out.print(nick_name); %></td>
</tr>

<tr>
<td>Total Matches </td>
<td><% out.print(total_matches); %></td>
</tr>

<tr>
<td>Club Team</td>
<td><% out.print(club_team); %></td>
</tr>

<tr>
<td>Squad Number:</td>
<td><% out.print(squad_number); %></td>
</tr>

<tr>
<td>Position</td>
<td><% out.print(position); %></td>
</tr>

<tr>
<td>Goals</td>
<td><% out.print(goals); %></td>
</tr>


<tr>
<td>Age</td>
<td><% out.print(age); %></td>
</tr>

<tr>
<td>Height</td>
<td><% out.print(height); %></td>
</tr>

<tr>
<td>Weight</td>
<td><% out.print(weight); %></td>
</tr>

<tr>
<td>Nationality</td>
<td><% out.print(nty); %></td>
</tr>


</table>


</form>
</body>
</html>