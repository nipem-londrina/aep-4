<%@page import="br.com.nipem.security.LoginBean"%>
<nav id='menu' class="">
    <ul class="menu-lista">
        <!--
        <li class="pagina-atual"><a href="#">coisa</a></li>
        <li><a href="#">aaa</a></li>
        <li><a href="#">e tal</a></li>
        <ul id="submenu" class="menu-lista">
            <li onclick="abrirSubMenu()"><a>submenu</a> <img id="setinha" class="invert" src="/aep-4/assets/icons/expand.png"></li>
            <li><a href="#">subcoisa1</a></li>
            <li><a href="#">subcoisa2</a></li>
            <li><a href="#">subcoisa3</a></li>
        </ul>
        -->
        <%
            LoginBean login = (LoginBean)session.getAttribute("login");
            String type = login.getType();
            switch (type) {
                case "InstituicaoDeEnsino":
                    %>
                        <li><a href="/aep-4/instituicao/cadastro/aluno">Alunos</a></li>
                        <li><a href="/aep-4/instituicao/cadastro/coordenador">Coordenadores</a></li>
                        <li><a href="/aep-4/instituicao/cadastro/supervisor">Supervisores</a></li>
                    <%
                    break;
            }
        %>
        <li><a href="/aep-4/logout.jsp">Sair</a></li>
    </ul>
</nav>
