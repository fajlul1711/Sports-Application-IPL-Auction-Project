<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Available Players</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        header {
            background-color:#461B7E;
            color: #fff;
            padding: 10px;
            text-align: center;
            width: 100%;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #151269;
            color: #fff;
        }

        button {
            background-color: #4caf50;
            color: white;
            padding: 8px 16px;
            border: none;
            cursor: pointer;
            border-radius: 4px;
        }

        button:hover {
            background-color: #45a049;
        }

        a {
            text-decoration: none;
            color: inherit;
        }

        .back-button {
            margin-top: 20px;
            text-align: center;
        }
    </style>
</head>
<body>
    <header>
        <h1>Available Players for IPL Auction 2024</h1>
    </header>

    <table>
        <tr>
            <th>Player Name</th>
            <th>Player Role</th>
            <th>Base Price</th>
            <th>Player Country</th>
            <th>Player Status</th>
            <th>Buy Player</th>
        </tr>

        <c:forEach var="player" items="${players}">
            <tr>
                <td>${player.name}</td>
                <td>${player.role}</td>
                <td>${player.price}</td>
                <td>${player.country}</td>
                <td>${player.status}</td>
                <td>
                
                <a href="buyplayer?id=${player.id}">
                        <button>Buy Player</button>
                    </a>
                
              
                
                    
                </td>
            </tr>
        </c:forEach>
    </table>

    <div class="back-button">
        <a href="javascript:history.back()"><button>Back</button></a>
    </div>
</body>
</html>
