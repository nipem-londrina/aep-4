<a href="/aep-4/logout.jsp">Sair</a><br>
TODO bem vindo a tela de aluno ebaaa<br>
<%@page import="br.com.nipem.model.Aluno"%>
<%
    Aluno usuario = (Aluno) session.getAttribute("usuario");
    out.print(usuario.getNome() + "\n");
    out.print(usuario.getCpf() + "\n");
    out.print(usuario.getCurso() + "\n");
    out.print(usuario.getTelefone() + "\n");
%>
<h1><%= usuario.getNome() %></h1>
