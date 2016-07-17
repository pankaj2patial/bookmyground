<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="Style1.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cricket Zone</title>
</head>
<body>

<marquee behavior = "alternate" bgcolor = #00c131>
<font color = white size = "7">Cricket Zone</font> </marquee>


<img src = "cricket.jpg" width = "100%" height = "200px" >

<a href="cricketzone.jsp">Home</a>
<a href="teamregistrationcricket.jsp">Team Registration</a>
<a href="display_cricket_players.jsp">List All Teams</a>
<a href="display_tournament_cricket.jsp">Tournament List</a>

<table border = "1" width = "50%">
 <img src = "score.jpg" width = "500px" height = "300px" align = "right">
<tr>
<td>live Score</td>
</tr>
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
	String a,b,c,d,e,f,g,h;
	
	a ="select team_name as tt from players where team_name ='PANKAJ' ";
	
		b = "SELECT SUM(RUN) as total from t1_score";
		    
		c = "SELECT  count(*) as over from t1_score where cat NOT IN('NO_BALL','WIDE','NO+RUNS','WIDE+BYES') ";
		
		e = "SELECT count(*) as wickets from t1_score WHERE cat='WICKET' ";	 
		
	rs=stmt.executeQuery(a);
	rs=stmt.executeQuery(b);
	rs=stmt.executeQuery(c);
	rs=stmt.executeQuery(e);
	
	
	%>
	<table border = "1"width = "50%" height = 50%>
	<tr>
	<th><b>Team Name</b></th>
	<th><b>Total Score</b></th>
	<th><b>Overs </b></th>
	<th><b>WICKETS</b></th>
	</tr>
	<%
	a = "select team_name as tt from players where team_name = 'PANKAJ'";
	rs = stmt.executeQuery(a);
	while(rs.next())
	{
	
	%>
	<tr>
	<td nowrap ><%  out.print((rs.getString("tt"))); %></td>
	<%
	b = "SELECT SUM(RUN) as total from t1_score";
	rs=stmt.executeQuery(b);
	rs.next();
	%>
	<td><% out.print(rs.getInt("total"));%></td>
	<%
	c = "SELECT  count(*) as over from t1_score where cat NOT IN('NO_BALL','WIDE','NO+RUNS','WIDE+BYES') ";
	rs=stmt.executeQuery(c);
	rs.next();
	%>
	<td><% out.print(rs.getDouble("over")/6);%></td>
	<%

	e = "Select dropdown1 as p1,count(*) as wickets from t1_score where cat = 'WICKET'";
	rs = stmt.executeQuery(e);
	while(rs.next())
	{
	    %>
	<td ><% out.print(rs.getInt("wickets")); %></td></tr>
		<%
	}

	%>
	</table>
	<%
	
}

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

<td><a href="outer_test.jsp">For More Match details...</a></td>
 




</table>
</body>
</html>