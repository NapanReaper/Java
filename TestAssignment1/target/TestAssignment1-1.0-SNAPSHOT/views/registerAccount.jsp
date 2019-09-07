<%-- 
    Document   : registerAccount
    Created on : Sep 7, 2019, 12:37:45 PM
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
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.4.1.js"></script>
        <script src="resources/js/login.js" type="text/javascript"></script>
        <script>
            function abc() {
                var password = $("#password").val();
                var confirm_password = $("#confirm").val();
                if (password != confirm_password) {
                    $('#message').html('Not Matching').css('color', 'red');
                } else {
                    $('#message').html('Matching').css('color', 'green');
                }
            }
        </script>
        <style>
            .note
            {
                text-align: center;
                height: 80px;
                background: -webkit-linear-gradient(left, #0072ff, #8811c5);
                color: #fff;
                font-weight: bold;
                line-height: 80px;
            }
            .form-content
            {
                padding: 5%;
                border: 1px solid #ced4da;
                margin-bottom: 2%;
            }
            .form-control{
                border-radius:1.5rem;
            }
            .btnSubmit
            {
                border:none;
                border-radius:1.5rem;
                padding: 1%;
                width: 20%;
                cursor: pointer;
                background: #0062cc;
                color: #fff;
            }
        </style>      
    </head>
    <body>
        <div class="container register-form">
            <div class="form">
                <div class="note">
                    <p>Create New Account for booking movie ticket</p>
                </div>

                <div class="form-content">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Username</label>
                                <input type="text" class="form-control" 
                                       placeholder="Your Email *" id="email"/>
                            </div>
                            <div class="form-group">
                                <label>Full name</label>
                                <input type="text" class="form-control" 
                                       placeholder="Fullname *" id="fullname"/>
                            </div>
                            <div class="form-group">
                                <label>Phone Number</label>
                                <input type="text" class="form-control" placeholder="Phone Number *" id="phone"/>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Password</label>
                                <input type="password" class="form-control" placeholder="Your Password *"
                                       id="password"/>
                            </div>
                            <div class="form-group">
                                <label>Confirm Password</label>
                                <input type="password" class="form-control" placeholder="Confirm Password *"
                                       id="confirm" onchange="abc();"/>
                                <span id='message'></span>
                            </div>
                        </div>
                    </div>
                    <button type="button" class="btnSubmit" onclick="saveNewCustomer()">Submit</button>
                </div>
            </div>
        </div>

    </body>
</html>
