<%@page import="br.com.nipem.dao.PerfilDAO"%>
<%@page import="br.com.nipem.dao.CoordenadorCursoDAO"%>
<jsp:useBean id="obj" class="br.com.nipem.model.Perfil"/>  
<jsp:setProperty name="obj" property="*"/>

<%
    String cpf = request.getParameter("Cpf");
    PerfilDAO dao = new PerfilDAO();
    coordenador.setCpf(cpf);
    dao.alterar(obj);
    //response.sendRedirect(".");
%>

