<%-- 
    Document   : index
    Created on : 30/09/2021, 16:51:41
    Author     : André
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        
        <% 
           if(session.getAttribute("session.usuario") != null) {%>
           
           <%@include file="WEB-INF/jspf/menu.jspf" %>
           
           <div class="container">
               <span>Usuário logado: <%= session.getAttribute("session.usuario")%></span>
           </div>
        <%}%>
    </body>
</html>
