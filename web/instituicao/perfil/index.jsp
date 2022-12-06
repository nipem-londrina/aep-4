<%@include file="/assets/head.jsp" %>

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
                <input type="text" name="razaoSocial" >
            </div>
            <div class="campo">
                <label for="cnpj">CNPJ *</label>
                <input type="text" name="cnpj" >
            </div>
            <div class="campo">
                <label for="tipoInstituicao">Tipo de Instituição *</label>
                <input type="text" name="tipoInstituicao" >
            </div>
            <div class="campo">
                <label for="nomeContato">Nome do Contato *</label>
                <input type="text" name="nomeContato" >
            </div>
            <div class="campo">
                <label for="cargoContato">Cargo do Contato *</label>
                <input type="text" name="cargoContato" >
            </div>
            <div class="campo medio">
                <label for="telefone">Telefone *</label>
                <input type="text" name="telefone" >
            </div>
            <div class="campo pequeno">
                <label for="ramal">Ramal *</label>
                <input type="text" name="ramal" >
            </div>
            <div class="campo">
                <label for="email">E-mail *</label>
                <input type="email" name="email" >
            </div>
            <div class="campo medio">
                <label for="senha">Senha de Acesso *</label>
                <input type="password" name="senha" >
            </div>
            <button class="pequeno">ALTERAR SENHA</button>
            <button type="submit">CONFIRMAR</button>
        </form>
    </main>
</body>

</html>
