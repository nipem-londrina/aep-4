
<%@page import="br.com.nipem.dao.CoordenadorCursoDAO"%>
<jsp:useBean id="obj" class="br.com.nipem.model.CoordenadorCurso"/>  
<jsp:setProperty name="obj" property="*"/>

<%
    String cpf = request.getParameter("Cpf");
    CoordenadorCursoDAO dao = new CoordenadorCursoDAO();
    coordenador.setCpf(cpf);
    dao.alterarToken(obj);
    response.sendRedirect(".");
%>

