<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Dynamic Greeting</title>
</head>
<body>
<%
    java.util.Date date = new java.util.Date();
    int hour = date.getHours();

    String greeting;
    if (hour < 12) {
        greeting = "Good Morning";
    } else if (hour < 18) {
        greeting = "Good Afternoon";
    } else {
        greeting = "Good Evening";
    }
%>
    <h1><%= greeting %></h1>
</body>
</html>
