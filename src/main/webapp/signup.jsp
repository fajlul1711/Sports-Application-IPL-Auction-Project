

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup Page</title>
    <style>
       
        
        body {
		    font-family: 'Arial', sans-serif;
		    margin: 0;
		    padding: 0;
		    background-color: #f2f2f2;
		    background-size: 100% auto; /* Set width to 100% */
		}
        

        header {
            background: #151269;
            color: #fff;
            padding: 10px;
            text-align: center;
           
        }

        nav {
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

        section {
            padding: 20px;
            margin: 20px;
            background-color: none;
        }

		footer {
            background-color: #333;
            padding: 10px;
            text-align: center;
            color: white;
            position: fixed;
            bottom: 0;
            width: 100%;
        }

       form {
          	max-width: 400px;
            margin:20px auto;
            background-color: rgba(255, 255, 255, 0.8);
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);  
            font-size: 25px;
            
        } 
        
    

         input[type="radio"] {
            appearance: none;
            -webkit-appearance: none;
            -moz-appearance: none;
            width: 20px; /* Set the width of the square */
            height: 20px; /* Set the height of the square */
            border: 2px solid #555; /* Set border color for the square */
            border-radius: 3px; /* Set border radius for a slightly rounded appearance */
            outline: none;
            cursor: pointer;
            margin-right: 10px;
            font-size: 20px;
        }

        /* Style for the checked state */
        input[type="radio"]:checked {
            background-color: #4CAF50; /* Background color for the checked state */
            border-color: #4CAF50; /* Border color for the checked state */
        }

        /* Style for the check mark in the checked state */
        input[type="radio"]:checked::before {
            content: '\2713'; /* Unicode check mark character */
            display: block;
            text-align: center;
            line-height: 20px; /* Set line height to vertically center the check mark */
            color: white; /* Color of the check mark */
        }
        
        form a{
        	color: red;
        }
		
		form label {
        	color: purple; 
        	font-weight: 600;
        }
		
		
        button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        button:hover {
            background-color: #45a049;
            
            
        /**Style for footer**/    
        
      
            
        }
    </style>
    <script>
        // JavaScript for background image slider
        let currentIndex = 0;
        const images = ['https://assets.bcci.tv/bcci/photos/7000/b6ef3a59-9d3b-4ae9-bd26-9f3aebee2468.jpg',
        	'https://icccricketschedule.gumlet.io/wp-content/uploads/2021/02/IPL-2021-Schedule-1.jpg', 
        	'https://assets.bcci.tv/bcci/photos/7000/ba65b485-e544-4e9a-ac4e-7547e01729e1.jpg',
        	'https://assets.bcci.tv/bcci/photos/7000/ed5335d5-b88c-4e96-bc38-b18f1a31bf94.jpg',
        	'https://karnatakastateopenuniversity.in/wp-content/uploads/2022/02/ipl-auction-Live-scaled.jpg',
        	'https://i0.wp.com/www.sportzfront.com/wp-content/uploads/2022/06/TATA-IPL-2022.jpg',
        	'https://img1.hscicdn.com/image/upload/f_auto,t_ds_w_960,q_50/lsci/db/PICTURES/CMS/360800/360821.jpg'
        	];

        function changeBackground() {
            document.body.style.backgroundImage = `url('${images[currentIndex]}')`;
            //document.body.style.backgroundSize = `cover`;
            currentIndex = (currentIndex + 1) % images.length;
            setTimeout(changeBackground, 2000); // Change image every 5 seconds
        }

        document.addEventListener('DOMContentLoaded', changeBackground);
    </script>
</head>
<body>

    <header>
       <h1><marquee direction="left" scrollamount="13">Welcome to IPL Auction 2023-2024 Session</marquee></h1>
    </header>
    
   	<nav>
	    <img src="https://www.iplt20.com/assets/images/ipl-logo-new-old.png" alt="Logo" >
	    <a href="signup.jsp">Home</a>
	    <a href="https://www.iplt20.com/about/about-us">About</a>
	    <a href="contactUs.jsp">Contact</a>
	    
	    <a href="https://www.iplt20.com/photos">Galleries</a>
	    
	</nav>
	
    <section>
        <form action="signup" method="post">
            <h2>Choose Your Role</h2>
            <input type="radio" name="role" value="management" required="required"> <label>Management</label> <br><br>
            <input type="radio" name="role" value="team" required="required"><label>Team</label><br><br>
            <input type="radio" name="role" value="player" required="required"><label>Player</label><br><br>
            <button type="submit">Submit</button><br><br>
            <a href="index.jsp">Already have an account?</a>
            
        </form>
        
    </section>
    
    
    
    <footer>
        &copy; 2023 IBOH&#8482; 2023 Contributed by Fajlul_Haque. All rights reserved.
    </footer>
</body>
</html>


