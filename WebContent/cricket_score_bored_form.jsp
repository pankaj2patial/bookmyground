<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel = "stylesheet" type = "text/css" href = "style3.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cricket Score Bored</title>
</head>
<body>
<%
String bname=(String)session.getAttribute("bname");

String pname=(String)session.getAttribute("pname");
%>
<form action="cricket_score_bored.jsp" method = "post">

<marquee behavior = "alternate" bgcolor =#0080ff>
<font color = white size = "7">Cricket Score Bored</font>
</marquee>
	
<img  src="cup.jpg" width = "400px" height = "400px" align = "left">

<table width = "50%">

<tr>
<td class = "td1">Bowler Name</td>
<td><input  class = "inp" type = "text" name = "bowler" value=<%=bname %>></td>
</tr>


<tr>
<td class = "td1">On Strike</td>
<td>
<input  class = "inp" type = "text" name = "onstrike" value=<%=pname %>>
</td>
</tr>

<tr>
<td class = "td1">Balls</td>

<td>
<select class = "inp" name = "cat">
<option value = "WIDE">Wide</option>
<option value = "BYES">Byes</option>
<option value = "LEGBYE">Leg Bye</option>
<option value = "NO+RUNS">No + Runs</option>
<option value = "WIDE+BYES">Wide + Byes</option>
<option value = "DOT_BALL">Dot Ball</option>
<option value = "No_BALL">No Ball</option>
<option value = "WICKET">Wickets</option>
<option value = "RUNS">Runs</option>
</select>
</td>
</tr>

<tr>
<td class = td1>Runs</td>
<td><input  class = "inp" type = "text" name = "run"></td>
</tr>

<tr>
<td></td>
<td><input class = "btn" type = "submit" name = "OK"></td>

</tr>


</table>

</form>
</body>
</html>