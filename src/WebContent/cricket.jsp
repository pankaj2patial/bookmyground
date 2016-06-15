<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.sql.*" %>
 <%
  Connection con = null;
  Statement stmt = null;
  ResultSet rs = null;

  String team_name = request.getParameter("team_name");
  String player1 = request.getParameter("player1");
  String player2 = request.getParameter("player2");
  String player3 = request.getParameter("player3");
  String player4 = request.getParameter("player4");
  String player5 = request.getParameter("player5");
  String player6 = request.getParameter("player6");
  String player7 = request.getParameter("player7");
  String player8 = request.getParameter("player8");
  String player9 = request.getParameter("player9");
  String player10 = request.getParameter("player10");
  String player11 = request.getParameter("player11");
  String player12 = request.getParameter("player12");
  String player13 = request.getParameter("player13");
  String player14 = request.getParameter("player14");
  String player15 = request.getParameter("player15");
  String st1 = request.getParameter("st1");
  String st2 = request.getParameter("st2");
  String st3 = request.getParameter("st3");
  String st4 = request.getParameter("st4");
  String st5 = request.getParameter("st5");
  String st6 = request.getParameter("st6");
  String st7 = request.getParameter("st7");
  String st8 = request.getParameter("st8");
  String st9 = request.getParameter("st9");
  String st10 = request.getParameter("st10");
  String st11 = request.getParameter("st11");
  String st12 = request.getParameter("st12");
  String st13 = request.getParameter("st13");
  String st14 = request.getParameter("st14");
  String st15 = request.getParameter("st15");
  if(st1==null)
	  st1="0";
	else
		st1="1";

  if(st2==null)
	  st2="0";
	else
		st2="1";
  
  	if(st3==null)
		st3="0";
	else
		st3="1";
  
  	if(st4==null)
	  	st4="0";
	else
		st4="1";
  	
  if(st5==null)
	  st5="0";
	else
		st5="1";
  
  if(st6==null)
	  st6="0";
	else
		st6="1";
  
  if(st7==null)
	  st7="0";
	else
		st7="1";
  
  if(st8==null)
	  st8="0";
	else
		st8="1";
  
  if(st9==null)
	  st9="0";
	else
		st9="1";
  
  if(st10==null)
	  st10="0";
	else
		st10="1";
  
  if(st11==null)
	  st11="0";
	else
		st11="1";
  
  if(st12==null)
	  st12="0";
	else
		st12="1";
  
  if(st13==null)
	  st13="0";
	else
		st13="1";
  
  if(st14==null)
	  st14="0";
	else
		st14="1";
  
  if(st15==null)
	  st15="0";
	else
		st15="1";

  try
  {
  	Class.forName("com.mysql.jdbc.Driver");
  	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo","root","root");
  	stmt = con.createStatement();
	  
	
	  String q = "insert into players values('"+team_name+"','"+player1+"','"+player2+"','"+player3+"','"+player4+"','"+player5+"','"+player6+"','"+player7+"','"+player8+"','"+player9+"','"+player10+"','"+player11+"','"+player12+"','"+player13+"','"+player14+"','"+player15+"','"+st1+"','"+st2+"','"+st3+"','"+st4+"','"+st5+"','"+st6+"','"+st7+"','"+st8+"','"+st9+"','"+st10+"','"+st11+"','"+st12+"','"+st13+"','"+st14+"','"+st15+"')";
        
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
</head>
<body>

 <form action = "cricket.jsp" method = post>
 
 <marquee behavior = "alternate" bgcolor = #0080ff>
<font color = white size = "7">Your Team Details Has Been Saved</font> </marquee>
 <table border = 1 width = "60%">
 <tr >
 <td class = "td1">Team Name</td>
 <td><% out.print(team_name); %> </td>
 </tr>
 
 <tr>
 <td class = "td1">Players Name</td>
 <td><% out.print(player1); %></td>
 <td><% out.print(player2); %></td>
 <td><% out.print(player3); %></td>
 <td><% out.print(player4); %></td>
 <td><% out.print(player5); %></td>
</tr>

<tr>
<td></td>
<td><% out.print(player6); %></td>
 <td><% out.print(player7); %></td>
 <td><% out.print(player8); %></td>
 <td><% out.print(player9); %></td>
 <td><% out.print(player10); %></td>
</tr>

<tr>
<td></td>
<td><% out.print(player11); %></td>
 <td><% out.print(player12); %></td>
 <td><% out.print(player13); %></td>
 <td><% out.print(player14); %></td>
 <td><% out.print(player15); %></td>
</tr>

 </table>
</form> 
</body>
</html>