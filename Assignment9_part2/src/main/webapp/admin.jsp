<%@ page import="jakarta.servlet.http.*, jakarta.servlet.*, java.io.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Page</title>
</head>
<body>
<%
    String role = (String) session.getAttribute("role");
    if ("admin".equals(role)) {
        out.println("<h1>Admin Dashboard</h1><h2>Yuvraj Sanap</h2>");
    } else {
        out.println("<h1>Access Denied</h1>");
    }
%>
</body>
</html>
