<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.sql.*" %>
<%
 Connection con = null;
 Statement stmt = null;
 ResultSet rs = null;
 
 String name = request.getParameter("name");
 String mt = request.getParameter("mt");
 String won = request.getParameter("won");
 String lost = request.getParameter("lost");
 String highest_ranking = request.getParameter("highest_ranking");
 String current_ranking = request.getParameter("current_ranking");
 String career_tittle = request.getParameter("career_tittle");
 String d_mt = request.getParameter("d_mt");
 String d_won = request.getParameter("d_won");
 String d_lost = request.getParameter("d_lost");
 String d_career_tittle = request.getParameter("d_career_tittle");
 String d_current_ranking = request.getParameter("d_current_ranking");
 
 try
 {
	Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo","root","root");
	stmt = con.createStatement();
	
	String q = "insert into tennis_players_information values('"+name+"','"+mt+"','"+won+"','"+lost+"','"+highest_ranking+"','"+current_ranking+"','"+career_tittle+"','"+d_mt+"','"+d_won+"','"+d_lost+"','"+d_career_tittle+"','"+d_current_ranking+"')";
	
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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Tennis Player Information</title>
</head>
<body>

<form action="information_tennis.jsp" method = "post">

 <marquee behavior = "alternate" bgcolor = #0080ff>
 <font color = white size = "7">Player Profile</font> </marquee>
 
 <img  src="nd.JPG" width = "500px" height = "450px" align = "left">
 
 <table width = "50%">
<tr> <caption> <h1> Singles Profile</h1> </caption>
</tr>

<tr>
<td>Name</td>
<td><% out.print(name); %></td>
</tr>

<tr>
<td>Matches</td>
<td><% out.print(mt); %></td>
</tr>

<tr>
<td>Won</td>
<td><% out.print(won); %></td>
</tr>

<tr>
<td>Lost</td>
<td><% out.print(lost); %></td>
</tr>

<tr>
<td>Highest Ranking</td>
<td><% out.print(highest_ranking); %></td>
</tr>

<tr>
<td>Current Ranking</td>
<td><% out.print(current_ranking); %></td>
</tr>

<tr>
<td>Career Titles</td>
<td><% out.print(career_tittle); %></td>
</tr>


</table>


<table width = "50%" align = "center">
 <tr> <caption> <h1> Doubles Profile </h1> </caption>
</tr>

<tr>
<td>Matches</td>
<td><% out.print(d_mt); %></td>
</tr>

<tr>
<td>Won</td>
<td><% out.print(d_won); %></td>
</tr>

<tr>
<td> Lost </td>
<td><% out.print(d_lost); %></td>
</tr>

<tr>
<td>Career titles</td>
<td><% out.print(d_career_tittle); %></td>
</tr>

<tr>
<td>Current Ranking</td>
<td><% out.print(d_current_ranking); %></td>

</tr>

</table>


</form>
</body>
</html>