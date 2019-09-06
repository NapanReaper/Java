<%-- 
    Document   : movieShow
    Created on : Sep 6, 2019, 3:22:48 PM
    Author     : hoang
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    </head>
    <body>
        <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.6.0/css/font-awesome.min.css" rel="stylesheet">
        <header class="navbar navbar-toggleable-md navbar-inverse bg-inverse">

        </header>
        <main class="container">
            <section class="movies" id="movies">
                <h2>Now Showing Movies</h2>
                <c:if test="${not empty listMovie}">
              
                <div class="row">
                    <c:forEach var="m" items="${listMovie}">
                        <c:if test="${m.status ne 0}">
                        <div class="col-lg-3 col-md-4 col-sm-6">
                            <article class="card">
                                <header class="title-header">
                                    <h3>${m.title}</h3>
                                </header>
                                <div  class="card-block">
                                    <div class="img-card">
                                        <img src="${m.image}" alt="MoviePic" class="w-100" />
                                    </div>
                                    <p class="tagline card-text text-xs-center">Thể loại: ${m.category}</p>
                                    <p class="tagline card-text text-xs-center">Ngày khởi chiếu: ${m.date}</p>
                                    <a href="${m.id}" class="btn btn-primary btn-block"><i class="fa fa-eye"></i> Xem Chi Tiết</a>
                                    <a href="#" class="btn btn-primary btn-block"><i class="fa fa-eye"></i> Watch Now</a>
                                </div>
                            </article>
                        </div>  
                         </c:if>
                    </c:forEach>
                </div>
               
                </c:if>
                <c:if test="${empty listMovie}">
                    <h2> Không tìm thấy phim </h2>
                </c:if>
            </section>
        </main>      
    </body>
</html>
