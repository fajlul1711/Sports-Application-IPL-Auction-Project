<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="special" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View All Teams</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        .header {
            background-color: #151269;
            color: #fff;
            text-align: center;
            padding: 15px;
            width: 100%;
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
        <h1>Welcome to View all Teams</h1>
    </div>

    <table>
        <tr>
            <th>Team Name</th>
            <th>Wallet</th>
            <th>Status</th>
            <th>Change status</th>
            <th>Add amount</th>
            <th>Player</th>
        </tr>

        <special:forEach  var="team" items="${teams}">
            <tr>
                <td>${team.getName()}</td>
                <td>${team.getWallet()}</td>
                <td>${team.isStatus()}</td>
                <td><a href="changestatus?id=${team.getTid()}"><button>Change status</button></a></td>
                <td><a href="addamount.jsp?id=${team.getTid()}"><button>Add Amount</button></a></td>
                <td><a href="viewplayers?id=${team.getTid()}"><button>View Players</button></a></td>
            </tr>
        </special:forEach>
    </table>

    <div class="back-btn">
        <a href="managementhome.jsp"><button>Back</button></a>
    </div>
</body>
</html>
