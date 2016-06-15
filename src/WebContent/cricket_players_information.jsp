<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="style3.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cricket Player Information</title>
</head>
<body>

<form action="information_cricket.jsp" method = "post">

<marquee behavior = "alternate" bgcolor = #0080ff>
<font color = white size = "7">Player Profile</font> </marquee>

 <img  src="ab.jpg" width = "500px" height = "450px" align = "left">
 
<table width = "50%">
<tr> <caption> <h1> Batting Profile</h1> </caption>
</tr>

<tr>
<td>Name</td>
<td> <input class = "c1" type = "text" name = "name"></td>
</tr>

<tr>
<td>Match</td>
<td> <input class = "c1" type = "text" name = "mt"></td>
</tr>

<tr>
<td>Innings</td>
<td> <input class = "c1" type = "text" name = "ings"></td>
</tr>

<tr>
<td>Not Out</td>
<td> <input class = "c1" type = "text" name = "notout"></td>
</tr>

<tr>
<td>Highest Score</td>
<td> <input class = "c1" type = "text" name = "highest_score"></td>
</tr>

<tr>
<td>Average</td>
<td> <input class = "c1" type = "text" name = "average"></td>
<td> Strike Rate</td>
<td> <input class = "c1" type = "text" name = "strike_rate"></td>
</tr>

<tr>
<td>Batting First</td>
<td> <input class = "c1" type = "text" name = "batting_first"></td>
<td>Total Runs</td>
<td> <input class = "c1" type = "text" name = "total_runs"></td>
</tr>

<tr>
<td>Number of 100s</td>
<td> <input class = "c1" type = "text" name = "numbers_of_100s"></td>
<td>Number of 50s</td>
<td> <input class = "c1" type = "text" name = "numbers_of_50s"></td>
</tr>

<tr>
<td>Number of 4s</td>
<td> <input class = "c1" type = "text" name = "numbers_of_4s"></td>
<td>Number of 6s</td>
<td> <input class = "c1" type = "text" name = "numbers_of_6s"></td>
</tr>

<tr>
<td>Number of Catches</td>
<td> <input class = "c1" type = "text" name = "numbers_of_catches"></td>
<td>Number of Stumps</td>
<td> <input class = "c1" type = "text" name = "numbers_of_stumps"></td>
</tr>

</table>


<table width = "50%" align = "center">
 <tr> <caption> <h1> Bowling Profile</h1> </caption>
</tr>


<tr>
<td>Balls</td>
<td> <input class = "c1" type = "text" name = "balls"></td>
<td> Wickets </td>
<td> <input class = "c1" type = "text" name = "wickets"></td>
<td>Average</td>
<td> <input class = "c1" type = "text" name = "b_average"></td>
<td>Economy</td>
<td> <input class = "c1" type = "text" name = "economy"></td>

</tr>

<tr>
 <td><input class = "btn" type = "submit" value = "ADD INFORMATION"></td>


</tr>


</table>


</form>
</body>
</html>