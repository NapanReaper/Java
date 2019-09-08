<%-- 
    Document   : movie-detail
    Created on : Sep 6, 2019, 1:43:22 PM
    Author     : hoang
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
        <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.4.1.js"></script>
        <link rel="stylesheet" href="resources/css/movieByDate.css">
        <style>
            body {font-family: Arial;}

            /* Style the tab */
            .tab {
                overflow: hidden;
                border: 1px solid #ccc;
                background-color: #f1f1f1;
            }

            /* Style the buttons inside the tab */
            .tab button {
                background-color: inherit;
                float: left;
                border: none;
                outline: none;
                cursor: pointer;
                padding: 14px 16px;
                transition: 0.3s;
                font-size: 17px;
            }

            /* Change background color of buttons on hover */
            .tab button:hover {
                background-color: #ddd;
            }

            /* Create an active/current tablink class */
            .tab button.active {
                background-color: #ccc;
            }

            /* Style the tab content */
            .tabcontent {
                display: none;
                padding: 6px 12px;
                border: 1px solid #ccc;
                border-top: none;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <c:set var="d" value="${movieDetail}"/>
            <div class="row">
                <div class="col-xs-4 item-photo">
                    <img style="max-width:100%;" src="${d.image}" />
                </div>
                <div class="col-xs-5" style="border:0px solid gray">              
                    <div class="container">
                        <div class="row row-flex">                     
                                <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
                                    <div class="price-table pt-bg-red">
                                        <div>
                                            <span>${d.title}</span>           
                                        </div>
                                        <ul>
                                            <li>Khởi chiếu:<fmt:formatDate value="${d.date}" pattern="dd-MMM-yy"/></li>
                                            <li>Loại phim: ${d.category}</li>
                                            <li>Diễn viên: ${d.cast}</li>
                                            <li>Thời lượng: ${d.length}</li>
                                            <li>Ngôn ngữ: ${d.language}</li>
                                        </ul>        
                                    </div>
                                </div>                  
                        </div>
                    </div>
                </div>                              

                <div class="col-xs-9">
                    <ul class="menu-items">                     

                    </ul>
                    <div  style="width:150%;border-top:1px solid silver">                               

                        <div class="tab">
                            <button class="tablinks" onclick="openCity(event, 'description')">Tom tắt nội dung</button>
                            <button class="tablinks" onclick="openCity(event, 'trailer')">Trailer</button>
                            <button class="tablinks" onclick="openCity(event, 'schedule')">Lịch chiếu</button>
                        </div>

                        <div id="description" style="display: block" class="tabcontent">
                            <h3>${d.description}</h3>                                         
                        </div>

                        <div id="trailer" class="tabcontent">
                            <iframe width="100%" height="600"
                                    src="${d.trailer}">
                            </iframe>
                        </div>
                        <div id="schedule" class="tabcontent">                        
                            <div class="container">
                                <div class="row row-flex">
                                    <c:forEach var="c" items="${movieDetail.listSchedule}">
                                        <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
                                            <div class="price-table pt-bg-blue">
                                                <div>
                                                    <span><fmt:formatDate value="${c.date}" pattern="dd-MMM-yy"/></span>           
                                                </div>
                                                <ul>
                                                    <li>${c.t1}</li>
                                                    <li>${c.t2}</li>
                                                    <li>${c.t3}</li>
                                                    <li>${c.t4}</li>
                                                    <li>${c.t5}</li>
                                                </ul>        
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>                 
                    </div>
                </div>		
            </div>

        </div>
        <script>
            function openCity(evt, cityName) {
                var i, tabcontent, tablinks;
                tabcontent = document.getElementsByClassName("tabcontent");
                for (i = 0; i < tabcontent.length; i++) {
                    tabcontent[i].style.display = "none";
                }
                tablinks = document.getElementsByClassName("tablinks");
                for (i = 0; i < tablinks.length; i++) {
                    tablinks[i].className = tablinks[i].className.replace(" active", "");
                }
                document.getElementById(cityName).style.display = "block";
                evt.currentTarget.className += " active";
            }
        </script>

    </body>
</html>
