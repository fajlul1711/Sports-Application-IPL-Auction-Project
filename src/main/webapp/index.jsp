<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background: url('https://as1.ftcdn.net/v2/jpg/03/29/01/92/1000_F_329019262_y8jOFdFBQyn93DjE8otcItaex9wA6Svu.jpg') center/cover no-repeat;
            height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            color: #fff; /* Text color for better contrast */
        }
        
         form {
            background-color: rgba(255, 255, 255, 0.8);
            padding: 55px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            width: 400px;
            max-width: 80%;
            box-sizing: border-box;
            text-align: center;
            color: black;
        }

         header {
        	
          
           padding: 10px;
            text-align: center;
            font-size: 24px;
            font-weight: bold;
        }

        h1 {
            margin: 20px 0;
        }

     form    a {
        
        	width:200px;
            color: #fff;
            text-decoration: none;
            background-color: #007BFF;
            padding: 10px 20px;
            border-radius: 5px;
            display: inline-block;
            margin-bottom: 10px;
            transition: background-color 0.3s;
        }

        a:hover {
            background-color: #0056b3;
        }

        .back-button {
            background-color: #007BFF;
            border: 1px solid #007BFF;
            color: #fff;
            padding: 10px 20px;
            border-radius: 5px;
            text-decoration: none;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .back-button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<header>
    <h1>${msg}</h1>
     <h1><marquee direction="left" scrollamount="13"> Welcome to the Login page for IPL Auction 2023-2024 Session</marquee></h1>
  
</header>
<form action="">
<a href="managementlogin.jsp">Login As Management</a><br><br>
<a href="playerlogin.jsp">Login As Player</a><br><br>
<a href="teamlogin.jsp">Login as Team</a><br><br>


</form><br><br>

<a href="signup.jsp" class="back-button" onclick="history.back()">Back</a>

</body>
</html>
