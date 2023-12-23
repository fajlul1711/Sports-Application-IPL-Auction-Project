<%-- 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@ taglib prefix="special" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<h1>Welcom to the Team Signup page</h1>
<body>

<special:form action="teamsignup" modelAttribute="team">
<label>Name:</label><special:input path="name"/><br><br>
<label>Username:</label><special:input path="username"/><br><br>
<label>Password:</label><special:input path="password"/><br><br>
<label>Wallet:</label><special:input path="wallet"/><br><br>

<special:button>Signup</special:button><special:button type="reset">Cancle</special:button>


</special:form>

</body>
</html>

--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="special" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Team Signup</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background: url('https://static.theprint.in/wp-content/uploads/2022/03/ipl.jpg') center/cover no-repeat;
            height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            color: #fff;
        }

        header {
           padding: 10px;
            text-align: center;
            font-size: 24px;
            font-weight: bold;
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
        	
        	font-size: 20px;
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
            display: block;
            margin: 10px auto;
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
            display: inline-block;
        }

     form   button[type="reset"] {
            background-color: #ff0000;
        }

        .back-button {
            margin-top: 20px;
            background-color: #008CBA;
            border: 1px solid #008CBA;
            color: #fff;
            padding: 10px 20px;
            border-radius: 5px;
            text-decoration: none;
            cursor: pointer;
            display: inline-block;
        }

        .back-button:hover {
            background-color: #0077A8;
        }
    </style>
</head>
<body>
    <header>
       <h1><marquee direction="left" scrollamount="13"> Welcome to the Team Signup page for IPL Auction 2023-2024 Session</marquee></h1>
    </header>

    <special:form action="teamsignup" modelAttribute="team">
        <label>Team Name:</label>
        <special:input type="text" path="name" required="required"/><br>

        <label>Username:</label>
        <special:input type="text" path="username" required="required" /><br>

        <label>Password:</label>
        <special:input type="password" path="password" required="required"/><br>

        <label>Wallet:</label>
        <special:input type="text" path="wallet" required="required" /><br>

        <special:button>Signup</special:button>
        <special:button type="reset">Cancel</special:button>
    </special:form>

    <a href="signup.jsp" class="back-button">Back</a>
</body>
</html>

