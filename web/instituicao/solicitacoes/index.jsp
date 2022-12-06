<% response.sendRedirect("..");%>
<!-- TODO página desativada -->
<%@include file="/assets/head.jsp" %>

<body>
    <header>
        <img class="invert" src="/aep-4/assets/icons/menu.png" id="menu-botao" onclick="abrirMenu()">
        Nipem
    </header>
    <%@include file="/assets/nav.jsp" %>
    <main id="main">
        <h2 class="titulo">Solicitações</h2>
        <div class="sol">
            <span class="sol-titulo">Título Termo de Estágio</span><br>
            <div class="sol-col1">
                <span class="sol-numero">Assinaturas (2/3)</span>
                <ul class="sol-email">
                    <li class="emp">instituicao@example.com</li>
                    <li class="fin">aluno@example.com</li>
                    <li class="fin">rh-autarquia@example.com</li>
                </ul>
            </div>
            <div class="sol-col2">
                <span class="sol-arquivo"><a href="">Termo de Estágio Curricular Obrigatório.pdf</a></span>
                <form action="">
                    <input class="sol-input" type="file" name="arquivo" required>
                    <button class="sol-input-submit" type="submit">ENVIAR</button>
                </form>
            </div>
            <div class="sol-col3">
                <span class="sol-status emp">Em Processo</span>
                <span class="sol-data">Até 20/10/22</span>
            </div>
        </div>
        <div class="sol">
            <span class="sol-titulo">Tí­tulo Termo de Estágio</span><br>
            <div class="sol-col1">
                <span class="sol-numero">Assinaturas (3/3)</span>
                <ul class="sol-email">
                    <li class="fin">instituicao@example.com</li>
                    <li class="fin">aluno@example.com</li>
                    <li class="fin">rh-autarquia@example.com</li>
                </ul>
            </div>
            <div class="sol-col2">
                <span class="sol-arquivo"><a href="">Termo de Estágio Curricular Obrigatório.pdf</a></span>
            </div>
            <div class="sol-col3">
                <span class="sol-status fin">Finalizado</span>
                <span class="sol-data">Até 20/10/22</span>
            </div>
        </div>
        <div class="sol">
            <span class="sol-titulo">Tí­tulo Termo de Estágio</span><br>
            <div class="sol-col1">
                <span class="sol-numero">Assinaturas (0/3)</span>
                <ul class="sol-email">
                    <li class="can">instituicao@example.com</li>
                    <li class="can">aluno@example.com</li>
                    <li class="can">rh-autarquia@example.com</li>
                </ul>
            </div>
            <div class="sol-col2">
                <span class="sol-arquivo"><a href="">Termo de Estágio Curricular Obrigatório.pdf</a></span>
            </div>
            <div class="sol-col3">
                <span class="sol-status can">Cancelado</span>
                <span class="sol-data">Até 20/10/22</span>
            </div>
        </div>
    </main>
</body>

</html>
