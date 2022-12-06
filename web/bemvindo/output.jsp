<%@page import="br.com.nipem.dao.InstituicaoDeEnsinoDAO"%>
<jsp:useBean id="obj" class="br.com.nipem.model.InstituicaoDeEnsino"/>  
<jsp:setProperty name="obj" property="*"/>

<%
    InstituicaoDeEnsinoDAO dao = new InstituicaoDeEnsinoDAO();
    dao.cadastrar(obj);
    response.sendRedirect("/aep-4/");
%>

