<%-- 
    Document   : andre
    Created on : 30/09/2021, 17:17:02
    Author     : André
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    ArrayList<String> disciplinas = new ArrayList();
    disciplinas.add("Gestão de Equipes");
    disciplinas.add("Empreendedorismo");
    disciplinas.add("Estágio Supervisionado");
    disciplinas.add("Banco de Dados");
    disciplinas.add("Inteligencia Artificial");
    disciplinas.add("Programação Orientada a Objetos");
    disciplinas.add("Tópicos Especiais em Informática");
    disciplinas.add("Programação Linear");
    disciplinas.add("Trabalho de graduação 2");
    disciplinas.add("Laboratório de Banco de Dados");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>André Jean</title>
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
                <h1>André Jean</h1>
                <p>RA: 1299481913004</p>
                <p>Perfil do github: <a href="https://github.com/AndreJean2001" target="_blank">AndreJean2001</a></p>
                <p>Ingressão na FATEC: 1º Semestre de 2019</p>
                
                <h2>Disciplinas</h2>
                
                <table class="table table-bordered mt-4">
                    <tbody>
                        <tr>
                            <% for (int i= 0; i< disciplinas.size(); i++){%>
                                <td><%= disciplinas.get(i)%> </td>
                            <%}%>
                        </tr>
                    </tbody>
                </table>
            </div>
        <%}%>
    </body>
</html>
