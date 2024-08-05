<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Login Validation</title>
</head>
<body>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    if ("yuvraj".equals(username) && "yuvraj123".equals(password)) {
        out.println("<h1>Welcome, " + username + "!</h1>");
    } else {
        out.println("<h1>Invalid username or password</h1>");
    }
%>
</body>
</html>
