<%-- 
    Document   : movie-list
    Created on : Sep 6, 2019, 2:12:39 PM
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
        <h3>Movie Page</h3>
        <button type="button" class="btn btn-info" onclick="loadMovieForm()">Add new Movie</button>
        <br/>
        <c:if test="${not empty movieList}" var="checkMovieList"> 
            <c:forEach var="m" items="${movieList}">
                <div class="card bg-light mb-3" style="width: 14rem;float: left;margin-left: 50px;margin-top: 20px;" >
                    <img class="card-img-top" src="${m.image}" alt="Card image cap"  height="200px">
                    <div class="card-body">
                        <h5 class="card-title">${m.title}</h5>
                        <p class="card-text">${m.description}</p>
                    </div>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item"><p>Length: ${m.length} minutes</p></li>
                        <li class="list-group-item">
                            <p>Status: 
                                <c:if test = "${m.status eq true}">
                                    <span class="badge badge-primary">Active</span>
                                </c:if>
                                <c:if test = "${m.status ne true}">
                                    <span class="badge badge-danger">Not Active</span>
                                </c:if>                            
                            </p>
                        </li>
                        <li class="list-group-item">
                            <p>Category: </p> 
                            <select name="category" multiple="multiple">
                                <c:forEach var="c" items="${m.categories}">
                                    <option value="${c.id}">${c.name}</option>                                   
                                </c:forEach>
                            </select>

                        </li>
                    </ul>
                    <div class="card-body" style="border: 1">
                        <c:if test = "${m.status eq true}">
                            <button type="button" class="btn btn-danger" onclick="deactivateMovie(${m.id})">Deactivate Movie</button>
                        </c:if>
                        <c:if test = "${m.status ne true}">
                            <button type="button" class="btn btn-success" onclick="activateMovie(${m.id})">Activate Movie</button>
                        </c:if>
                        <button type="button" class="btn btn-info" onclick="getMovieInfo(${m.id})">Info</button>
                    </div>
                </div>
            </div>
        </c:forEach>
    </c:if>
    <c:if test="${not checkMovieList}">
        <h3>No movie available</h3>
    </c:if>
</body>
</html>
