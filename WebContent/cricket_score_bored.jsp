<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.sql.*" %>
  <%
  
  Connection con = null;
  Statement stmt = null;
  ResultSet rs = null;

  String run = request.getParameter("run");
 String p1 = request.getParameter("onstrike");
 String b1 = request.getParameter("bowler");
 String cat = request.getParameter("cat");
 try
 {
	Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo","root","root");
	stmt = con.createStatement();
	session.setAttribute("bname", b1);
	session.setAttribute("pname", p1);
	String q = "insert into t1_score values('"+p1+"','"+b1+"','"+run+"','"+cat+"')";
	
	stmt.executeUpdate(q);
	response.sendRedirect("cricket_score_bored_form.jsp");
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
<title> Cricket Score Bored </title>
</head>
<body>

<marquee behavior = "alternate" bgcolor =#0080ff>
<font color = white size = "7">Cricket Score Bored</font>
</marquee>

<img  src="cricket.png" width = "400px" height = "400px" align = "left">

<table width = "50%">
<tr>
<td class = td1>Bowler</td>
<td><%out.print(b1); %></td>
</tr>

<tr>
<td class = "td1">On Strike</td>
<td><% out.print(p1);%></td>
</tr>

<tr>
<td class = "td1">Balls</td>
<td><% out.print(cat); %></td>
</tr>

<tr>
<td class = td1>Runs</td>
<td><%out.print(run); %></td>
</tr>


</table>

</body>
</html>
