<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="style3.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Team Registration</title>
</head>
<body>

 <form action = "cricket.jsp" method = post>
 
 <img src = "frontpage.png" width = "100%" height = "1%">
 
 <marquee behavior = "alternate" bgcolor = #0080ff>
<font color = white size = "7">Team Registration for Cricket</font> </marquee>

<a href="cricketzone.jsp">Home</a>
<a href="teamregistrationcricket.jsp">Team Registration</a>
<a href="display_cricket_players.jsp">List All Teams</a>
<a href="display_tournament_cricket.jsp">Tournament List</a>

 <table border = 1 width = "100%">
 <tr >
 <td class = "td1">Team Name</td>
 <td><input class = "inp" type = "text" name = "team_name"> </td>
 </tr>
 
 <tr>
 <td class = "td1">Players Name</td>
 <td><input class = "inp" type = "text" name = "player1"><input type="checkbox" name="st1"></td>
 <td><input class = "inp" type = "text" name = "player2"><input type="checkbox" name="st2"></td>
 <td><input class = "inp" type = "text" name = "player3"><input type="checkbox" name="st3"></td>
 <td><input class = "inp" type = "text" name = "player4"><input type="checkbox" name="st4"></td>
 <td><input class = "inp" type = "text" name = "player5"><input type="checkbox" name="st5"></td>
</tr>

<tr>
<td></td>
<td><input class = "inp" type = "text" name = "player6"><input type="checkbox" name="st6"></td>
 <td><input class = "inp" type = "text" name = "player7"><input type="checkbox" name="st7"></td>
 <td><input class = "inp" type = "text" name = "player8"><input type="checkbox" name="st8"></td>
 <td><input class = "inp" type = "text" name = "player9"><input type="checkbox" name="st9"></td>
 <td><input class = "inp" type = "text" name = "player10"><input type="checkbox" name="st10"></td>
</tr>

<tr>
<td></td>
<td><input class = "inp" type = "text" name = "player11"><input type="checkbox" name="st11"></td>
 <td><input class = "inp" type = "text" name = "player12"><input type="checkbox" name="st12"></td>
 <td><input class = "inp" type = "text" name = "player13"><input type="checkbox" name="st13"></td>
 <td><input class = "inp" type = "text" name = "player14"><input type="checkbox" name="st14"></td>
 <td><input class = "inp" type = "text" name = "player15"><input type="checkbox" name="st15"></td>
</tr>

<tr>
 <td><input class = "btn" type = "submit" value = "ADD PLAYERS"></td>


</tr>

 </table>

</form> 
</body>
</html>