<%-- 
    Document   : profile
    Created on : Aug 23, 2019, 2:43:15 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title><style>
            .profile{
                width: 80%; 
                margin-left: 9%; 
                margin-right: 9%;
            }

            .profile form{
                width: 100%;
                height: content-box;
            }

            input[type="text"]{
                width: 100%;                
                margin-right: 10%;
            }

            input[type="submit"], input[type="reset"]{
                width: 100%;
            }

            h2{
                text-align: center;
            }
            textarea{
                width: 100%;
                height: 150px;
                resize: none;
            }
            table{
                width: 100%;
            }
        </style>
    </head>
    <body>                               
        <h2>Edit profile</h2>          
            <span>First Name:</span><br/>
            <input type="text" name="first" value="${user.firstName}" placeholder="Enter the first name"/><br/>
            <span>Last Name:</span><br/>
            <input type="text" name="last" value="${user.lastName}" placeholder="Enter the last name"/><br/>
            <span>Email:</span><br/>
            ${user.email}<br/>
            <span>Phone</span><br/>
            <input type="text" name="phone" value="${user.phone}" placeholder="Enter your phone number"/><br/>
            <span>Description:</span><br/>                
            <textarea name="description" rows="4">${user.description}</textarea><br/>            
            <table>
                <tbody>
                    <tr>
                        <td>
                            <button data-id="${user.id}" onclick="updateProfile(this)" >Save</button>
                        </td>
                        <td>
                            <input type="reset" value="Reset" />                        
                        </td>
                    </tr>
                </tbody>
            </table>
    </body>
</html>
