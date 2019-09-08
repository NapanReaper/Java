<%-- 
    Document   : admin-info
    Created on : Sep 7, 2019, 4:35:26 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="dns-prefetch" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="resources/js/admin.js" type="text/javascript"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="resources/css/login.css">

        <link rel="icon" href="Favicon.png">

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    </head>
    <body>
        <div style="float: left;padding: 20px" >
            <div>
                <h1>
                    ${adminInfo.role}'s page</h1>
                <img src="https://www.bemanistyle.com/wp-content/uploads/2018/01/Linux-Avatar-300px.png" 
                     alt="Avatar" style=" border-radius: 50%; width: 100px;height: 100px;">
                <br/>
                <a class="btn btn-primary" 
                   href="/TestAssignment1/home" 
                   role="button"style="margin-top:20px"><span class="glyphicon glyphicon-log-out"></span>Logout</a>
            </div>
        </div>
        <main class="login-form">
            <div class="cotainer">
                <div class="row justify-content-center">
                    <div class="col-md-8">
                        <div class="card">
                            <div class="card-header">Login information</div>
                            <div class="card-body">
                                <form action="changePassword" method="POST">
                                    <input type="hidden" name="id" value="${adminInfo.id}" />
                                    <div class="form-group row">
                                        <label>Username</label>
                                        <input type="text" 
                                               class="form-control" readonly
                                               required value="${adminInfo.email}"
                                               placeholder="Email">
                                    </div>
                                    <div class="form-group row">
                                        <input type="hidden" value="${adminInfo.password}" id="oldPassword"/>
                                        <label>Old Password</label>
                                        <input type="password" 
                                               class="form-control" 
                                               onchange="confirmPassword()"
                                               id ="confirmOld"
                                               required placeholder="Old Password">
                                        <span id='messageOld'></span>
                                    </div>                                   
                                    <div class="form-group row">
                                        <label>New Password</label>
                                        <input type="password" 
                                               class="form-control"  id="newPassword"
                                               name="password" onchange="confirmNewPassword()"
                                               required placeholder ="New Password">
                                    </div>                                   
                                    <div class="form-group row">
                                        <label>Re Password</label>
                                        <input type="password" 
                                               class="form-control" onchange="confirmNewPassword()"
                                               id ="confirmNew"
                                               required placeholder="Re Password">
                                        <span id='messageNew'></span>
                                    </div>                                   
                                    <div class="form-group row">
                                        <div class="col-md-6 offset-md-4">
                                            <button type="submit" class="btn btn-primary">
                                                Change Password
                                            </button>                                            
                                        </div>
                                        <span style="color: green">${DONE}</span>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </body>
</html>
