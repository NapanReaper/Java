<%-- 
    Document   : add-user
    Created on : Aug 17, 2019, 8:18:49 PM
    Author     : Admin
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
        <link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <script>
            $('#password, #password_confirm').on('change', function () {
                if ($('#password').val() == $('#password_confirm').val()) {
                    $('#message').html('Matching').css('color', 'green');
                } else
                    $('#message').html('Not Matching').css('color', 'red');
            });
        </script>

    </head>
    <body>
        <form class="form-horizontal" action='register' method="POST"id="registerForm">
            <fieldset>
                <div id="legend">
                    <legend class="">Register</legend>
                </div>
                <div class="control-group">
                    <!-- Username -->
                    <div class="controls">
                        <input type="text" name="username" 
                               placeholder="Username" 
                               class="input-xlarge" required="required">
                    </div>
                </div>
                <div class="control-group">
                    <!-- E-mail -->
                    <div class="controls">
                        <input type="text" name="email" 
                               placeholder="E-mail" 
                               class="input-xlarge" required="required">
                    </div>
                </div>
                <div class="control-group">
                    <!-- Password-->
                    <div class="controls">
                        <input type="password"  name="password" 
                               placeholder="Password" 
                               class="input-xlarge" required="required">
                    </div>
                </div>
                <div class="control-group">
                    <!-- Password -->
                    <div class="controls">
                        <input type="password" 
                               name="password_confirm" 
                               placeholder="Re Password" class="input-xlarge">
                        <span id='message'></span>
                    </div>
                </div>
                <span style="color: red">${ERROR}</span>
                <div class="control-group">
                    <!-- Button -->
                    <div class="controls">
                        <button class="btn btn-success" onclick="validatePassword()">Register</button>
                    </div>
                </div>
                <a href="/TestAssignment1/">Click here to Login</a>
            </fieldset>
        </form>
    </body>
</html>
