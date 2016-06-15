<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel = "stylesheet" type = "text/css" href = "style3.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Football Player Information</title>
</head>
<body>

<form action = "information_football.jsp" method = "post">

<marquee behavior = "alternate" bgcolor = #0080ff>
<font color = white size = "7">Player Profile</font></marquee>

<img src="lm.jpg" width = "500px" height = "450px" align = "left">

<table width = "50%">
<tr>
<td>Name</td>
<td><input class = "c1" type = "text" name = "name"></td>
</tr>

<tr>
<td>Nick Name</td>
<td> <input class = "c1" type = "text" name = "nick_name"></td>
</tr>

<tr>
<td>Total Matches </td>
<td> <input class = "c1" type = "text" name = "total_matches"></td>
</tr>

<tr>
<td>Club Team</td>
<td> <input class = "c1" type = "text" name = "club_team"></td>
</tr>

<tr>
<td>Squad Number:</td>
<td> <input class = "c1" type = "text" name = "squad_number"></td>
</tr>

<tr>
<td>Position</td>
<td> <input class = "c1" type = "text" name = "position"></td>
</tr>

<tr>
<td>Goals</td>
<td> <input class = "c1" type = "text" name = "goals"></td>
</tr>

<tr>
<td>Age</td>
<td> <input class = "c1" type = "text" name = "age"></td>
</tr>

<tr>
<td>Height</td>
<td> <input class = "c1" type = "text" name = "height"></td>
</tr>

<tr>
<td>Weight</td>
<td> <input class = "c1" type = "text" name = "weight"></td>
</tr>

<tr>
<td>Nationality</td>
<td> <input class = "c1" type = "text" name = "nty"></td>
</tr>

<tr>
 <td><input class = "btn" type = "submit" value = "ADD INFORMATION"></td>
</tr>


</table>
</form>
</body>
</html>