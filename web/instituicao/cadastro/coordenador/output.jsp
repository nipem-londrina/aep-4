<%@page import="br.com.nipem.dao.CoordenadorCursoDAO"%>
<jsp:useBean id="obj" class="br.com.nipem.model.CoordenadorCurso"/>  
<jsp:setProperty name="obj" property="*"/>

<%
    CoordenadorCursoDAO dao = new CoordenadorCursoDAO();
    dao.cadastrar(obj);
    response.sendRedirect("."); 
%>