<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>index.jsp</title>
<link type="text/css" rel="stylesheet" href="stylesheet.css"/>
</head>
<body id="indexbody">
<p>Hello! This is a really fun game called Bunco! Here are the rules to the game.</p>
<p>The point to hit for each round is equal to the round number.For example, in round 1, point to hit is 1; for round two point to hit is 2, etc.</p>
<p>Each time a die is rolled equal to the round number, 1 point is added to the team score unless the roll is a "bunco".</p>
<p>A bunco earns 21 points.</p>
<p>Head table is only used to keep the rounds, and you get to the next round when it hits bunco. Round accumulation continues until round 6 and final scores are revealed!</p>
<p>Click "PLAY" to enjoy this game.</p>

<form name = "index" action = "roll.jsp" method = "post">

	<input type = "submit" value ="PLAY"></input>
	<input type="hidden" name="round" value="1" />
<input type = "hidden" name = "points1" value = "0" />
<input type = "hidden" name = "points2" value = "0" />
<input type = "hidden" name = "table1" value = "0" />
<input type = "hidden" name = "table2" value = "0" />
</form>

</body>
</html>