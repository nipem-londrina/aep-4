<% response.sendRedirect("..");%>
<%@include file="/assets/head.jsp" %>

<body>

    <div class="campoUpload1">
        <div><button class="btnSair">Sair</button></div>
        <h3 class="titulo1">Upload de Arquivos</h3>
    </div>
    <!-- Card Aviso-->
    <div class="aviso">Abaixo é possí­vel fazer o upload de algum arquivo solicitado pela secretaria. Também é possí­vel ver os arquivos que você já¡ fez upload e excluí­-los.</div>
    <!-- Card 1 -->
    <div class="campo2">
        <div class="campoArquivo">
            <h3 class="titulo2">Arquivo para solicitação de Convenio</h3>
        </div>
        <div class="borda">
            <div class="p2" id="left">Tí­tulo</div><div class="p2">Arquivo</div><div class="p2" id="right">Tipo</div>
        </div>
        <div>
            <div class="p2" id="left">Proposta de Convênio</div><div class="p2">Arquivo.pdf</div><div class="p2" id="right">pdf</div>
        </div>
    </div>
    <!-- Card 2 -->
    <div class="campo2">
        <div class="campoArquivo">
            <h3 class="titulo2">Upload de Arquivos</h3>
        </div>
        <div class="div-p3-btn">
            <div class="p3" id="left">Arquivo</div>
            <div class="divbtnEscolher">
                <input class="btnEscolher" type="file">
            </div>
        </div>
        <p class="p4">Selecione um arquivo a enviar</p>
        <div class="divbtnEnviar">
            <button class="btnEnviar" type="submit">Enviar Arquivo</button>
        </div>
        <div>

        </div>
    </div>
    <!-- Card 3  -->
    <div class="campo3">
        <div class="campoArquivo">
            <h3 class="titulo2">Meus arquivos</h3>
        </div>
        <div class="borda">
            <div class="p2" id="left">Postado</div><div class="p2">Tí­tulo</div><div class="p2" id="right">Arquivo</div>
        </div>
        <div class="p">
            <div class="p2" id="left">30/10/2022</div><div class="p2" id="p2proposta">Proposta Convênio</div><div class="p2" id="right">pdf</div>
        </div>
        <!--  -->
        <div class="p2" id="left">Assinatura 1/2</div><div class="p2" id="right">Status</div>
        <div class="borda3"></div>
        <div class="divAssinatura">
            <div class="email" id="email">instituicao@example.com</div><div class="statusAssinado" id="status">Assinado</div>
        </div>
        <div class="divAssinatura">
            <div class="email" id="email">autarquia@example.com</div><div class="statusEmProcesso" id="status">Em Processo</div>
        </div>
    </div>

</body>

</html>