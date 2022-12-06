<%@page import="br.com.nipem.dao.InstituicaoDAO"%>
<jsp:useBean id="obj" class="br.com.nipem.model.Instituicao"/>  
<jsp:setProperty name="obj" property="*"/>

<%
    InstituicaoDAO dao = new InstituicaoDAO();
    dao.cadastrar(obj);
    response.sendRedirect(".");
%>

