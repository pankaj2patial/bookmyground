<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import = "java.sql.*" %>
<% 
  Connection con = null;
  Statement stmt = null;
  ResultSet rs = null;
  
  String team_name = request.getParameter("team_name");
	 String p1 = request.getParameter("p1");
	 String p2 = request.getParameter("p2");
	 String p3 = request.getParameter("p3");
	 String p4 = request.getParameter("p4");
	 String p5 = request.getParameter("p5");
	 String p6 = request.getParameter("p6");
	 String p7 = request.getParameter("p7");
	 String p8 = request.getParameter("p8");
	 String p9 = request.getParameter("p9");
	 String p10 = request.getParameter("p10");
	 String p11= request.getParameter("p11");
	 String p12 = request.getParameter("p12");
	 String p13 = request.getParameter("p13");
	 String p14 = request.getParameter("p14");
	 String p15 = request.getParameter("p15");
	 String p16 = request.getParameter("p16");
	 String p17 = request.getParameter("p17");
	 String p18 = request.getParameter("p18");
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
	 String st16 = request.getParameter("st16");
	 String st17 = request.getParameter("st17");
	 String st18 = request.getParameter("st18");
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
	 
	 if(st16==null)
		  st16="0";
		else
			st16="1";

	if(st17==null)
		  st17="0";
		else
			st17="1";

	if(st18==null)
		  st18="0";
		else
			st18="1";
  
  try
  {
	 Class.forName("com.mysql.jdbc.Driver");
	 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo","root","root");
	 stmt = con.createStatement();
	 
	 
	 
	 String q = "insert into hockey_players values('"+team_name+"','"+p1+"','"+p2+"','"+p3+"','"+p4+"','"+p5+"','"+p6+"','"+p7+"','"+p8+"','"+p9+"','"+p10+"','"+p11+"','"+p12+"','"+p13+"','"+p14+"','"+p15+"','"+p16+"','"+p17+"','"+p18+"','"+st1+"','"+st2+"','"+st3+"','"+st4+"','"+st5+"','"+st6+"','"+st7+"','"+st8+"','"+st9+"','"+st10+"','"+st11+"','"+st12+"','"+st13+"','"+st14+"','"+st15+"','"+st16+"','"+st17+"','"+st18+"')";
	  
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
</head>
<body>
<form action="hockey.jsp" method = post>

<marquee behavior = "alternate" bgcolor="#0080ff">
<font color = "white" size = "7">Your Team Details Has Been Saved</font></marquee>

<table border = 1 width = "60%" >
<tr>
<td class = "td1">Team Name </td>
<td><% out.print(team_name); %></td>
</tr>

<tr>
<td class = "td1">Players Name</td>
<td><% out.print(p1); %></td>
<td><% out.print(p2); %></td>
 <td><% out.print(p3); %></td>
 <td><% out.print(p4); %></td>
 <td><% out.print(p5); %></td>
</tr>

<tr>
<td></td>
<td><% out.print(p6); %></td>
<td><% out.print(p7); %></td>
 <td><% out.print(p8); %></td>
 <td><% out.print(p9); %></td>
 <td><% out.print(p10); %></td>
</tr>

<tr>
<td></td>
<td><% out.print(p11); %></td>
<td><% out.print(p12); %></td>
 <td><% out.print(p13); %></td>
 <td><% out.print(p14); %></td>
 <td><% out.print(p15); %></td>
</tr>

<tr>
<td></td>
<td><% out.print(p16); %></td>
<td><% out.print(p17); %></td>
 <td><% out.print(p18); %></td>
</tr>


</table>
</form>
</body>
</html>



