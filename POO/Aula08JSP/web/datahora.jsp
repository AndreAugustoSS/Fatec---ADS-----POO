<%-- 
    Document   : datahora.jsp
    Created on : 31 de out de 2022, 14:24:09
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
               <%
            String errorMessage = null;
            boolean hasParameterN = request.getParameter("n")!=null;
            double n = 0;
            try{
            
                 n = Integer.parseInt(request.getParameter("n"));    
            }catch (Exception ex){
                 errorMessage = ex.getMessage();
             
            }
                   
        %>
        <h4><a href="index.html">Voltar</a></h4>
        <h1>DATA/HORA</h1>
        
        <%
            Date data = new Date();
            
            %>
        <h2>Data</h2>
       
    </body>
</html>
