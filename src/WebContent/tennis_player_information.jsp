<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel = "stylesheet" type = "text/css" href = "style3.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Tennis Player Information</title>
</head>
<body>

<form action="information_tennis.jsp" method = "post">

 <marquee behavior = "alternate" bgcolor = #0080ff>
 <font color = white size = "7">Player Profile</font> </marquee>
 
 <img  src="nd.JPG" width = "500px" height = "450px" align = "left">
 
 <table width = "50%">
<tr> <caption> <h1> Singles Profile</h1> </caption>
</tr>

<tr>
<td>Name</td>
<td> <input class = "c1" type = "text" name = "name"></td>
</tr>

<tr>
<td>Matches</td>
<td> <input class = "c1" type = "text" name = "mt"></td>
</tr>

<tr>
<td>Won</td>
<td> <input class = "c1" type = "text" name = "won"></td>
</tr>

<tr>
<td>Lost</td>
<td> <input class = "c1" type = "text" name = "lost"></td>
</tr>

<tr>
<td>Highest Ranking</td>
<td> <input class = "c1" type = "text" name = "highest_ranking"></td>
</tr>

<tr>
<td>Current Ranking</td>
<td> <input class = "c1" type = "text" name = "current_ranking"></td>
</tr>

<tr>
<td>Career Titles</td>
<td> <input class = "c1" type = "text" name = "career_tittle"></td>
</tr>


</table>


<table width = "50%" align = "center">
 <tr> <caption> <h1> Doubles Profile </h1> </caption>
</tr>

<tr>
<td>Matches</td>
<td> <input class = "c1" type = "text" name = "d_mt"></td>
</tr>

<tr>
<td>Won</td>
<td> <input class = "c1" type = "text" name = d_won></td>
</tr>

<tr>
<td> Lost </td>
<td> <input class = "c1" type = "text" name = "d_lost"></td>
</tr>

<tr>
<td>Career titles</td>
<td> <input class = "c1" type = "text" name = "d_career_tittle"></td>
</tr>

<tr>
<td>Current Ranking</td>
<td> <input class = "c1" type = "text" name = "d_current_ranking"></td>

</tr>

<tr>
 <td><input class = "btn" type = "submit" value = "ADD INFORMATION"></td>


</tr>


</table>


</form>
</body>
</html>