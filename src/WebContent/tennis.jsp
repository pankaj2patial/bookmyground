<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import = "java.sql.*"%>
 <%
 Connection con = null;
 Statement stmt = null;
 ResultSet rs = null;
 
 String player1 = request.getParameter("player1");
 String player2 = request.getParameter("player2");
 String player3 = request.getParameter("player3");
 
 try
 {
	Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo","root","root");
	stmt = con.createStatement();
	
	
	String q = "insert into tennis_players values('"+player1+"','"+player2+"','"+player3+"')";
	
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
<link rel = "stylesheet" type = "text/css" href = "style3.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Team Registration Tennis</title>
</head>
<body>

<form action="tennis.jsp" method = post>

<marquee behavior = "alternate" bgcolor = #0080ff>
<font color = white size = "7">Your Players Details Has Been Saved</font></marquee>

<table   width = "100%">

<tr> <caption> <h1>Singles</h1> </caption>
</tr>
<tr>
<td class = "td1" >Player Name</td>
<td><% out.print(player1); %></td>
</tr>
</table>

<table   width = "100%">

<tr> <caption> <h1>Doubles</h1> </caption>
</tr>
<tr>
<td class = "td1" >Players Name</td>
<td><% out.print(player2); %></td>
<td><% out.print(player3); %></td>
</tr>

</table>

</form>
</body>
</html>