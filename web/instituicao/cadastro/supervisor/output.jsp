<%-- 
    Document   : output
    Created on : 4 de dez. de 2022, 21:14:12
    Author     : Mateus
--%>

<%@page import="br.com.nipem.dao.SupervisorEstagioDAO"%>
<jsp:useBean id="obj" class="br.com.nipem.model.SupervisorEstagio"/>  
<jsp:setProperty name="obj" property="*"/>

<%
    SupervisorEstagioDAO dao = new SupervisorEstagioDAO();
    dao.cadastrar(obj);
    response.sendRedirect("."); 
%>