<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="special" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View All Players</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #e0e0e0; /* Different background color */
        }

        .header {
            background-color: #151269;
            color: #fff;
            text-align: center;
            padding: 15px;
        }

        h1 {
            text-align: center;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: #151269;
            color: #fff;
        }

        a button {
            background-color: #4CAF50;
            color: white;
            padding: 8px 22px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            text-decoration: none;
            display: inline-block;
        }

        a button:hover {
            background-color: #45a049;
        }

        .back-btn {
            margin-top: 20px;
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="header">
        <h1>Welcome to View All Players</h1>
    </div>

    <h1>${msg}</h1>

    <table>
        <tr>
            <th>Player Name</th>
            <th>Player Role</th>
            <th>Base Price</th>
            <th>Player Country</th>
            <th>Player Status</th>
            <th>Change Status</th>
        </tr>

        <special:forEach var="player" items="${players}">
            <tr>
                <td>${player.getName()}</td>
                <td>${player.getRole()}</td>
                <td>${player.getPrice()}</td>
                <td>${player.getCountry()}</td>
                <td>${player.getStatus()}</td>
                <td><a href="changeplayerstatus?id=${player.getId()}"><button>Change Status</button></a></td>
            </tr>
        </special:forEach>
    </table>

    <div class="back-btn">
        <a href="managementhome.jsp"><button>Back</button></a>
    </div>
</body>
</html>
