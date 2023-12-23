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
<body>
<h1>Welcome to Management Signup page</h1>   <!-- Here I should always run this page -->
<special:form action="managementsignup" modelAttribute="management">
		<label>Username:</label>
        <special:input type="text" path="userName" /><br><br>

        <label>Password:</label>
        <special:input type="password" path="password" /><br><br>

<special:button>Signup</special:button>  <special:button type="reset">Cancle</special:button>

</special:form>

</body>
</html>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="special" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Management Signup</title>
    <!-- Add Font Awesome CDN for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background: url('https://akm-img-a-in.tosshub.com/sites/visualstory/stories/2022_10/story_11844/assets/2.jpeg?time=1666094674&size=*:900') center/cover no-repeat;
            height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }

        h1 {
            color: #fff;
        }

        form {
            background-color: rgba(255, 255, 255, 0.8);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            width: 300px;
        }

        special\:input {
            width: 100%;
            padding: 8px;
            margin: 5px 0;
            box-sizing: border-box;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #fff;
            padding-left: 35px; /* Space for icon */
        }

        special\:input[type="text"] {
            background-image: url('https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.3/svgs/solid/user.svg');
            background-repeat: no-repeat;
            background-position: 8px 8px;
        }

        special\:input[type="password"] {
            background-image: url('https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.3/svgs/solid/key.svg');
            background-repeat: no-repeat;
            background-position: 8px 8px;
        }

        special\:button {
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

        special\:button[type="reset"] {
            background-color: #ff0000;
        }

        .button-container {
            display: flex;
            gap: 10px;
            margin-top: 20px;
        }

        .button-container a {
            text-decoration: none;
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
    <h1>Welcome to Management Signup page</h1>
    <special:form action="managementsignup" modelAttribute="management">
        <label>Username:</label>
        <special:input type="text" path="userName" /><br><br>

        <label>Password:</label>
        <special:input type="password" path="password" /><br><br>

        <special:button>Signup</special:button>
        <special:button type="reset">Cancel</special:button>
    </special:form>

    <a href="back" class="styled-button back-button">Back</a>
</body>
</html>

--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="special" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Management Signup</title>
    <!-- Add Font Awesome CDN for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background: url('https://akm-img-a-in.tosshub.com/sites/visualstory/stories/2022_10/story_11844/assets/2.jpeg?time=1666094674&size=*:900') center/cover no-repeat;
            height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }

        h1 {
            color: #fff;
        }
        header {
           padding: 10px;
            text-align: center;
            font-size: 24px;
            font-weight: bold;
        }
        
         form {
            background-color: rgba(255, 255, 255, 0.7);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            width: 300px;
        }
        form label{
        	font-size: 20px;
        }
        
        form button{
        margin-top: 20px;
             background-color: #4CAF50;
            border: 1px solid #008CBA;
            color: #fff;
            padding: 10px 20px;
            border-radius: 5px;
            text-decoration: none;
            cursor: pointer;
        }
			
		form button:hover {
            background-color: #45a049;
        }
		

         form input {
            width: calc(100% - 16px);
            padding-right:10px;
            padding-left: 10px;
            margin: 5px 0;
           
            box-sizing: border-box;
            font-size: 23px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #fff;
            padding-left: 25px; /* Space for icon */
            outline: none;
            
            
        }

        form input[type="text"] {
            background-image: url('https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.3/svgs/solid/user.svg');
            background-repeat: no-repeat;
            background-position: 1px 1px;
             
        }

      form  input[type="password"] {
            background-image: url('https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.3/svgs/solid/key.svg');
            background-repeat: no-repeat;
            background-position: 1px 1px;
            
        }

     

      button[type="reset"] {
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
        }

        .back-button:hover {
            background-color: #0077A8;
        }
    </style>
</head>
<body>
    <h1></h1>
    
    <header>
       <h1><marquee direction="left" scrollamount="13"> Welcome to the Management Signup page for IPL Auction 2023-2024 Session</marquee></h1>
    </header>
    
    <special:form action="managementsignup" modelAttribute="management">
        <label>Username:</label>
        <special:input type="text" required="required"   path="userName"  /><br><br>

        <label>Password:</label>
        <special:input type="password" required="required" path="password" /><br><br>

        <special:button>Signup</special:button>
        <special:button type="reset">Cancel</special:button>
    </special:form>

    <a href="signup.jsp" class="back-button">Back</a>
</body>
</html>
