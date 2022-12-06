<%@page import="br.com.nipem.security.LoginBean"%>
<%@page import="br.com.nipem.model.CoordenadorCurso"%>
<%@page import="br.com.nipem.dao.CoordenadorCursoDAO"%>
<%
    LoginBean login = (LoginBean) session.getAttribute("login");
    CoordenadorCursoDAO dao = new CoordenadorCursoDAO();
    CoordenadorCurso coordenador = dao.getCoordenadorCurso(login.getLogin());
%>
<!DOCTYPE html>
<%@include file="/assets/head.jsp" %>

<body>
    <header>
        <img class="invert" src="/aep-4/assets/icons/menu.png" id="menu-botao" onclick="abrirMenu()">
        Nipem
    </header>
    <%@include file="/assets/nav.jsp" %>
    <main>
        <h2 class="titulo">Perfil</h2>
        <div class="campo">
            <label for="nomeContato">Nome Completo *</label>
            <input type="text" name="nome" value="<%= coordenador.getNome()%>" disabled>
        </div>
        <div class="campo">
            <label for="cargoContato">Curso *</label>
            <input type="text" name="curso" value="<%= coordenador.getCurso()%>" disabled>
        </div>
        <div class="campo medio">
            <label for="telefone">Telefone *</label>
            <input type="text" name="telefone" value="<%= coordenador.getTelefone()%>" disabled>
        </div>
        <div class="campo pequeno">
            <label for="ramal">Ramal *</label>
            <input type="text" name="ramal" value="<%= coordenador.getRamal()%>" disabled>
        </div>
        <div class="campo">
            <label for="email">E-mail *</label>
            <input type="email" name="email" value="<%= coordenador.getEmail()%>" disabled>
        </div>
        <button class="pequeno">ALTERAR SENHA</button>
    </main>
</body>

</html>