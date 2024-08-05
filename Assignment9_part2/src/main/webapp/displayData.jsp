<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Display User Data</title>
</head>
<body>
<%
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String age = request.getParameter("age");

    out.println("<h1>User Information</h1>");
    out.println("<p>Name: " + name + "</p>");
    out.println("<p>Email: " + email + "</p>");
    out.println("<p>Age: " + age + "</p>");
%>
</body>
</html>
