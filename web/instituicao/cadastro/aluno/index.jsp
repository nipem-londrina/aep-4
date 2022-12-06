<%@include file="/assets/head.jsp" %>
<body>
    <header>
        <img class="invert" src="/aep-4/assets/icons/menu.png" alt="menu" id="menu-botao" onclick="abrirMenu();">
        Nipem
    </header>
    <%@include file="/assets/nav.jsp" %>
    <main id="main">
        <h2 class="titulo">Cadastrar Novo Aluno</h2>
        <form class="form" method="POST" action="output.jsp">
            <div class="campo">
                <label for="nome">Nome Completo *</label>
                <input type="text" name="nome" >
            </div><br>
            <div class="campo">
                <label for="cpf">CPF *</label>
                <input type="text" name="cpf" >
            </div>
            <div class="campo">
                <label for="curso">Curso *</label>
                <input type="text" name="curso" >
            </div>
            <div class="campo medio">
                <label for="telefone">Telefone *</label>
                <input type="tel" name="telefone" >
            </div>
            <div class="campo pequeno">
                <label for="ramal">Ramal</label>
                <input type="number" name="ramal" >
            </div>
            <div class="campo">
                <label for="email">E-mail *</label>
                <input type="email" name="email" >
            </div>
            <div class="campo">
                <label for="senha">Senha de Acesso *</label>
                <input type="password" name="senha" >
            </div><br>
            <div class="campo">
                <label for="senhaConfirmar">Confirmar Senha *</label>
                <input type="password" name="senhaConfirmar" >
            </div><br>
            <div class="campo">
                <label for="emailSupervisor">Supervisor de Estagio</label>
                <input type="email" name="emailSupervisor" >
            </div><br>
            <div class="campo">
                <label for="periodo">Perí­odo</label>
                <input type="text" name="periodo" >
            </div>
            <button class="btn-confirmar" type="submit">CONFIRMAR</button>
        </form>
    </main>
</body>

</html>