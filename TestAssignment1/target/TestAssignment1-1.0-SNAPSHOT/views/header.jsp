<%-- 
    Document   : header
    Created on : Sep 7, 2019, 7:06:26 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body >
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="main">Trang chủ</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="listMovieByDate">Xem lịch chiếu</a>
                    </li>
                     <li class="nav-item active">
                        <a class="nav-link" href="ticket-price">Xem giá vé</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="home">Đăng nhập</a>
                    </li>
                </ul>                
            </div>
        </nav>
    </body>
</html>
