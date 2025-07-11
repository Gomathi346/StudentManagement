<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background:url('/images/OIP.jpeg') no-repeat center center fixed ;
            background-size: cover;
            padding: 40px;
        }

        form {
            background-color: rgba(255, 255, 255, 0.95);
            padding: 25px;
            border-radius: 8px;
            width: 300px;
            margin: 0 auto;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        h2 {
            text-align: center;
            color: #333;
        }

        label {
            font-weight: bold;
        }

        input[type="text"], input[type="password"], input[type="submit"] {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        .error {
            color: red;
            text-align: center;
        }
    </style>
</head>
<body>
    <form action="login" method="post">
        <h2>Login</h2>
        
        <label>Username:</label><br/>
        <input type="text" name="username" required/><br/>

        <label>Password:</label><br/>
        <input type="password" name="password" required/><br/>

        <input type="submit" value="Login"/>

        <c:if test="${not empty error}">
            <div class="error">${error}</div>
        </c:if>
    </form>
</body>
</html>
