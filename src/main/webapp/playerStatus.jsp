<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Player Status Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #ADD8E6;
        }

        header {
            background-color: #151269;
            color: #fff;
            text-align: center;
            padding: 1em;
        }

        .container {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
        }

        .back-button {
            display: inline-block;
            padding: 10px 20px;
            background-color: #151269;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
        }
    </style>
</head>
<body>

    <header>
        <h1>Welcome to Player Status Page</h1>
    </header>

    <div class="container">
        <h1>${msg}</h1>
        <!-- Your dynamic content goes here -->

        <!-- Back button -->
        <a href="javascript:history.back()" class="back-button">Back</a>
    </div>

</body>
</html>
