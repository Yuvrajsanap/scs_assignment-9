<%@ page import="jakarta.servlet.http.*, jakarta.servlet.*, java.io.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Login Result</title>
</head>
<body>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    if ("yuvraj".equals(username) && "yuvraj123".equals(password)) {
        session.setAttribute("role", "admin");
        out.println("<h1>Welcome Admin</h1>");
        out.println("<a href='admin.jsp'>Go to Admin Page</a>");
    } else if ("user".equals(username) && "userpass".equals(password)) {
        session.setAttribute("role", "user");
        out.println("<h1>Welcome User</h1>");
        out.println("<a href='user.jsp'>Go to User Page</a>");
    } else {
        out.println("<h1>Invalid Credentials</h1>");
    }
%>
</body>
</html>
