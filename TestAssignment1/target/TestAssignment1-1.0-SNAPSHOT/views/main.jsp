<%-- 
    Document   : home
    Created on : Sep 4, 2019, 7:43:42 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>     
        <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.4.1.js"></script>  
    </head>
    <body>     
        <input style="float: right;margin-right: 50px;width: 30%" 
               type="text" id="searchMovie" onkeyup="loadMovie();" placeholder="Search..."/>        

        <div style="width: 100%" id="movie-list">

        </div>       
        <script>
            function loadMovie() {
                var search = $("#searchMovie").val();
                $.ajax({
                    type: 'GET',
                    url: "listMovie",
                    data: {search: search},
                    success: function (a) {
                        $("#movie-list").html(a);
                    }
                });
            }
            $(function () {
                loadMovie()
            });
        </script>
    </body>
</html>
