<%-- 
    Document   : movie-detail
    Created on : Sep 6, 2019, 1:43:22 PM
    Author     : hoang
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    </head>
   <body>
        <div class="container">
            <c:set var="d" value="${movieDetail}"/>
        	<div class="row">
               <div class="col-xs-4 item-photo">
                    <img style="max-width:100%;" src="${d.image}" />
                </div>
                <div class="col-xs-5" style="border:0px solid gray">
                    <!-- Datos del vendedor y titulo del producto -->
                    <h3>${d.title}</h3>    
                    <table>
                        
                        <tr><td>Khởi chiếu: ${d.date}</td></tr>
                        <tr> <td>Loại phim: ${d.category}</td></tr>
                        <tr> <td>Diễn viên: ${d.cast}</td></tr>
                        <tr> <td>Thời lượng: ${d.length}</td></tr> 
                        <tr><td>Ngôn ngữ: ${d.language}</td><tr/>                   
                    </table>
                </div>                              
        
                <div class="col-xs-9">
                    <ul class="menu-items">
                        <li class="active">Detalle del producto</li>
                        <li>Tóm tắt nội dung</li>
                        <li>Trailer</li>
                        <li>Lịch Chiếu</li>
                    </ul>
                    <div style="width:100%;border-top:1px solid silver">
                        <p style="padding:15px;">
                            <small>
                           ${d.title}
                            </small>
                        </p>                        
                    </div>
                </div>		
            </div>
            
        </div>
                
    </body>
</html>
