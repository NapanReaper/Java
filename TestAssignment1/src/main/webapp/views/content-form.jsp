<%-- 
    Document   : content-form
    Created on : Aug 23, 2019, 3:47:43 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Content Page</title>
    </head>
    <body>
        <c:choose>
            <c:when test="${not empty content.id}">
                Update ${content.tittle}              
            </c:when>
            <c:otherwise>
                Create a new Content    
            </c:otherwise>
        </c:choose>
        <input type="hidden" id="authorId" value="${content.author.id}" />   
        <br/>
        Title: <input type="text" name="tittle" value="${content.tittle}" />
        <br/>
        Brief: <input type="text" name="brief" value="${content.brief}" />
        Sort: <input type="text" name="sort" value="${content.sort}" />
        <br/>
        Content: <br/>
        <textarea name="content" rows="5" style="resize: none; height: 100px; width: 100%;" >${content.content}</textarea>
        <br/>
        <c:choose>
            <c:when test="${not empty content.id}" >
                <button onclick="updateContent(${content.id})">Save</button>
            </c:when>
            <c:otherwise>
                <button onclick="createContent()">Create</button>
            </c:otherwise>
        </c:choose>    

    </body>
</body>
</html>
