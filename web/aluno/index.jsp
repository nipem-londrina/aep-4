TODO bem vindo a tela de aluno ebaaa<br>
<%@page import="br.com.nipem.security.LoginBean"%>
<%@page import="br.com.nipem.model.Aluno"%>
<%@page import="br.com.nipem.dao.AlunoDAO"%>
<%
    LoginBean login = (LoginBean) session.getAttribute("login");
    AlunoDAO dao = new AlunoDAO();
    Aluno aluno = dao.getAluno(login.getLogin());
    out.print(aluno.getNome() + "\n");
    out.print(aluno.getCpf() + "\n");
    out.print(aluno.getCurso() + "\n");
    out.print(aluno.getTelefone() + "\n");
%>
<h1><%= aluno.getNome() %></h1>
