<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel = "stylesheet" type = "text/css" href = "style3.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Score Display</title>
</head>
<body>
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
	
		d = "select  sum(RUN) AS extra from t1_score where cat NOT IN('DOT_BALL','WICKET','RUNS')";
				
		e = "SELECT dropdown1 as p1, count(*) as wickets from t1_score WHERE cat='WICKET' ";	 
		
		 f = "SELECT dropdown1 as p1,SUM(RUN) as s from t1_score where cat='NO+RUN'OR CAT='RUNS' GROUP BY DROPDOWN1";
			
		 g = "SELECT dropdown1 as p1,SUM(RUN) as s from t1_score where cat='NO+RUN'OR CAT='RUNS' GROUP BY DROPDOWN1";
	
	     h = "SELECT dropdown2 as b1,SUM(RUN) as s from t1_score where cat NOT IN('BYE','LEGBYE') GROUP BY DROPDOWN2";
	rs=stmt.executeQuery(a);
	rs=stmt.executeQuery(b);
	rs=stmt.executeQuery(c);
	rs=stmt.executeQuery(d);
	rs=stmt.executeQuery(e);
	rs=stmt.executeQuery(f);
	rs=stmt.executeQuery(g);
	rs=stmt.executeQuery(h);
	
	%>
	<table border = "1"width = "100%" height = 50%>
	<tr class = "h1">
	<td><b>Team Name</b></td>
	<td><b>Total Score</b></td>
	<td><b>Overs </b></td>
	<td><b>Extra</b></td>
	<td><b>WICKETS</b></td>
	<td><b>Batting Team</b></td>
	<td><b>Bowling Runs</b></td>
	<td><b>Overs</b></td>

	</tr>
	<%
	a = "select team_name as tt from players where team_name = 'PANKAJ'";
	rs = stmt.executeQuery(a);
	while(rs.next())
	{
	
	%>
	<tr>
	<td ><%  out.print((rs.getString("tt"))); %></td>
	<%
	b = "SELECT SUM(RUN) as total from t1_score";
	rs=stmt.executeQuery(b);
	rs.next();
	%>
	<td ><% out.print(rs.getInt("total"));%></td>
	<%
	c = "SELECT  count(*) as over from t1_score where cat NOT IN('NO_BALL','WIDE','NO+RUNS','WIDE+BYES') ";
	rs=stmt.executeQuery(c);
	rs.next();
	%>
	<td ><% out.print(rs.getDouble("over")/6);%></td>
	<%
	
	d = "select  sum(RUN) AS extra from t1_score where cat NOT IN('DOT_BALL','WICKET','RUNS')";
	 rs = stmt.executeQuery(d);
	 rs.next();
	 %>
	<td ><% out.print(rs.getInt("extra"));%></td>
	</tr>
	<%

	e = "Select dropdown1 as p1,count(*) as wickets from t1_score where cat = 'WICKET' group by dropdown1";
	rs = stmt.executeQuery(e);
	while(rs.next())
	{
	    %>
	    <tr>
	<td "><% out.print(rs.getString("p1")); %></td>
	<td ><% out.print(rs.getInt("wickets")); %></td>
		<%
	}

	 f = "Select dropdown1 as p1,SUM(RUN) as s from t1_score where cat='NO+RUN'OR CAT='RUNS' GROUP BY DROPDOWN1";
	 rs=stmt.executeQuery(f);
	 while(rs.next())
	{
	%>
	<td class = "td1"><% out.print(rs.getString("p1")); %></td>
	<td class = "c2"><% out.print(rs.getString("s")); %></td>
		<%
	}
	g = "SELECT dropdown2 as b1,SUM(RUN) as s from t1_score where cat NOT IN('BYE','LEGBYE') GROUP BY DROPDOWN2";
	rs=stmt.executeQuery(g);
	while(rs.next())
	{
	%>

	<td class = "td1"><% out.print(rs.getString("b1")); %></td>
	<td class = "c2"><% out.print(rs.getString("s")); %></td>
			<%
	}
	h = "select dropdown2 as b1,count(*)/6 as s from t1_score where cat NOT  IN('WIDE','NO+RUNS','NO+RUNS','WIDE+BYES','No_BALL') GROUP BY DROPDOWN2";
	  rs = stmt.executeQuery(h);
	  while(rs.next())
		{
	  %>
	<td class = "td1"><% out.print(rs.getString("b1")); %></td>
	<td class = "c2"><% out.print(rs.getDouble("s")); %></td>
		</tr>
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
  
</body>
</html>