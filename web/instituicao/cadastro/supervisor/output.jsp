<%@page import="br.com.nipem.dao.SupervisorEstagioDAO"%>
<%@page import="br.com.nipem.security.CPF"%>
<jsp:useBean id="obj" class="br.com.nipem.model.SupervisorEstagio"/>  
<jsp:setProperty name="obj" property="*"/>

<%
    if(!CPF.validarCpf(obj.getCpf())){
        session.setAttribute("cpfvalido", "<script>window.alert('CPF inválido, tente novamente.');</script>");
        response.sendRedirect(".");
    }else{
    session.setAttribute("cpfvalido", "");
    SupervisorEstagioDAO dao = new SupervisorEstagioDAO();
    dao.cadastrar(obj);
    response.sendRedirect(".");
    }
%>