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
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="resources/js/admin.js" type="text/javascript"></script>
    </head>
    <body>
        <h1>${member.role}'s Page</h1>
        <div style="float:left;margin-left: 50px;"  >
            <div style="float:left; width: fit-content;padding-bottom: 20px">
                <a class="btn btn-primary" 
                   href="/TestAssignment1/loadAdminInfo?id=${member.id}" 
                   role="button">Account Info</a>
            </div>
            <div style="float:bottom; width: fit-content;padding-bottom: 20px">
                <button type="button" class="btn btn-secondary" 
                        onclick="manageMovie()">Manage Movie</button>
            </div>
            <div style="float:bottom; width: fit-content;padding-bottom: 20px">
                <button type="button" 
                        class="btn btn-secondary" onclick="manageMember()">Manage Member</button>
            </div>
        </div>
        <div id="content"style="float: left;margin-left: 50px"></div>
    </body>
</html>
