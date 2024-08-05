<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>User Information Form</title>
</head>
<body>
    <form action="displayData.jsp" method="post">
        Name: <input type="text" name="name" /><br>
        Email: <input type="email" name="email" /><br>
        Age: <input type="number" name="age" /><br>
        <input type="submit" value="Submit" />
    </form>
</body>
</html>
