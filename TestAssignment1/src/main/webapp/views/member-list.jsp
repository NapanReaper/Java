<%-- 
    Document   : member-list
    Created on : Sep 7, 2019, 3:04:46 PM
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
        <h3>Member Page</h3>
        <c:if test="${not empty memberList}" var="checkMemberList"> 
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Email</th>
                        <th>Phone</th>
                        <th>Message</th>
                        <th>Role</th>
                        <th>Status</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="m" items="${memberList}" varStatus="counter">
                        <tr>
                            <td>${counter.count}</td>
                            <td>${m.email}</td>
                            <td>${m.phone}</td>
                            <td>${m.message}</td>
                            <td>${m.role}</td>
                            <td> <c:if test = "${m.status eq true}">
                                    <span class="badge badge-primary">Active</span>
                                </c:if>
                                <c:if test = "${m.status ne true}">
                                    <span class="badge badge-danger">Banned</span>
                                </c:if>
                            </td>
                            <td><c:if test = "${m.status eq true}">
                                    <button type="button" class="btn btn-danger" 
                                            onclick="banMember(${m.id})">Ban Member</button>
                                </c:if>
                                <c:if test = "${m.status ne true}">
                                    <button type="button" class="btn btn-success" 
                                            onclick="activateMember(${m.id})">Activate Member</button>
                                </c:if>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>

        </c:if>
        <c:if test="${not checkMemberList}">
            No Member available.
        </c:if>
    </body>
</html>
