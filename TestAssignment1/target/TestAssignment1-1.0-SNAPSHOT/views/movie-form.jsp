<%-- 
    Document   : movie-form
    Created on : Sep 6, 2019, 3:00:22 PM
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
        <h1>Movie Form</h1>
        <c:choose>
            <c:when test="${not empty schedule.id}">
                Update ${schedule.id}             
            </c:when>
            <c:otherwise>
                Create a new Schedule   
            </c:otherwise>
        </c:choose>
        <br/>
        <c:if test="${not empty clubs}">
            Away <select id="away">
                <c:forEach var="club" items="${clubs}">
                    <option value="${club.id}">${club.name}</option>
                </c:forEach>
            </select><br/>
            Home <select id="home">
                <c:forEach var="club" items="${clubs}">
                    <option value="${club.id}">${club.name}</option>
                </c:forEach>
            </select>
        </c:if>
        <br/>
        <c:choose>
            <c:when test="${not empty schedule.id}" >
                <button onclick="updateScedule(${schedule.id})">Save</button>
            </c:when>
            <c:otherwise>
                <button onclick="createSchedule()">Create</button>
            </c:otherwise>
        </c:choose>
    </body>
</html>
