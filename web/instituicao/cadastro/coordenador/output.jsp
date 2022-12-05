<%-- 
    Document   : output
    Created on : 4 de dez. de 2022, 22:03:56
    Author     : Mateus
--%>

<%@page import="br.com.nipem.dao.CoordenadorCursoDAO"%>
<jsp:useBean id="obj" class="br.com.nipem.model.CoordenadorCurso"/>  
<jsp:setProperty name="obj" property="*"/>

<%
    CoordenadorCursoDAO dao = new CoordenadorCursoDAO();
    dao.cadastrar(obj);
    response.sendRedirect("."); 
%>