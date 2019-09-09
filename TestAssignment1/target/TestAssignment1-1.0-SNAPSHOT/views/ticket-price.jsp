<%-- 
    Document   : ticket-price
    Created on : Sep 6, 2019, 10:53:01 PM
    Author     : hoang
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="resources/css/movieByDate.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <style>
            body, html {
                height: 100%;
                margin: 0;
            }

            .bg {
                /* The image used */
                background-image: url("resources/image/movie.png");

                /* Full height */
                height: 100%; 

                /* Center and scale the image nicely */
                background-position: center;
                background-repeat: no-repeat;
                background-size: cover;
            }
        </style>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
            <div class="bg">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
                            <div class="offer offer-default">
                                <div class="shape">
                                    <div class="shape-text">
                                        Price								
                                    </div>
                                </div>
                                <div class="offer-content">
                                    <h3 class="lead">
                                        Thứ 2
                                    </h3>
                                    <p>
                                    <c:forEach var="t" items="${ticketPrice}">
                                    <p>
                                        <fmt:formatNumber type = "number" 
                                                          maxFractionDigits = "3" value = "${t.t_t2}"/> VNĐ</p>

                                </c:forEach>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
                        <div class="offer offer-success">
                            <div class="shape">
                                <div class="shape-text">
                                    Price								
                                </div>
                            </div>
                            <div class="offer-content">
                                <h3 class="lead">
                                    Thứ 3
                                </h3>						
                                <p>
                                    <c:forEach var="t" items="${ticketPrice}">
                                        <p>
                                        <fmt:formatNumber type = "number" 
                                                          maxFractionDigits = "3" value = "${t.t_t3}"/> VNĐ</p>

                                    </c:forEach>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
                        <div class="offer offer-radius offer-primary">
                            <div class="shape">
                                <div class="shape-text">
                                    Price							
                                </div>
                            </div>
                            <div class="offer-content">
                                <h3 class="lead">
                                    Thứ 4
                                </h3>						
                                <p>
                                    <c:forEach var="t" items="${ticketPrice}">
                                       <p>
                                        <fmt:formatNumber type = "number" 
                                                          maxFractionDigits = "3" value = "${t.t_4}"/> VNĐ</p>

                                    </c:forEach>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
                        <div class="offer offer-info">
                            <div class="shape">
                                <div class="shape-text">
                                    Price							
                                </div>
                            </div>
                            <div class="offer-content">
                                <h3 class="lead">
                                    Thứ 5
                                </h3>						
                                <p>
                                    <c:forEach var="t" items="${ticketPrice}">
                                        <p>
                                        <fmt:formatNumber type = "number" 
                                                          maxFractionDigits = "3" value = "${t.t_5}"/> VNĐ</p>

                                    </c:forEach>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
                        <div class="offer offer-warning">
                            <div class="shape">
                                <div class="shape-text">
                                    Price							
                                </div>
                            </div>
                            <div class="offer-content">
                                <h3 class="lead">
                                    Thứ 6
                                </h3>						
                                <p>
                                    <c:forEach var="t" items="${ticketPrice}">
                                         <p>
                                        <fmt:formatNumber type = "number" 
                                                          maxFractionDigits = "3" value = "${t.t_t6}"/> VNĐ</p>

                                    </c:forEach>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
                        <div class="offer offer-radius offer-danger">
                            <div class="shape">
                                <div class="shape-text">
                                    Price							
                                </div>
                            </div>
                            <div class="offer-content">
                                <h3 class="lead">
                                    Thứ 7 & CN
                                </h3>						
                                <p>
                                    <c:forEach var="t" items="${ticketPrice}">
                                        <p>
                                        <fmt:formatNumber type = "number" 
                                                          maxFractionDigits = "3" value = "${t.t_t7}"/> VNĐ</p>

                                    </c:forEach>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
