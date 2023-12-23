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
            background-image: url("https://images.pexels.com/photos/14907339/pexels-photo-14907339.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1");
            background-size: cover;
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
             background-color: rgba(100, 155, 155, 0.8);
        }

        .left {
            flex: 1;
            padding: 20px;
        }

        .left img {
            width: 63%;
            height: auto;
        }

        .right {
            flex: 1;
            padding: 20px;
            text-align: center;
            background-color: #FAFAD2;
        }

        form {
            max-width: 300px;
            margin: 0 auto;
        }

        form h1 {
            text-align: center;
        }

        form label {
            display: block;
            margin-bottom: 8px;
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

        .back-btn {
            text-align: center;
            margin-top: 20px;
        }

        .back-btn button {
            background-color:  #ff0000;
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
    <div class="header">
        <h1>Welcome to Add Amount Page</h1>
    </div>
    
    <%int id= (Integer.parseInt(request.getParameter("id"))); %>
    

    <div class="container">
        <div class="left">
            <!-- Replace with your left-side image -->
            <img src="https://qph.cf2.quoracdn.net/main-qimg-69c70df02b51a3ad992a2461b6ca608f-pjlq" alt="Left Image">
        </div>

        <div class="right">
            <form action="addamount" method="post">
                <h1>Add Amount</h1>

                <label>Add Amount:</label> <input type="text" name="amount" required="required" placeholder="Enter the Amount to be Added"><br><br>

                <input type="text" name="id" value="<%=id%>" hidden="hidden"><br><br>

                <button>Add Amount</button> <button type="reset">Cancel</button>
            </form>
        </div>
    </div>

    <div class="back-btn">
        <button onclick="goBack()">Back</button>
    </div>

    <script>
        function goBack() {
            window.history.back();
        }
    </script>
</body>
</html>
