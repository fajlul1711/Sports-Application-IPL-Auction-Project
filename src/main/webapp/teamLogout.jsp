<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

    <meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Popup Message</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            background-color: rgba(0, 0, 0, 0.5);
        }

        .popup-container {
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            z-index: 1000;
        }

        .popup-header {
            display: flex;
            justify-content: flex-end;
            align-items: center;
            border-bottom: 1px solid #ccc;
            padding-bottom: 10px;
            margin-bottom: 10px;
        }

        .popup-close {
            cursor: pointer;
            font-size: 18px;
            color: #888;
        }

        .popup-close:hover {
            color: #555;
        }

        .popup-buttons {
            display: flex;
            justify-content: space-between;
        }

        .popup-button {
            padding: 10px 20px;
            margin: 0 5px;
            cursor: pointer;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            transition-duration: 0.3s;
        }

        .popup-button.cancel {
            background-color: #ccc;
        }

        .popup-button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

<div class="popup-container" id="popupContainer">
    <div class="popup-header">
        <span class="popup-buttons">
            <button class="popup-close" onclick="closePopup()">&times;</button>
        </span>
    </div>
    <div class="popup-content">
        <p>Are you sure you want to logout?</p>
        <div class="popup-buttons">
        
            <a href="teamlogout"><button class="popup-button" >Logout</button></a>
            
            <a href="teamhomepage.jsp"><button class="popup-button cancel" >Cancel</button></a>
        </div>
    </div>
</div>

<script >
	
	 function closePopup() {
	        document.getElementById('popupContainer').style.display = 'none';
	    }
	
	</script>


</body>
</html>