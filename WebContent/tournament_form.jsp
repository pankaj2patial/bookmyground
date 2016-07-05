<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="style3.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Tournament form Filling</title>
</head>
<body>

<form action  = "tournament.jsp" method = post>

<marquee behavior = "alternate" bgcolor = #0080ff>
<font color = white size = "7">TOURNAMENT</font> </marquee>

<img  src="cup.jpg" width = "400px" height = "400px" align = "left">

 <table width = "50%">
 <tr>
 <td class = "td1">Tournament Name </td>
 <td><input class = "inp" type = "text" name = "tournament_name"></td>
 </tr>

<tr>
<td class = "td1">Category</td>
<td>
<select class = "inp" name = "dropdown">
 <option value = "CRICKET">Cricket</option>
 <option value = "FOOTBALL">Football</option>
 <option value = "HOCKEY">Hockey</option>
 <option value = "TENNIS">Tennis</option></select>
 </td>
 </tr>
 
 <tr>
 <td class = "td1">Team A </td>
 <td><input class = "inp" type = "text" name = "team_a"></td>
 </tr>
 
 <tr>
 <td class = "td1">Team B </td>
 <td><input class = "inp" type = "text" name = "team_b"></td>
 </tr>
 
 <tr>
 <td class = "td1">Date </td>
 <td><input class = "inp" type = "text" name = "d_ate"></td>
 </tr>
 
 <tr>
 <td class = "td1">Time </td>
 <td><input class = "inp" type = "text" name = "t_ime"></td>
 </tr>
 
 <tr>
<td></td>
<td></td>
</tr>

<tr>
<td></td>
<td></td>
</tr>



<tr><td></td>
 <td><input class = "btn" type = "submit" value = "ADD "></td>
</tr>


</table>
</form>

</body>
</html>