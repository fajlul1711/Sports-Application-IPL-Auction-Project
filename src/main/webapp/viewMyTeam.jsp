

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View My Team Page</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(rgba(255,255,255,0.5), rgba(255,255,255,0.5)), url('https://i1.wp.com/cdn108.technosports.co.in/wp-content/uploads/2023/03/IPL-jersey.jpg?strip=all') center fixed;
            background-size: cover;
            animation: slideshow 8s infinite;
        }

        /* Add more background images with sequential numbers */
        /*
        body.second {
            background: linear-gradient(rgba(255,255,255,0.5), rgba(255,255,255,0.5)), url('https://wallpapercave.com/dwp1x/wp2458593.jpg') center fixed;
            background-size: cover;
        }

        body.third {
            background: linear-gradient(rgba(255,255,255,0.5), rgba(255,255,255,0.5)), url('https://wallpapercave.com/dwp1x/wp6194573.jpg') center fixed;
            background-size: cover;
        }
        */
        
        /**
         body.fourth {
            background: linear-gradient(rgba(255,255,255,0.5), rgba(255,255,255,0.5)), url('https://wallpapercave.com/dwp1x/wp6194575.jpg') center fixed;
            background-size: cover;
        }
         body.fifth {
            background: linear-gradient(rgba(255,255,255,0.5), rgba(255,255,255,0.5)), url('https://wallpapercave.com/dwp1x/wp6194595.jpg') center fixed;
            background-size: cover;
        }
         body.sixth {
            background: linear-gradient(rgba(255,255,255,0.5), rgba(255,255,255,0.5)), url('https://wallpapercave.com/dwp1x/wp3116421.jpg') center fixed;
            background-size: cover;
        }
         body.seventh {
            background: linear-gradient(rgba(255,255,255,0.5), rgba(255,255,255,0.5)), url('https://www.probatsman.com/wp-content/uploads/2022/05/GT-trophy-1.jpg') center fixed;
            background-size: cover;
        }
		
		 body.eighth {
            background: linear-gradient(rgba(255,255,255,0.5), rgba(255,255,255,0.5)), url('https://bullcdn.b-cdn.net/wp-content/uploads/2022/03/RR.png') center fixed;
            background-size: cover;
        }
        
         body.nineth {
            background: linear-gradient(rgba(255,255,255,0.5), rgba(255,255,255,0.5)), url('your-background-image-3.jpg') center fixed;
            background-size: cover;
        }
         body.tenth {
            background: linear-gradient(rgba(255,255,255,0.5), rgba(255,255,255,0.5)), url('your-background-image-3.jpg') center fixed;
            background-size: cover;
        } **/
		
        /* Add more classes for additional background images */

        header {
            background-color: #151269;
            color: #fff;
            padding: 10px;
            text-align: center;
        }

        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            font-size: 18px;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #151269;
            color: #fff;
        }

        button {
            background-color: #FF0000;
            color: white;
            padding: 8px 16px;
            border: none;
            cursor: pointer;
            border-radius: 4px;
        }

        button:hover {
            background-color: #45a049;
        }

        a {
            text-decoration: none;
            color: inherit;
        }

        .back-button {
            margin-top: 20px;
            text-align: center;
        }

        @keyframes slideshow {
            0%, 100% {
                background-position: 0 0;
            }
            25% {
                background-position: 100% 0;
            }
            50% {
                background-position: 100% 100%;
            }
            75% {
                background-position: 0 100%;
            }
        }
    </style>

   
    <script>
        // Array of background images
       //** const backgroundImages = [
           // 'your-background-image-3.jpg',
           // 'https://wallpapercave.com/dwp1x/wp2458593.jpg',
           // 'https://wallpapercave.com/dwp1x/wp6194573.jpg'
            
            
            
            // Add more image URLs as needed
       // ];

        //let currentIndex = 0;

        // Function to change background image
       // function changeBackground() {
          //  document.body.style.backgroundImage = `linear-gradient(rgba(255,255,255,0.5), rgba(255,255,255,0.5)), url('${backgroundImages[currentIndex]}')`;
           // currentIndex = (currentIndex + 1) % backgroundImages.length;
       // }

        // Change background image every 10 seconds
        //setInterval(changeBackground, 1000);
    </script>
    
    
</head>
<body>
    <header>
        <h1>Welcome to Your Team Information Page</h1>
        <h1>Your Team Name is -:- ${team.getName()} -:- and Team Current Balance = ${team.getWallet()} and Players are</h1>
    </header>

    <c:choose>
        <c:when test="${not empty msg}">
            <h1>${msg}</h1>
        </c:when>
        <c:otherwise>
            <table>
                <tr>
                    <th>Name</th>
                    <th>Role</th>
                    <th>Price</th>
                    <th>Country</th>
                </tr>

                <c:forEach var="player" items="${players}">
                    <tr>
                        <td>${player.name}</td>
                        <td>${player.role}</td>
                        <td>${player.price}</td>
                        <td>${player.country}</td>
                    </tr>
                </c:forEach>
            </table>
        </c:otherwise>
    </c:choose>

    <div class="back-button">
        <a href="teamhomedummy"><button>Back</button></a>
    </div>
</body>
</html>

