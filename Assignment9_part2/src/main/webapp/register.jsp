<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Registration Result</title>
</head>
<body>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    if (username != null && password != null) {
        out.println("<h1>Registration Successful!</h1>");
        out.println("Username: " + username + "<br>");
    } else {
        out.println("<h1>Registration Failed</h1>");
    }
%>
</body>
</html>
