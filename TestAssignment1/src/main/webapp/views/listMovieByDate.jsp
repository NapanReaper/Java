<%-- 
    Document   : schedule
    Created on : Sep 7, 2019, 3:25:25 PM
    Author     : hoang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.4.1.js"></script>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    </head>
    <body>

        <jsp:include page="header.jsp"></jsp:include>
        Date: <input type="date" id="scheduleDate" onchange="loadMovie();" >
        <div id="movie-list" >

        </div>
        <script>
            function loadMovie() {
                var search = $("#scheduleDate").val();
                $.ajax({
                    type: 'POST',
                    url: "movieByDate",
                    data: {search: search},
                    success: function (a) {
                        $("#movie-list").html(a);
                    }
                });
            }
            $(document).ready(function () {
                loadMovie();
            });
        </script>

    </body>
</html>
