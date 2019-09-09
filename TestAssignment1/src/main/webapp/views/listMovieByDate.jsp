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
        <title>Trang tìm kiếm</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <style>
            body, html {
                height: 100%;
                margin: 0;
            }

            .bg {
                /* The image used */
                background-image: url("resources/image/movie.png");

                /* Full height */
                height: 100%; 

                /* Center and scale the image nicely */
                background-position: center;
                background-repeat: no-repeat;
                background-size: cover;
            }
        </style>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <div class="bg">
            <h1 style="color: red;margin-left: 800">Chọn ngày</h3> <input style="margin-left: 680;width: 31%" type="date" id="scheduleDate" onchange="loadMovie();" >
            <div style="margin-left: 600" id="movie-list" >
            </div>

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
        </script>

    </body>
</html>
