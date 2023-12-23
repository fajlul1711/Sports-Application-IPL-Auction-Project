<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Your Page Title</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #ADD8E6;
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
			
			
        .header {
            background-color: #151269;
            color: #fff;
            text-align: center;
            padding: 15px;
        }

        .container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
            background-color: #F0F8FF;
            
        }

        .left {
            flex: 1;
            padding: 20px;
        }

        .left img {
            width: 100%;
            height: auto;
        }

        .right {
            flex: 1;
            padding: 20px;
            text-align: center;
            background-color: #FAFAD2;
        }

        .right a {
            text-decoration: none;
        }

        .right button {
            display: block;
            width: 100%;
            margin-bottom: 10px;
            padding: 10px;
            font-size: 16px;
            background-color: #4CAF50;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .back-btn {
            text-align: center;
            margin-top: 20px;
        }

        .back-btn button {
            background-color: #151269;
            color: #fff;
            padding: 10px 20px;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
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
	    <a href="teamLogout.jsp">Logout</a>
	    <a href="https://www.iplt20.com/photos">Galleries</a>
	    
		</nav>

    <div class="header">
        <h1>Welcome to the Team Home Page</h1>
    </div>

    <div class="container">
        <div class="left">
            <!-- Replace with your left-side image -->
            <img src="https://cdn-wp.thesportsrush.com/2023/03/fd76a150-ipl-2023-live-telecast-channel-in-india.jpg" alt="Left Image">
        </div>

        <div class="right">
            <a href="viewavailableplayers"><button>Buy Player</button></a><br><br>
            <a href="viewteam"><button>View Team</button></a><br><br>
            <a href="viewteambyname"><button>View Team by Name</button></a><br><br>
        </div>
    </div>

    <div class="back-btn">
         <a href="teamlogin.jsp" class="back-button"><button>Back</button></a>
    </div>

</body>
</html>
