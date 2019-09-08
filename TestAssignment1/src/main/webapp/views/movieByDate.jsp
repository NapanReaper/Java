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
    </head>
    <body>
        <c:forEach var="c" items="${movieByDate}">
        <table border="1">
            <thead>
                <tr>
                    <th>${c.movie_shedule.title}</th>
                </tr>
            </thead>
            <tbody>
                <tr><td>${c.t1}</td></tr>
                <tr><td>${c.t2}</td></tr>
                <tr><td>${c.t3}</td></tr>
                <tr><td>${c.t4}</td></tr>               
            </tbody>
        </table>
        </c:forEach>
    </body>
</html>
