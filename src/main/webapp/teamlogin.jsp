<%-- 

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Welcome to the Team Login Page</h1>
<h1>${msg}</h1>
<form action="teamlogin" method="post">

UserName:<input type="text" name="username" placeholder="Enter Your Username">
UserName:<input type="password" name="password" placeholder="Enter Your Password">

<button>Login</button> <button type="reset">Cancel</button>

</form>
</body>
</html>

--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Team Login Page</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }

        .header {
            background-color:#151269;
            color: #fff;
            text-align: center;
            padding: 15px;
        }

        .container {
            background-image: url('https://images-cricketcom.imgix.net/liveblog_featured-1644640909273?auto=compress&dpr=2&fit=clip&w=976&h=500');
            background-size: cover;
            background-position: center;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .content {
            display: flex;
            max-width: 800px;
            margin: 0 auto;
            background: rgba(255, 255, 255, 0.8);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
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
            flex: 2;
            padding: 20px;
        }

        form {
            max-width: 300px;
            margin: 0 auto;
            
        }

        form label {
            display: block;
            margin-bottom: 8px;
            font-weight: 600;
        }

        form input {
            width: 100%;
            padding: 8px;
            margin-bottom: 15px;
            box-sizing: border-box;
        }

        form button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        form button[type="reset"] {
             background-color: #ff0000;
            margin-left: 10px;
        }
        
        .back-button {
            background-color: #007BFF;
            border: 1px solid #007BFF;
            color: #fff;
            padding: 10px 30px;
            border-radius: 5px;
            text-decoration: none;
            cursor: pointer;
            transition: background-color 0.3s;
           	margin-top:350px;
            display: inline-block;
            position: absolute;
            left: 50%;
            transform: translateX(-50%);
            
        }

        .back-button:hover {
            background-color: #0056b3;
        }
        
    </style>
</head>
<body>
    <div class="header">
        <h1>Welcome to Team Login Page</h1>
        <h1>${msg}</h1>
    </div>
    <div class="container">
        <div class="content">
            <div class="left">
                <img src="https://img.etimg.com/thumb/width-640,height-480,imgsize-72718,resizemode-75,msid-89575628/news/sports/how-the-ipl-teams-stack-up-after-auction/1.jpg" alt="Left Image">
            </div>
            <div class="right">
           
                <form action="teamlogin" method="post">
                	
                	 <h1 style="text-align: center; align-items: center; margin-top: -30px">Team Login</h1>
                
                    <label>UserName:</label>
                    <input type="text" name="username" placeholder="Enter your Username" required="required"><br><br>

                    <label>Password: </label>
                    <input type="password" name="password" placeholder="Enter your Password" required="required"><br><br>

                    <button type="submit">Submit</button>
                    <button type="reset">Cancel</button>
                </form>
               
                </div>
                 <a href="index.jsp"  class="back-button">Back</a>
           
                
        </div>
        
    </div>
    
</body>
</html>
