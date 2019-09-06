<%-- 
    Document   : content-view
    Created on : Aug 23, 2019, 7:32:11 PM
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
        <input class="form-control" id="txtSearch" onkeyup="searchContent();" placeholder="Search Content"/>
        <c:if test="${not empty contents}" >
            <table border="1">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Title</th>
                        <th>Brief</th>
                        <th>Created when</th>
                        <th>Updated when</th>
                        <th colspan="2" >Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="content" items="${contents}" varStatus="counter" >
                        <tr>
                            <td>${content.id}</td>
                            <td>${content.tittle}</td>
                            <td>${content.brief}</td>
                            <td>${content.createDate}</td>
                            <td>${content.updateTime}</td>
                            <td>
                                <input type="hidden" id="authorId" value="${content.author.id}" />                                
                                <button onclick="loadContentById(${content.id})">
                                    Update Content
                                </button>
                            </td>
                            <td>
                                <button onclick="remove(${content.id})">
                                    Remove Content
                                </button>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </c:if>
        <c:if test="${empty contents}" > 
            <span>You have no contents created...</span>
        </c:if>
        <div id="search-content">
           
        </div>
    </body>
</html>
