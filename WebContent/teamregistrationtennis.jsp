<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel = "stylesheet" type = "text/css" href = "style3.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Team Registration Tennis</title>
</head>
<body>

<form action="tennis.jsp" method = post>

<img src = "frontpage.png" width = "100%" height = "1%">

<marquee behavior = "alternate" bgcolor = #0080ff>
<font color = white size = "7">Team Registration for Tennis</font></marquee>

<a href="tennis_zone.jsp">Home</a>
<a href="teamregistrationtennis.jsp">Team Registration</a>
<a href="display_tennis_players.jsp">List All Teams</a>
<a href="display_tournament.jsp">Tournament List</a>

<table   width = "100%">

<tr> <caption> <h1>Singles</h1> </caption>
</tr>
<tr>
<td class = "td1" >Player Name</td>
<td><input class = "inp" type = "text" name = "player1"></td>
</tr>
</table>

<table   width = "100%">

<tr> <caption> <h1>Doubles</h1> </caption>
</tr>
<tr>
<td class = "td1" >Players Name</td>
<td><input class = "inp" type = "text" name = "player2"></td>
<td><input class = "inp" type = "text" name = "player3"></td>
</tr>

<tr>
 <td><input class = "btn" type = "submit" value = "ADD PLAYERS"></td>
</tr>

</table>

</form>
</body>
</html>