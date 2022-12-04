<%@page import="br.com.nipem.dao.AlunoDAO"%>
<jsp:useBean id="obj" class="br.com.nipem.model.Aluno"/>  
<jsp:setProperty name="obj" property="*"/>

<%
    AlunoDAO dao = new AlunoDAO();
    dao.cadastrar(obj);
    response.sendRedirect(".");
%>
