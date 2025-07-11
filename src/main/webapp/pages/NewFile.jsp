<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student Information</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: url('https://img.freepik.com/free-photo/books-with-green-board-background_1150-3837.jpg') no-repeat center center fixed;
            background-size: cover;
            padding: 40px;
        }

        h2 {
            color: #333;
        }

        form {
            background-color: rgba(255, 192, 203, 0.95); /* semi-transparent pink */
            padding: 25px;
            border-radius: 8px;
            width: 350px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        label {
            font-weight: bold;
        }

        input[type="text"], input[type="email"], input[type="tel"], input[type="submit"] {
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

        a {
            display: inline-block;
            margin-top: 15px;
            text-decoration: none;
            color: white;
            font-weight: bold;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<center>
    <h2>Register Student</h2>
    <form action="submit" method="post">

        <label>Name:</label>
        <input type="text" name="name" required/>

        <label>Grade:</label>
        <input type="text" name="grade" required/>

        <label>Email:</label>
        <input type="email" name="email" required/>

        <label>Department:</label>
        <input type="text" name="department" required/>

        <label>Phone:</label>
        <input type="tel" name="phone" required/>

        <input type="submit" value="Submit"/>
    </form>

    <br/>
    <a href="view">View All Students</a>
</center>
</body>
</html>
