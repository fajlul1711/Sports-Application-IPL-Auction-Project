<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" isELIgnored="false"%>
    
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="special" %>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #e0e0e0; /* Different background color */
        }

        .header {
            background-color: #151269;
            color: #fff;
            text-align: center;
            padding: 15px;
        }

        h1 {
            text-align: center;
        }

        table {
            width: 50%;
            border-collapse: collapse;
            margin: 20px auto;
            
        }

        th, td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: #151269;
            color: #fff;
        }

        a button {
            background-color: #4CAF50;
            color: white;
            padding: 8px 22px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            text-decoration: none;
            display: inline-block;
        }

        a button:hover {
            background-color: #45a049;
        }

        .back-btn {
            margin-top: 20px;
            text-align: center;
        }
    </style>

</head>


	<div class="header">
        <h1>Welcome to view team Player name</h1>
	
   	</div>

<body>
<%	
String msg= (String)request.getAttribute("msg");
if(msg!=null){%>
	
		<h1>${msg}</h1>
<% }else{%>
	
	<table border="1">
	<tr>
	<th>Name</th>
	<th>Role</th>
	
	
	</tr>
	
	<special:forEach var="players" items="${players}">
	
	<tr>
	<td>${players.getName()}</td>
	<td>${players.getRole()}</td>
	</tr>
	
	</special:forEach>
	
	</table>
	
	
<% }

%>

<div class="back-btn">
        <a href="managementhome.jsp"><button>Back</button></a>
    </div>

</body>
</html>