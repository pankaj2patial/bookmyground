<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import = "java.sql.*" %>
 <%
  Connection con = null;
  Statement stmt = null;
  ResultSet rs = null;
out.print("test1");  
  String name = request.getParameter("name");
  String mt = request.getParameter("mt");
  String ings = request.getParameter("ings");
  String notout = request.getParameter("notout");
  String highest_score = request.getParameter("highest_score");
  String average = request.getParameter("average");
  String batting_first = request.getParameter("strike_rate");
  String strike_rate = request.getParameter("batting_first");
  String total_runs = request.getParameter("total_runs");
  String numbers_of_100s = request.getParameter("numbers_of_100s");
  String numbers_of_50s = request.getParameter("numbers_of_50s");
  String numbers_of_4s = request.getParameter("numbers_of_4s");
  String numbers_of_6s = request.getParameter("numbers_of_6s");
  String numbers_of_catches = request.getParameter("numbers_of_catches");
  String numbers_of_stumps = request.getParameter("numbers_of_stumps");
  String balls = request.getParameter("balls");
  String wickets = request.getParameter("wickets");
  String b_average = request.getParameter("b_average");
  String economy = request.getParameter("economy");
  out.print("test2");  
  try 
  {
	  out.print("test3");
  Class.forName("com.mysql.jdbc.Driver");
  out.print("test4");
  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo","root","root");
  out.print("test5");
  stmt = con.createStatement();
  
  String q = "insert into players_information values('"+name+"','"+mt+"','"+ings+"','"+notout+"','"+highest_score+"','"+average+"','"+strike_rate+"','"+batting_first+"','"+total_runs+"','"+numbers_of_100s+"','"+numbers_of_50s+"','"+numbers_of_4s+"','"+numbers_of_6s+"','"+numbers_of_catches+"','"+numbers_of_stumps+"','"+balls+"','"+wickets+"','"+b_average+"','"+economy+"')" ;
  
  
  stmt.executeUpdate(q);
  
  out.print("test6");
  
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
<link rel="stylesheet" type="text/css" href="style3.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<link rel = "stylesheet" type = "text/css" href = "style3.css">
<body>

<marquee behavior = "alternate" bgcolor = #0080ff>
<font color = white size = "7">Player Profile InforMation</font> </marquee>
<form action="information.jsp" method = "post">

 <img  src="ab.jpg" width = "500px" height = "450px" align = "left">
 
<table width = "50%">
<tr> <caption> <h1> Batting Profile</h1> </caption>
</tr>

<tr>
<td>Name</td>
<td><%out.print(name); %></td>
</tr>

<tr>
<td>Match</td>
<td><%out.print(mt); %></td>
</tr>

<tr>
<td>Innings</td>
<td><%out.print(ings); %></td>
</tr>

<tr>
<td>Not Out</td>
<td><%out.print(notout); %></td>
</tr>

<tr>
<td>Highest Score</td>
<td><%out.print(highest_score); %></td>
</tr>

<tr>
<td>Average</td>
<td><%out.print(average); %></td>
<td> Strike Rate</td>
<td><%out.print(strike_rate); %></td>
</tr>

<tr>
<td>Batting First</td>
<td><%out.print(batting_first); %></td>
<td>Total Runs</td>
<td><%out.print(total_runs); %></td>
</tr>

<tr>
<td>Number of 100s</td>
<td><%out.print(numbers_of_100s); %> </td>
<td>Number of 50s</td>
<td><%out.print(numbers_of_50s); %></td>
</tr>

<tr>
<td>Number of 4s</td>
<td><%out.print(numbers_of_4s); %></td>
<td>Number of 6s</td>
<td><%out.print(numbers_of_6s); %></td>
</tr>

<tr>
<td>Number of Catches</td>
<td><%out.print(numbers_of_catches); %></td>
<td>Number of Stumps</td>
<td><%out.print(numbers_of_stumps); %></td>
</tr>

</table>


<table width = "50%" align = "center">
 <tr> <caption> <h1> Bowling Profile</h1> </caption>
</tr>


<tr>
<td>Balls</td>
<td><%out.print(balls); %></td>
<td> Wickets </td>
<td><%out.print(wickets); %></td>
<td>Average</td>
<td><%out.print(b_average); %></td>
<td>Economy</td>
<td><%out.print(economy); %></td>

</tr>



</table>
</form>
</body>
</html>  
      
      
      