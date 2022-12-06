<%@include file="/assets/head.jsp" %>
<link rel="stylesheet" href="instituicao.css"/>
<body>
    <header>
        <img class="invert" src="/aep-4/assets/icons/menu.png" id="menu-botao" onclick="abrirMenu()">
        Nipem
    </header>
    <%@include file="/assets/nav.jsp" %>
    <main id="main">
        <h1 class="titulo">
            Solicitações de Assinatura
        </h1>

        <div class="par-sqr">
            <div class="sqr" id="new">
                <p class="titleSolicitation">Novas Solicitaçõees</p>
                <p class="numberSolicitation azul">16</p>

                <p class="textDoLadoDoIcon"><img class="iconzin" src="/aep-4/assets/icons/checkroxo.png">Pedido de Assinatura</p>
            </div>

            <div class="sqr" id="now">
                <p class="titleSolicitation amarelo">Neste Momento</p>
                <p class="numberSolicitation amarelo">11</p>

                <p class="textDoLadoDoIcon amarelo"><img class="iconzin" src="/aep-4/assets/icons/clockAmarelo.png">Em Processo </p>
            </div>
        </div>

        <div class="par-sqr" id="last">
            <div class="sqr">
                <p class="titleSolicitation">Últimos 30 dias</p>
                <p id="num" class="numberSolicitation verde">25</p>

                <p class="textDoLadoDoIcon aa bb"><img class="iconzin" src="/aep-4/assets/icons/confimarVerde.png">Finalizados</p>
            </div>

            <div class="sqr">
                <p class="titleSolicitation vermelho">_</p>
                <p class="numberSolicitation vermelho">5</p>

                <p class="textDoLadoDoIcon"><img class="iconzin" src="/aep-4/assets/icons/xVermeio.png">Cancelados</p>
            </div>
        </div>
    </main>
</body>

</html>
