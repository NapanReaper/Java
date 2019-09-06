<%-- 
    Document   : update-user
    Created on : Aug 17, 2019, 8:37:38 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> ${memberInfo.username}'s Page</title>
        <link rel="stylesheet" href="resources/css/main.css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.4.1.js"></script>
        <script src="resources/js/main.js"></script>
    </head>
    <body>
        <div class="main">
            <div class="header">
                <ul>
                    <li>                        
                        <button data-id="${memberInfo.id}" onclick="loadViewProfile(${memberInfo.id})" name="btnView">View Profile</button>
                    </li>
                    <li>
                        <button onclick="logout()" >Log out</button>
                    </li>
                </ul>
            </div>
            <div class="content">
                <div class="left">
                    <button onclick="loadContentList(${memberInfo.id})">View Content</button>
                    <button onclick="loadContentForm(${memberInfo.id})">Form Content</button>
                </div>        
                <div class="right">            
                    <div id="content">
                    </div>
                </div>
            </div>        
        </div>  
    </body>
</html>
