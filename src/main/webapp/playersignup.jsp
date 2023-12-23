
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="special" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Player Signup</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background: url('https://www.insidesport.in/wp-content/uploads/2021/05/NEW-banner-16.jpg') center/cover no-repeat;
            height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            color: #fff; /* Text color for better contrast */
        }

       
       
 		header {
           padding: 10px;
            text-align: center;
            font-size: 24px;
            font-weight: bold;
            background-color: none;
            margin-top: 30px;
        }

       	form {
            background-color: rgba(255, 255, 255, 0.8);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            width: 400px;
            max-width: 80%;
            box-sizing: border-box;
            text-align: center;
            color: black;
        }
		form label{
		color: black;
		font-weight: 600;
		}
        form input {
            width: calc(100% - 16px);
            padding: 8px;
            margin: 5px 0;
            box-sizing: border-box;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #fff;
            padding-left: 35px; /* Space for icon */
            outline: none;
        }

       form select {
            width: calc(100% - 16px);
            padding: 8px;
            margin: 5px 0;
            box-sizing: border-box;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #fff;
            outline: none;
        }

       form button {
            width: 100%;
            background-color: #4CAF50;
            color: #fff;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            margin-top: 10px;
        }

       form button[type="reset"] {
            background-color: #ff0000;
        }

        .back-button {
            background-color: #007BFF;
            border: 1px solid #007BFF;
            color: #fff;
            padding: 10px 20px;
            border-radius: 5px;
            text-decoration: none;
            cursor: pointer;
        }

        .back-button:hover {
            background-color: #0056b3;
        }

        a {
            color: #fff;
            text-decoration: none;
        }
    </style>
</head>
<body>

<header>
  <h1><marquee direction="left" scrollamount="13"> Welcome to the Player Signup page for IPL Auction 2023-2024 Session</marquee></h1>
</header>

<special:form action="playersignup" modelAttribute="player">
    <label>Name:</label><special:input path="name" required="required" /><br><br>
    <label>Username:</label><special:input path="username" required="required" /><br><br>
    <label>Role:</label>
    <special:select path="role" required="required">
        <special:option value=" ">Select</special:option>
        <special:option value="batsman">Batsman</special:option>
        <special:option value="bowler">Bowler</special:option>
        <special:option value="allrounder">Allrounder</special:option>
        <special:option value="wicket_keeper">Wicket_keeper</special:option>
    </special:select><br><br>
    <label>Country:</label><special:input path="country" required="required" /><br><br>
    <label>Base Price:</label><special:input path="price" required="required" /><br><br>
    <label>Password:</label><special:input path="password" required="required" /><br><br>

    <special:button>Signup</special:button> <special:button type="reset">Cancel</special:button>
</special:form>

<br><br>

<a href="signup.jsp" class="back-button">Back</a>
</body>
</html>