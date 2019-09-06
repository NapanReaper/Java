<%-- 
    Document   : content-search
    Created on : Aug 23, 2019, 11:18:56 PM
    Author     : Admin
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
        <c:if test="${not empty searchContents}" >
            <h1>List Content</h1>
            <table border="1">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Title</th>
                        <th>Brief</th>
                        <th>Created when</th>
                        <th>Updated when</th>
                        <th> Author</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="content" items="${searchContents}" varStatus="counter" >
                        <tr>
                            <td>${content.id}</td>
                            <td>${content.tittle}</td>
                            <td>${content.brief}</td>
                            <td>${content.createDate}</td>
                            <td>${content.updateTime}</td>
                            <td>${content.author.id}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </c:if> 
        <c:if test="${empty searchContents}" > 
            <span>No record...</span>
        </c:if>
    </body>
</html>
