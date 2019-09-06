<%-- 
    Document   : home
    Created on : Sep 4, 2019, 7:43:42 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    </head>
    <body>
        <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.6.0/css/font-awesome.min.css" rel="stylesheet">

        <header class="navbar navbar-toggleable-md navbar-inverse bg-inverse">
            <div class="container">
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <a class="navbar-brand" href="#"><i class="fa fa-cloud"></i> WatchX</a>
                <!-- Menu -->
                <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
                    <ul class="navbar-nav mr-auto mt-2 mt-md-0">
                        <li class="nav-item active">
                            <a class="nav-link" href="#">Home</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Movies
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                <a class="dropdown-item" href="#">Edit</a>
                                <a class="dropdown-item" href="#">Edit</a>
                                <a class="dropdown-item" href="#">Edit</a>
                            </div>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Series
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                <a class="dropdown-item" href="#">Edit</a>
                                <a class="dropdown-item" href="#">Edit</a>
                                <a class="dropdown-item" href="#">Edit</a>
                            </div>
                        </li>
                    </ul>
                    <form class="form-inline my-2 my-lg-0">
                        <input class="form-control mr-sm-2" type="text" placeholder="Search...">
                        <button class="btn btn-success my-2 my-sm-0" type="button"><i class="fa fa-search"></i></button>
                    </form>
                </div>
            </div>
        </header>
        <main class="container">
            <section class="movies" id="movies">
                <h2>Featured Movies</h2>
                <div class="row">
                    <c:forEach var="m" items="${movieList}">
                    <div class="col-lg-3 col-md-4 col-sm-6">
                        <article class="card">
                            <header class="title-header">
                                <h3>${m.title}</h3>
                            </header>
                            <div class="card-block">
                                <div class="img-card">
                                    <img src="${m.image}" alt="Movie" class="w-100" />
                                </div>
                                <p class="tagline card-text text-xs-center">Thể loại: ${m.category}</p>
                                 <p class="tagline card-text text-xs-center">Ngày khởi chiếu: ${m.date}</p>
                                 <a href="${m.id}" class="btn btn-primary btn-block"><i class="fa fa-eye"></i> Xem Chi Tiết</a>
                                <a href="#" class="btn btn-primary btn-block"><i class="fa fa-eye"></i> Watch Now</a>
                            </div>
                        </article>
                    </div>       
                    </c:forEach>
                    </div>          
                    
                </div>
            </section>
        </main>
        <footer class="footer text-muted text-xs-center text-md-left bg-inverse">
            <div class="container">
                <ul class="footer-links">
                    <li><a href="#">Contact</a></li>
                    <li><a href="#">Terms</a></li>
                    <li><a href="#">DMCA</a></li>
                </ul>
                <p>© 2016 - All rights reserved.</p>
            </div>
        </footer>
    </body>
</html>
