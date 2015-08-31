<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%int points1 = Integer.parseInt(request.getParameter("points1"));
int points2  = Integer.parseInt(request.getParameter("points2")); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>results.jsp</title>
<link type="text/css" rel="stylesheet" href="stylesheet.css"/>
</head>
<body>
<h2>Bunco Simulator Results</h2>
<p>Table 1 Score: <%=points1 %><% if(points1>points2){out.println("	Winner");}else{} if(points1==points2){out.println("	draw");} %></p>
<p>Table 2 Score: <%=points2 %><% if(points2>points1){out.println("	Winner");}else{} if(points1==points2){out.println("	draw");} %></p>
</body>
</html>