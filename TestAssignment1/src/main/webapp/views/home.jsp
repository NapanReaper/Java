<%-- 
    Document   : home
    Created on : Sep 6, 2019, 12:01:00 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="dns-prefetch" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600" rel="stylesheet" type="text/css">

        <link rel="stylesheet" href="resources/css/login.css">

        <link rel="icon" href="Favicon.png">

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.4.1.js"></script>
        <script src="resources/js/login.js" type="text/javascript"></script>
    </head>
    <body>
        <main class="login-form">
            <div class="cotainer">
                <div class="row justify-content-center">
                    <div class="col-md-8">
                        <div class="card">
                            <div class="card-header">Please Sign in</div>
                            <div class="card-body">
                                <form action="login" method="POST">
                                    <div class="form-group row">
                                        <input type="text" 
                                               class="form-control" 
                                               name="username" 
                                               required autofocus 
                                               placeholder="Email">
                                    </div>
                                    <div class="form-group row">
                                        <input type="password" 
                                               class="form-control" 
                                               name="password" 
                                               required placeholder="Password">
                                    </div>                                   
                                    <div class="form-group row">
                                        <div class="col-md-6 offset-md-4">
                                            <button type="submit" class="btn btn-primary">
                                                Login
                                            </button>                                            
                                        </div>
                                        <span style="color: red">${ERROR}</span>
                                    </div>
                                    <button type="button" class="btn btn-primary" onclick="loadRegister()">Click here to Register</button>
                            </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <div id="content"> 
        </div>
    </body>
</html>
