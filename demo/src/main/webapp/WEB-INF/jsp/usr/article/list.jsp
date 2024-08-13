<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Article List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            color: #333;
            margin: 0;
            padding: 0;
        }
        header {
            background-color: #0073e6;
            color: white;
            padding: 10px 0;
            text-align: center;
            box-shadow: 0px 4px 2px -2px gray;
        }
        h1 {
            margin: 0;
            font-size: 2em;
        }
        .container {
            width: 80%;
            margin: 20px auto;
            background-color: white;
            padding: 20px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            padding: 10px;
            text-align: center;
        }
        th {
            background-color: #0073e6;
            color: white;
            font-weight: bold;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        a {
            color: #0073e6;
            text-decoration: none;
        }
        a:hover {
            text-decoration: underline;
        }
        footer {
            text-align: center;
            padding: 10px 0;
            background-color: #0073e6;
            color: white;
            position: fixed;
            width: 100%;
            bottom: 0;
            box-shadow: 0px -4px 2px -2px gray;
        }
    </style>
</head>
<body>
    <header>
        <h1>Article List</h1>
    </header>

    <div class="container">
        <table border="1" cellspacing="0" cellpadding="5">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Registration Date</th>
                    <th>Title</th>
                    <th>Member ID</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="article" items="${articles}">
                    <tr>
                        <td>${article.id}</td>
                        <td>${article.regDate.substring(0, 10)}</td>
                        <td><a href="detail?id=${article.id}">${article.title}</a></td>
                        <td>${article.memberId}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

    <footer>
        &copy; 2024 My Website
    </footer>
</body>
</html>