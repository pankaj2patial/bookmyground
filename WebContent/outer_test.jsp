<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel = "stylesheet" type = "text/css" href = "style3.css">
</head>
<body>
 <marquee behavior = "alternate" bgcolor = #0080ff>
<font color = white size = "7">Cricket Score Bored</font>
</marquee>
<img  src="score.jpg" width = "500px" height = "600px" align = "left">
<%@page import = "java.sql.*" %>
<%@page import = "java.util.*" %>
  <%
  Connection con = null;
  Statement stmt = null;
  ResultSet rs = null;

  String run;
 String p1;
 String b1;
 String cat;
 try
 {
	Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo","root","root");
	stmt = con.createStatement();
	String q;
	
	q = "select team_name as tt from players where team_name = 'PANKAJ'";
	rs = stmt.executeQuery(q);
	 rs.next();
	%>
	<table border = "1" width = "60%" >
	<tr class "h1">
	<td class = "f3" >Team Name</td>
	<td class = "inp"><%  out.print((rs.getString("tt"))); %></td>
	</tr>
	
	<%
	q = "SELECT SUM(RUN) as total from t1_score";
	rs=stmt.executeQuery(q);
	rs.next();
	%>
	
	<tr>
	<td class = "f3">Total Score</td>
	<td class = "inp"><% out.print(rs.getInt("total"));%></td>
	</tr>
	<%
	
	q = "SELECT  count(*) as over from t1_score where cat NOT IN('NO_BALL','WIDE','NO+RUNS','WIDE+BYES') ";
	rs=stmt.executeQuery(q);
	rs.next();
	%>
	<tr>
	<td class = "f3">Total Overs</td>
	<td class = "inp"><%out.print(String.format("%.1f", rs.getDouble("over")/6));%></td>
	</tr>
	<%
	
	q = "select  sum(RUN) AS extra from t1_score where cat NOT IN('DOT_BALL','WICKET','RUNS')";
	 rs = stmt.executeQuery(q);
	 rs.next();
	 %>
		<tr> 
		<td class = "f3">Total Extra</td>
		<td class = "inp"><% out.print(rs.getInt("extra"));%></td>
		</tr>
		<%
		
	q = "select distinct dropdown1 as strike from t1_score where dropdown1 NOT IN(Select dropdown1  from t1_score where cat = 'WICKET')";	
		rs = stmt.executeQuery(q);
		%>
		<tr>
		<td class = "p1">Strike Players</td>
		</tr>
		<%
		while(rs.next())
		{
	    %>
		
		<tr>
		<td class = "f3"><% out.print(rs.getString("strike") + "*"); %></td>
		</tr>
		<%
		}
	 
	 q = "Select dropdown1 as p1,SUM(RUN) as s from t1_score where cat='NO+RUN'OR CAT='RUNS' GROUP BY DROPDOWN1";
	rs=stmt.executeQuery(q);
	%>
	<tr>
	<td class = "p1">Batting Team</td>
	</tr>
	<%
	while(rs.next())
	{
    %>
	
	<tr>
	<td class = "f3"><% out.print(rs.getString("p1")); %></td>
	<td class = "inp"><% out.print(rs.getString("s")); %></td>
	</tr>
	<%
	}
	
	
	q = "Select dropdown1 as p1,count(*) as wickets from t1_score where cat = 'WICKET' group by dropdown1";
	rs = stmt.executeQuery(q);
	%>
	<tr>
	<td class = "p1">WICKETS</td>
	</tr>
	<%
	while(rs.next())
	{
	    %>
		<tr>
		<td class = "f3"><% out.print(rs.getString("p1")); %></td>
		<td class = "inp"><% out.print(rs.getInt("wickets")); %></td>
		</tr>
		<%
	}
	
	
	q = "SELECT dropdown2 as b1,SUM(RUN) as s from t1_score where cat NOT IN('BYE','LEGBYE') GROUP BY DROPDOWN2";
	rs=stmt.executeQuery(q);
	%>
	<tr>
	<td class = "p1">Bowling Runs</td>
	</tr>
	<tr>
	<%
	while(rs.next())
	{
		%>
		<tr>
		<td class = "f3"><% out.print(rs.getString("b1")); %></td>
		<td class = "inp"><% out.print(rs.getString("s")); %></td>
		</tr>
		<%
	}
	q = "select dropdown2 as b1,count(*)/6 as s from t1_score where cat NOT  IN('WIDE','NO+RUNS','WIDE+BYES','No_BALL') GROUP BY DROPDOWN2";
	  rs = stmt.executeQuery(q);
	   
 	 %>
	  <tr>
	  <td class = "p1">Overs</td>
	</tr>
	 	<%
	while(rs.next())
	{
		%>
		<tr>
		<td class = "f3"><% out.print(rs.getString("b1")); %></td>
		<td class = "inp"><% out.print(String.format("%.1f", rs.getDouble("s"))); %></td>
		
		</tr>
	
		<%		
	}
	 	%>
	</table>
	<%
	
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
</body>
</html>