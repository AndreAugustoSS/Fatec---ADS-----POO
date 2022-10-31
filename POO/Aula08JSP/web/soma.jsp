<%-- 
    Document   : soma.jsp
    Created on : 31 de out de 2022, 14:24:28
    Author     : Fatec
--%>

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
            boolean hasParameterN1 = request.getParameter("n1")!=null;
            boolean hasParameterN2 = request.getParameter("n2")!=null;
            double n1 = 0, n2 = 0, soma = 0;
            try{
                  n1 = Double.parseDouble(request.getParameter("n1"));
                  n2 = Double.parseDouble(request.getParameter("n2"));
                  soma = n1+n2;
            }catch (Exception ex){
                 errorMessage = ex.getLocalizedMessage();
            }
        %>
        <h4><a href="inde.html">Voltar</a></h4>
        <h1>JSP</h1>
        <h2>Soma</h2>
        <div>
            <% if(errorMessage!=null) { %>
               <div style="color:red"><%= errorMessage %></div>
            <% } %>
            <% if(hasParameterN1 && hasParameterN2) { %>
                  <%=n1 %> + <%= n2 %> = <%= soma %>
            <% } %>
            <form>
                <input type="number" name="n1"/>+
                <input type="number" name="n2"/>
                <input type="submit" name="="/>
            </form>
         </div>    
    </body>
</html>
