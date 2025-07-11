<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Registered Students</title>
    <style>
        body {
        background: url('/images/new.jpeg') no-repeat center center fixed;
        background-size: cover;
        font-family: Arial, sans-serif;
        padding: 20px;
    }

        h2 {
            color: #fff;
        }

        table {
            width: 80%;
            border-collapse: collapse;
            background-color:#FFB6C1; /* white with transparency */
            box-shadow: 0 0 10px rgba(0,0,0,0.2);
        }

        th, td {
            border: 1px solid #ddd;
            padding: 12px;
            text-align: center;
        }

        th {
            background-color: #000000; /* black */
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #ddd;
        }

        a {
            display: inline-block;
            margin-top: 20px;
            text-decoration: none;
            color: #ffffff;
            font-weight: bold;
            font-size: 24px; /* Increased font size */
        }

        a:hover {
            text-decoration: underline;
        }

        .action-links a {
            margin: 0 5px;
            font-size: 18px;
            color: darkblue;
        }
    </style>
</head>
<body>
<center>
    <h2>List of Registered Students</h2>

    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Grade</th>
            <th>Email</th>
            <th>Department</th>
            <th>Phone</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="student" items="${students}">
            <tr>
                <td>${student.id}</td>
                <td>${student.name}</td>
                <td>${student.grade}</td>
                <td>${student.email}</td>
                <td>${student.department}</td>
                <td>${student.phone}</td>
                <td class="action-links">
                    <a href="${pageContext.request.contextPath}/edit/${student.id}">Edit</a>
                    <a href="${pageContext.request.contextPath}/delete/${student.id}" onclick="return confirm('Are you sure you want to delete this student?');">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>

    <br/>
    <a href="home">Back to Home</a>
    <br/>
    <a href="logout">Logout</a>
</center>
</body>
</html>
