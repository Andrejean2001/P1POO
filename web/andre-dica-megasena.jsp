<%-- 
    Document   : andre-dica-megasena
    Created on : 30/09/2021, 17:29:24
    Author     : André
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    ArrayList<Integer> numerosMegasena = (ArrayList) session.getAttribute("session.megasena");
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dica megasena</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        
             <%
            if(session.getAttribute("session.usuario") == null) {%>
            
            <div class="container d-flex justify-content-center align-items-center">
                <h2 class="text-danger">Você não tem acesso a essa página!</h2>
            </div>
            <%} else {%>
            
            <div class="container">
        
                <h2>Numeros da megasena</h2>
                <table class="table table-bordered mt-4">
                    <tbody>
                        <tr>
                           <% for (int j = 0; j < 6; j++) {%>
                                <td><%= numerosMegasena.get(j)%> </td>
                            <%}%>   
                        </tr>
                    </tbody>
                </table>
            </div>
        <%}%>
    </body>
</html>
