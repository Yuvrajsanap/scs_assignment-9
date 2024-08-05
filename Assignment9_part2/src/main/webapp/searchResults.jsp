<%@ page import="java.sql.*, java.util.ArrayList, java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Search Results</title>
</head>
<body>
<%
    String query = request.getParameter("query");
    String url = "jdbc:mysql://localhost:3306/test1";
    String user = "root";
    String password = "Yuvraj@12345";
    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(url, user, password);
        String sql = "SELECT * FROM register WHERE name LIKE ?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, "%" + query + "%");
        rs = pstmt.executeQuery();

        out.println("<h1>Search Results</h1>");
        out.println("<table border='1'>");
        out.println("<tr><th>ID</th><th>Name</th></tr>");
        while (rs.next()) {
            int id = rs.getInt("id");
            String name = rs.getString("name");
            out.println("<tr><td>" + id + "</td><td>" + name + "</td></tr>");
        }
        out.println("</table>");
    } catch (Exception e) {
        e.printStackTrace();
        out.println("<h1>Error: " + e.getMessage() + "</h1>");
    } finally {
        try {
            if (rs != null) rs.close();
            if (pstmt != null) pstmt.close();
            if (conn != null) conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>
</body>
</html>
