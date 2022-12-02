<%@page import="br.com.nipem.security.PasswordAuthentication"%>
<jsp:useBean id="obj" class="br.com.nipem.model.Aluno"/>  
<jsp:setProperty name="obj" property="*"/>
<jsp:getProperty name="obj" property="nome"/>
<jsp:getProperty name="obj" property="cpf"/>
<jsp:getProperty name="obj" property="curso"/>
<jsp:getProperty name="obj" property="telefone"/>
<jsp:getProperty name="obj" property="ramal"/>
<jsp:getProperty name="obj" property="email"/>


<%
    AlunoDAO dao = new AlunoDAO();
    
    dao.cadastrar(obj);
%>
