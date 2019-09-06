<%-- 
    Document   : movie-form
    Created on : Sep 6, 2019, 3:00:22 PM
    Author     : Admin
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Movie Form</h1>
        <c:choose>
            <c:when test="${not empty movie.id}">
                <h3>Update ${movie.title}</h3>
                <c:set value="${movie.date}" var="dateString" />
                <fmt:formatDate value="${dateString}" var="dateObject" 
                                pattern="yyyy-MM-dd" />
            </c:when>
            <c:otherwise>
                <h3>Create a new Movie</h3>
            </c:otherwise>
        </c:choose>
        <br/>
        <div class="input-group mb-3">
            <div class="input-group-prepend">
                <span class="input-group-text" id="inputGroup-sizing-default">Image Url</span>
            </div>
            <input type="text" class="form-control" 
                   aria-label="Sizing example input" 
                   aria-describedby="inputGroup-sizing-default"
                   value="${movie.image}" id="image" onchange="loadImageFromUrl()"/>
        </div>
        <img src="${movie.image}"alt="Movie image cap" width="200px" height="225px" id="my_image"/><br/>
        <div class="input-group mb-3">
            <div class="input-group-prepend">
                <span class="input-group-text" id="inputGroup-sizing-default">Title</span>
            </div>
            <input type="text" class="form-control" 
                   aria-label="Sizing example input" 
                   aria-describedby="inputGroup-sizing-default"
                   value="${movie.title}" id="title"/>
        </div>
        <div class="input-group mb-3">
            <div class="input-group-prepend">
                <span class="input-group-text" id="inputGroup-sizing-default">Category</span>
            </div>
            <input type="text" class="form-control" 
                   aria-label="Sizing example input" 
                   aria-describedby="inputGroup-sizing-default"
                   value="${movie.category}" id="category"/>
        </div>
        <div class="input-group mb-3">
            <div class="input-group-prepend">
                <span class="input-group-text" id="inputGroup-sizing-default">Cast</span>
            </div>
            <input type="text" class="form-control" 
                   aria-label="Sizing example input" 
                   aria-describedby="inputGroup-sizing-default"
                   value="${movie.cast}" id="cast"/>
        </div>
        <div class="input-group mb-3">
            <div class="input-group-prepend">
                <span class="input-group-text" id="inputGroup-sizing-default">Length(minutes)</span>
            </div>
            <input type="number" class="form-control" 
                   aria-label="Sizing example input" 
                   aria-describedby="inputGroup-sizing-default"
                   value="${movie.length}" id="length"/>
        </div>
        <div class="input-group mb-3">
            <div class="input-group-prepend">
                <span class="input-group-text" id="inputGroup-sizing-default">Premiere Date</span>
            </div>
            <input type="date" id="date" value="${dateObject}" />
        </div>
        <div class="input-group mb-3">
            <div class="input-group-prepend">
                <span class="input-group-text" id="inputGroup-sizing-default">Language</span>
            </div>
            <input type="text" class="form-control" 
                   aria-label="Sizing example input" 
                   aria-describedby="inputGroup-sizing-default"
                   value="${movie.language}" id="language"/>
        </div>
        <div class="input-group mb-3">
            <div class="input-group-prepend">
                <span class="input-group-text" id="inputGroup-sizing-default">Description</span>
            </div>
            <input type="text" class="form-control" 
                   aria-label="Sizing example input" 
                   aria-describedby="inputGroup-sizing-default"
                   value="${movie.description}" id="description"/>
        </div>
        <div class="input-group mb-3">
            <div class="input-group-prepend">
                <span class="input-group-text" id="inputGroup-sizing-default">Description</span>
            </div>
            <input type="text" class="form-control" 
                   aria-label="Sizing example input" 
                   aria-describedby="inputGroup-sizing-default"
                   value="${movie.trailer}" id="trailer" onchange="loadClipFromUrl()"/>
        </div>
        <div>
            <iframe width="200" height="200" id="trailer-content" 
                    src="${movie.trailer}">
            </iframe>
        </div>
        <c:choose>
            <c:when test="${not empty movie.id}" >
                <br/>
                <button type="button" class="btn btn-primary" 
                        onclick="updateMovie(${movie.id})">Save Movie</button>
            </c:when>
            <c:otherwise>
                <br/>
                <button type="button" class="btn btn-success"
                        onclick="createMovie()">Create Movie </button>
            </c:otherwise>
        </c:choose>
    </body>
</html>
