<%-- 
    Document   : admin
    Created on : Sep 6, 2019, 12:23:35 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
        <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.4.1.js"></script>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="resources/js/admin.js" type="text/javascript"></script>
    </head>
    <body>
        <h1>${member.role}'s Page</h1>
        <div style="float:left">
            <button onclick="manageMovie()">Manage Movie</button>
        </div>
        <div id="content"style="float: left;margin-left: 50px"></div>
    </body>
</html>
