

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Management Login Page</title>
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
            background-image: url('https://www.insidesport.in/wp-content/uploads/2022/10/WhatsApp-Image-2022-10-18-at-8.22.46-PM.jpeg');
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
        <h1>Welcome to Management Login Page</h1>
        <h1>${msg}</h1>
    </div>
    <div class="container">
        <div class="content">
            <div class="left">
                <img src="https://media.licdn.com/dms/image/C5612AQFw_ukxC7wf6g/article-cover_image-shrink_600_2000/0/1621016735645?e=2147483647&v=beta&t=g0CYemGNdjpFDDOuU4qOr3FJ4-01TZDEvL5WVt1ZI_Q" alt="Icon">
            </div>
            <div class="right">
           
                <form action="managementlogin" method="post">
                	
                	 <h1 style="text-align: center; align-items: center; margin-top: -30px">Management Login</h1>
                
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




