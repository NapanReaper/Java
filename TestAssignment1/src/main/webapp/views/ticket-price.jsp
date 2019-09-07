<%-- 
    Document   : ticket-price
    Created on : Sep 6, 2019, 10:53:01 PM
    Author     : hoang
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    </head>
    <body>
       <div class="container">
    <div class="row col-md-6 col-md-offset-2 custyle">
    <table class="table table-striped custab">
    <thead>
        <tr>
            <th>t2,4,6</th>
            <th>t3,5</th>
            <th>t7,cn</th>         
        </tr>
    </thead>
    <c:forEach var="t" items="${ticketPrice}">
            <tr>
                <td>${t.t_t2}</td>
                <td>${t.t_t3}</td>
                <td>${t.t_t7}</td>              
            </tr>          
            </c:forEach>
    </table>
    </div>
</div>
    </body>
</html>
