<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
	String q;
	
	q = "SELECT SUM(RUN) as total from t1_score";
	rs=stmt.executeQuery(q);
	rs.next();
	out.print("Total Score"+rs.getInt("total"));
	out.print("<br>");
	
	q = "SELECT  count(*) as over from t1_score where cat NOT IN('NO_BALL','WIDE') ";
	rs=stmt.executeQuery(q);
	rs.next();
	out.print("Overs"+(rs.getDouble("over")/6));
	out.print("<br>");
	
	q = "select  sum(RUN) AS extra from t1_score where cat NOT IN('DOT_BALL','WICKET','RUNS')";
	 rs = stmt.executeQuery(q);
	 rs.next();
	  out.print("EXTRA"+(rs.getInt("extra")));
	out.print("<br>");
		
	

	q = "SELECT dropdown1 as p1, count(*) as wickets from t1_score where cat = 'WICKET'";
	rs = stmt.executeQuery(q);
	out.print("WICKETS");
	while(rs.next())
	{
		out.print(rs.getInt("wickets"));
		out.print("<br>");
		out.print(rs.getString("p1"));
		out.print("<br>");
		
	}
	
	
	 q = "SELECT dropdown1 as p1,SUM(RUN) as s from t1_score where cat='NO+RUN'OR CAT='RUNS' GROUP BY DROPDOWN1";
	rs=stmt.executeQuery(q);
	out.print("Batting Team");
	out.print("<br>");
	while(rs.next())
	{
		out.print(rs.getString("p1"));
		out.print(rs.getString("s"));
		out.print("<br>");
		
	}
	
	out.print("Bowler Team");
	q = "SELECT dropdown2 as b1,SUM(RUN) as s from t1_score where cat NOT IN('BYE','LEGBYE') GROUP BY DROPDOWN2";
	rs=stmt.executeQuery(q);
	while(rs.next())
	{
		out.print(rs.getString("b1"));
		out.print(rs.getInt("s"));
		
		out.print("<br>");
	}
	q = "select team_name as tt from players where team_name = 'PANKAJ'";
	rs = stmt.executeQuery(q);
	 rs.next();
	 out.print("Team Name");
	  out.print((rs.getString("tt")));
	out.print("<br>");
	 
	
	
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