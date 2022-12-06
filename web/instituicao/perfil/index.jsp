<%@include file="/assets/head.jsp" %>
<%@page import="br.com.nipem.model.InstituicaoDeEnsino"%>
<%
    InstituicaoDeEnsino usuario = (InstituicaoDeEnsino) session.getAttribute("usuario");
%>

<body>
    <header>
        <img class="invert" src="/aep-4/assets/icons/menu.png" id="menu-botao" onclick="abrirMenu()">
        Nipem
    </header>
    <%@include file="/assets/nav.jsp" %>
    <main>
        <h2 class="titulo">Perfil</h2>
        <form action="">
            <div class="campo">
                <label for="razaoSocial">Razão Social *</label>
                <input type="text" name="razaoSocial" value="<%= usuario.getRazaoSocial()%>" disabled>
            </div>
            <div class="campo">
                <label for="cnpj">CNPJ *</label>
                <input type="text" name="cnpj" value="<%= usuario.getCnpj()%>" disabled>
            </div>
            <div class="campo">
                <label for="tipoInstituicao">Tipo de Instituição *</label>
                <input type="text" name="tipoInstituicao" value="<%= usuario.getTipo()%>" disabled >
            </div>
            <div class="campo">
                <label for="nomeContato">Nome do Contato *</label>
                <input type="text" name="nomeContato" value="<%= usuario.getNomeContato()%>" disabled >
            </div>
            <div class="campo">
                <label for="cargoContato">Cargo do Contato *</label>
                <input type="text" name="cargoContato" value="<%= usuario.getCargoContato()%>" disabled >
            </div>
            <div class="campo medio">
                <label for="telefone">Telefone *</label>
                <input type="text" name="telefone" value="<%= usuario.getTelefone()%>" disabled >
            </div>
            <div class="campo pequeno">
                <label for="ramal">Ramal *</label>
                <input type="text" name="ramal" value="<%= usuario.getRamal()%>" disabled >
            </div>
            <div class="campo">
                <label for="email">E-mail *</label>
                <input type="email" name="email" value="<%= usuario.getEmail()%>" disabled >
            </div>
        </form>
    </main>
</body>

</html>
