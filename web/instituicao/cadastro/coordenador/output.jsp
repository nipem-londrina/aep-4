<%@page import="br.com.nipem.dao.CoordenadorCursoDAO"%>
<%@page import="br.com.nipem.security.CPF"%>
<jsp:useBean id="obj" class="br.com.nipem.model.CoordenadorCurso"/>  
<jsp:setProperty name="obj" property="*"/>

<%
    if(!CPF.validarCpf(obj.getCpf())){
        session.setAttribute("cpfvalido", "<script>window.alert('CPF inválido, tente novamente.');</script>");
        response.sendRedirect(".");
    }else{
        CoordenadorCursoDAO dao = new CoordenadorCursoDAO();
        dao.cadastrar(obj);
        session.setAttribute("cpfvalido", "<script>window.alert('Cadastro efetuado com sucesso.');</script>");
        response.sendRedirect("."); 
    }
%>