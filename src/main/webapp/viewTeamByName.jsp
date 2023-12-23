<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Team by Name</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(rgba(255,255,255,0.3), rgba(255,255,255,0.3)), url('https://i0.wp.com/th-i.thgim.com/public/incoming/kzn5jq/article65474344.ece/alternates/FREE_1200/TH30TITANS%20CHAMPs.JPG?strip=all') center fixed;
            background-size: cover;
        }

        header {
            background-color: #333;
            color: #fff;
            padding: 10px;
            text-align: center;
        }

        .container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px;
            margin: 50px auto;
            width: 80%;
            background-color: rgba(255,255,255,0.7);
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        form {
            width: 50%;
            padding: 20px;
            box-sizing: border-box;
        }

        form select {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        form button {
            background-color: #4caf50;
            color: white;
            padding: 10px 16px;
            border: none;
            cursor: pointer;
            border-radius: 4px;
        }

        form button:hover {
            background-color: #45a049;
        }
		
		button {
            background-color: #FF0000;
            color: white;
            font-size:20px;
            padding: 8px 26px;
            border: none;
            cursor: pointer;
            border-radius: 4px;
            height: 40px;
            width: 200px;
        }
		
        .back-button {
        	
            margin-top: 20px;
            text-align: center;
        }

        @media only screen and (max-width: 768px) {
            .container {
                flex-direction: column;
            }

            form {
                width: 100%;
                margin-top: 20px;
            }
        }
    </style>
</head>
<body>
    <header>
        <h1>Welcome to View Team by Name Page</h1>
    </header>

    <div class="container">
        <div class="left-image">
            <!-- Left side image goes here -->
            <img src="https://www.nalandaopenuniversity.com/wp-content/uploads/2023/07/IPL-2024-AUCTION-PLAYER-LIST.jpg" alt="Left Side Image" style="max-width: 70%;">
        </div>

        <form action="fetchusingteamname" method="POST">
            <select name="name">
                <c:forEach var="team" items="${teams}">
                    <option value="${team.getName()}">${team.getName()}</option>
                </c:forEach>
            </select>

            <button type="submit">Search Team</button>
        </form>
    </div>

    <div class="back-button">
        <a href="teamhomepage.jsp"><button>Back</button></a>
    </div>
</body>
</html>
