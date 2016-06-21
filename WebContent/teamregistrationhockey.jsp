<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel = "stylesheet" type = "text/css" href = "style3.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="hockey.jsp" method = post>

<img src = "frontpage.png" width = "100%" height = "1%">

<marquee behavior = "alternate" bgcolor="#0080ff">
<font color = "white" size = "7">Team registration for Hockey</font></marquee>

<a href="hockey_zone.jsp">Home</a>
<a href="teamregistrationhockey.jsp">Team Registration</a>
<a href="display_hockey_players.jsp">List All Teams</a>
<a href="display_tournament_hockey.jsp">Tournament List</a>

<table border = 1 width = "60%" >
<tr>
<td class = "td1">Team Name </td>
<td> <input class = "inp" type = "text" name = "team_name"></td>
</tr>

<tr>
<td class = "td1">Players Name</td>
<td><input class = "inp" type = "text" name = "p1"><input type="checkbox" name="st1"></td>
<td><input class = "inp" type = "text" name = "p2"><input type="checkbox" name="st2"></td>
 <td><input class = "inp" type = "text" name = "p3"><input type="checkbox" name="st3"></td>
 <td><input class = "inp" type = "text" name = "p4"><input type="checkbox" name="st4"></td>
 <td><input class = "inp" type = "text" name = "p5"><input type="checkbox" name="st5"></td>
</tr>

<tr>
<td></td>
<td><input class = "inp" type = "text" name = "p6"><input type="checkbox" name="st6"></td>
<td><input class = "inp" type = "text" name = "p7"><input type="checkbox" name="st7"></td>
 <td><input class = "inp" type = "text" name = "p8"><input type="checkbox" name="st8"></td>
 <td><input class = "inp" type = "text" name = "p9"><input type="checkbox" name="st9"></td>
 <td><input class = "inp" type = "text" name = "p10"><input type="checkbox" name="st10"></td>
</tr>

<tr>
<td></td>
<td><input class = "inp" type = "text" name = "p11"><input type="checkbox" name="st11"></td>
<td><input class = "inp" type = "text" name = "p12"><input type="checkbox" name="st12"></td>
 <td><input class = "inp" type = "text" name = "p13"><input type="checkbox" name="st13"></td>
 <td><input class = "inp" type = "text" name = "p14"><input type="checkbox" name="st14"></td>
 <td><input class = "inp" type = "text" name = "p15"><input type="checkbox" name="st15"></td>
</tr>

<tr>
<td></td>
<td><input class = "inp" type = "text" name = "p16"><input type="checkbox" name="st16"></td>
<td><input class = "inp" type = "text" name = "p17"><input type="checkbox" name="st17"></td>
 <td><input class = "inp" type = "text" name = "p18"><input type="checkbox" name="st18"></td>

<tr>
<td><input class = "btn" type = "submit" value = "ADD PLAYERS" > </td>

</tr>


</table>
</form>
</body>
</html>

