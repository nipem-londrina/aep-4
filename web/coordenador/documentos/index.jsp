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
        <table>
            <thead>
                <tr>
                    <th class="titu">Tí­tulo</th>
                    <th class="assinatura">Assinatura</th>
                    <th class="arquivo">Arquivo <i class="fa-solid fa-arrow-up-from-bracket"></i></th>
                    <th class="status">Status</th>

                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Proposta de Convênio</td>
                    <td>coordenador@exemplo.com<br>rh-autarquia@exemplo.com</td>
                    <td>Arquivo.pdf</td>
                    <td><i class="fa-regular fa-circle-check"></i> Finalizado</td>
                </tr>
            </tbody>
        </table>
    </main>
</body>

</html>
