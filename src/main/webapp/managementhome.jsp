<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Management Home</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background: url('https://pbs.twimg.com/media/FzxVfpGaUAISyBd.jpg:large') center/cover no-repeat;
            height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }
        
        
         nav {
        
        	width:100%;
            background-color: #444;
            padding: 10px;
            text-align: center;
            
            font-weight: 600;
        }

        nav a {
            color: white;
            text-decoration: none;
            padding: 14px 16px;
            display: inline-block;
            
        }

        nav a:hover {
            background-color: #ddd;
            color: black;
            border-radius: 15px;
            
        }
        
         nav img {
            height: 30px;
            margin-right: 200; /* Updated margin-right property */
        }
        

   		.msg  {
            color: #fff;
            font-size: 70px;
            background-color: #151269;
        }

        .button-container {
            display: block;
           background-color: rgba(255, 255, 255, 0.6);
            padding: 55px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            width: 500px;
            max-width: 90%;
            box-sizing: border-box;
            text-align: center;
           
        }

        .button-container a {
            text-decoration: none;
        }
        
         .button-container h1 {
        
            color:black; 
        }

        .styled-button {
            display: inline-block;
            padding: 10px 20px;
            font-size: 16px;
            text-align: center;
            text-decoration: none;
            background-color: #4CAF50;
            color: #fff;
            border: 1px solid #4CAF50;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
            
        }

        .styled-button:hover {
            background-color: #45a049;
        }

        .back-button {
            margin-top: 20px;
            background-color: #008CBA;
            border: 1px solid #008CBA;
        }

        .back-button:hover {
            background-color: #0077A8;
        }
    </style>
</head>
<body>

<%-- For Nav bar --%>

		<nav>
	    <img src="https://www.iplt20.com/assets/images/ipl-logo-new-old.png" alt="Logo" >
	    <a href="signup.jsp">Home</a>
	    <a href="https://www.iplt20.com/about/about-us">About</a>
	    <a href="contactUs.jsp">Contact</a>
	    <a href="managementLogout.jsp">Logout</a>
	    <a href="https://www.iplt20.com/photos">Galleries</a>
	    
		</nav>


    <h1 class="msg">${msg}</h1>
    
    <div class="button-container">
    
    <h1>Welcome to the Management Home</h1>    
        <a href="viewallteam" class="styled-button">View Team</a>
        <a href="viewallplayers" class="styled-button">View Players</a>
    </div>

    <a href="index.jsp" class="styled-button back-button">Back</a>
</body>
</html>
