<%-- 
    Document   : movieByDate
    Created on : Sep 7, 2019, 6:42:12 PM
    Author     : hoang
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="resources/css/movieByDate.css">
    </head>
    <body>
        <div class="container">
    <div class="row row-flex">
        <c:if test="${not empty movieByDate}">
          <c:forEach var="c" items="${movieByDate}">
        <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
            <div class="price-table pt-bg-green">
                <div>
                    <span>${c.movie_shedule.title}</span>           
                </div>
                <ul>
                    <li>${c.t1}</li>
                    <li>${c.t2}</li>
                    <li>${c.t3}</li>
                    <li>${c.t4}</li>
                    <li>${c.t5}</li>
                </ul>        
            </div>
        </div>
              </c:forEach>
    </c:if>
        <c:if test="${empty movieByDate}">
            <h2> Không có phim nào chiếu vào ngày bạn chọn </h2>
        </c:if>
    </div>
        </div>
    </body>
</html>
