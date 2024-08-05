<%@ page import="jakarta.servlet.http.*, jakarta.servlet.*, java.io.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>User Page</title>
</head>
<body>
<%
    String role = (String) session.getAttribute("role");
    if ("user".equals(role)) {
        out.println("<h1>User Dashboard</h1>");
    } else {
        out.println("<h1>Access Denied</h1>");
    }
%>
</body>
</html>
