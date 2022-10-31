<%-- 
    Document   : homejsp
    Created on : 31 de out de 2022, 14:04:09
    Author     : Fatec
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <% 
            Date agora = new Date();
            out.println("Data: " + agora);
        %>
    </body>
</html>
