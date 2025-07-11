<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Student</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            padding: 40px;
        }

        h2 {
            color: #333;
        }

        form {
            background-color: #fff;
            padding: 20px;
            width: 350px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            margin: 0 auto;
        }

        input[type="text"], input[type="email"], input[type="tel"] {
            width: 100%;
            padding: 8px;
            margin: 8px 0;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px;
            width: 100%;
            border: none;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        a {
            display: block;
            margin-top: 20px;
            text-align: center;
            text-decoration: none;
            color: #4CAF50;
            font-weight: bold;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<center>
    <h2>Edit Student Details</h2>

    <form action="/update" method="post">
        <input type="hidden" name="id" value="${student.id}" />

        <label for="name">Name:</label>
        <input type="text" id="name" name="name" value="${student.name}" required />

        <label for="grade">Grade:</label>
        <input type="text" id="grade" name="grade" value="${student.grade}" required />

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" value="${student.email}" required />

        <label for="department">Department:</label>
        <input type="text" id="department" name="department" value="${student.department}" required />

        <label for="phone">Phone:</label>
        <input type="tel" id="phone" name="phone" value="${student.phone}" required />

        <input type="submit" value="Update Student" />
    </form>

    <a href="view">Back to Student List</a>
</center>
</body>
</html>
