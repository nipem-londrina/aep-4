<%@page import="br.com.nipem.dao.InstituicaoDeEnsinoDAO"%>
<jsp:useBean id="obj" class="br.com.nipem.model.InstituicaoDeEnsino"/>  
<jsp:setProperty name="obj" property="*"/>

<%
    String cnpj = request.getParameter("Cnpj");
    InstituicaoDeEnsinoDAO dao = new InstituicaoDeEnsinoDAO();
    instituicao.setCnpj(cnpj);
    dao.alterarToken(obj);
    response.sendRedirect(".");
%>