<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Search</title>
</head>
<body>
    <form action="searchResults.jsp" method="get">
        Search: <input type="text" name="query" required>
        <input type="submit" value="Search">
    </form>
</body>
</html>
