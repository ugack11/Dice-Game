<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="buncogame.BuncoTools" %>
    <%@ page import="buncogame.Die" %>
    <%@ page import="java.util.ArrayList" %>
    <%@ page import="java.util.Scanner" %>
    <%@ page import="java.io.*" %>
    <%@ page import="java.util.*" %>
<%BuncoTools tools = new BuncoTools("bunco");

Die die1 = new Die();
Die die2 = new Die();
Die die3 = new Die();
Die die4 = new Die();
Die die5 = new Die();
Die die6 = new Die();
Die die7 = new Die();
Die die8 = new Die();
Die die9 = new Die();


int round = Integer.parseInt(request.getParameter("round"));
int points1 = Integer.parseInt(request.getParameter("points1"));
int points2  = Integer.parseInt(request.getParameter("points2"));
int table1 = Integer.parseInt(request.getParameter("table1"));
int table2 = Integer.parseInt(request.getParameter("table2"));
int nextRound = round;


// determine
//   if head table roll is a bunco
if(die1.getValue() == round && die2.getValue() == round && die3.getValue() == round) {
	nextRound++;
}
int points1Earned =0;
int points2Earned =0;
if(die4.getValue()==round){points1Earned+=1;}
if(die5.getValue()==round){points1Earned+=1;}
if(die6.getValue()==round){points1Earned+=1;}
if(die4.getValue()==round && die5.getValue()==round&& die6.getValue()==round){points1Earned=21;}
if(die7.getValue()==round){points2Earned+=1;}
if(die8.getValue()==round){points2Earned+=1;}
if(die9.getValue()==round){points2Earned+=1;}
if(die7.getValue()==round && die8.getValue()==round&& die9.getValue()==round){points2Earned=21;}
points1+= points1Earned;
points2+= points2Earned;
//page break//


%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>roll.jsp</title>
<link type="text/css" rel="stylesheet" href="stylesheet.css"/>
</head>
<body>
<form action= <% if(nextRound!=7){out.println("'roll.jsp'");}%><%if(nextRound == 7) {out.println("'results.jsp'");} %> method="post">
<table>
<tr>
<th colspan = 3>Round <%=nextRound %></th>
</tr>
<tr>
<td><img src="<%= die1.getURL()%>" height = "150" width= "150"/></td>
<td><img src="<%= die2.getURL()%>" height = "150" width= "150"/></td>
<td><img src="<%= die3.getURL()%>" height = "150" width= "150"/></td>
<td><p><%if(die1.getValue() == round && die2.getValue() == round && die3.getValue() == round){out.println("BUNCO- Last Roll for round	"+round);} %></p></td>
</tr>

<tr>
<th colspan = 3>Table 1</th>
</tr>
<tr>
<td><img src="<%= die4.getURL()%>" height = "150" width= "150"/></td>
<td><img src="<%= die5.getURL()%>" height = "150" width= "150"/></td>
<td><img src="<%= die6.getURL()%>" height = "150" width= "150"/></td>
<td><p>Points this roll = <%= points1Earned%></p></td>
<td><p>Total points = <%= points1%> </p></td>
<td><p>You scored <%if(points1Earned==0){out.println("0");}else{out.println(points1Earned);} %> for this roll</p></td>
<td><p>&nbsp;<%if(points1Earned == 0){out.println("New Player:"+tools.getPlayerName(table1));}%></p></td>

</tr>

<tr>
<th colspan = 3>Table 2</th>
</tr>
<tr>
<td><img src="<%= die7.getURL()%>" height = "150" width= "150"/></td>
<td><img src="<%= die8.getURL()%>" height = "150" width= "150"/></td>
<td><img src="<%= die9.getURL()%>"height = "150" width= "150"/></td>
<td><p>Points this roll = <%=points2Earned%></p></td>
<td><p>Total points = <%=points2%></p></td>
<td><p>You scored <%if(points2Earned==0){out.println("0");}else{out.println(points2Earned);} %> for this roll</p></td>
<td><p>&nbsp;<%if(points2Earned == 0){out.println("New Player:"+tools.getPlayerName(table2));}%></p></td>
</tr>

</table>
<%if(points1Earned == 0){table1++;} if(table1==4){table1=0;} 
if(points2Earned == 0){table2++;} if(table2==4){table2=0;}%>
<div id="rollbutton"><input type = "submit" name="submit" value="Roll"></div>
<input type = "hidden" name = "round" value = "<%= nextRound %>"/>
<input type = "hidden" name = "points1" value = "<%= points1 %>"/>
<input type = "hidden" name = "points2" value = "<%= points2 %>"/>
<input type = "hidden" name = "table1" value = "<%=table1%>" />
<input type = "hidden" name = "table2" value = "<%=table2%>" />

</form>

</body>
</html>