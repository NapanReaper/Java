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
        <link rel="stylesheet" href="resources/css/login.css">
        <link rel="icon" href="Favicon.png">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="resources/js/admin.js" type="text/javascript"></script>
    </head>
    <body>
        <jsp:include page="admin-header.jsp"></jsp:include>
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
