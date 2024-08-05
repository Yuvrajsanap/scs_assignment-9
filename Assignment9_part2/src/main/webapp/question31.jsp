<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Registration</title>
    <script>
        function validateForm() {
            var username = document.forms["regForm"]["username"].value;
            var password = document.forms["regForm"]["password"].value;
            if (username === "" || password === "") {
                alert("Username and password must be filled out");
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
    <form name="regForm" action="register.jsp" method="post" onsubmit="return validateForm()">
        Username: <input type="text" name="username" required><br>
        Password: <input type="password" name="password" required><br>
        <input type="submit" value="Register">
    </form>
</body>
</html>
