<%@page import="br.com.nipem.security.LoginBean"%>
<%@page import="br.com.nipem.model.CoordenadorCurso"%>
<%@page import="br.com.nipem.dao.CoordenadorCursoDAO"%>
<%
    LoginBean login = (LoginBean) session.getAttribute("login");
    CoordenadorCursoDAO dao = new CoordenadorCursoDAO();
    CoordenadorCurso coordenador = dao.getCoordenadorCurso(login.getLogin());
%>
<!DOCTYPE html>
<html lang="pt-BR">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Nipem</title>
        <link rel="stylesheet" href="/aep-4/style.css">
        <script src="/aep-4/menu.js"></script>
        <!-- jQuery -->
        <script src="https://code.jquery.com/jquery-3.6.1.min.js"
        integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
        <!-- jQuery Mask -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.16/jquery.mask.min.js"
                integrity="sha512-pHVGpX7F/27yZ0ISY+VVjyULApbDlD0/X0rgGbTqCE7WFW5MezNTWG/dnhtbBuICzsd0WQPgpE4REBLv+UqChw=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <!-- Aplicar máscaras -->
        <script>
            $(document).ready(function () {
                $('[name=telefone]').mask('(00) 90000-0000');
                $('[name=cnpj]').mask('00.000.000/0000-00');
            });
        </script>
    </head>

    <body>
        <header>
            <img class="invert" src="/aep-4/assets/icons/menu.png" id="menu-botao" onclick="abrirMenu()">
            Nipem
        </header>
        <nav id='menu' class="">
            <ul class="menu-lista">
                <li class="pagina-atual"><a href="#">Instituição de Ensino</a></li>
                <li><a href="#">Coordenadores</a></li>
                <li><a href="#">Documentos</a></li>
                <ul id="submenu" class="menu-lista">
                    <li onclick="abrirSubMenu()"><a>submenu</a> <img id="setinha" class="invert" src="/aep-4/assets/icons/expand.png"></li>
                    <li><a href="#">subcoisa1</a></li>
                    <li><a href="#">subcoisa2</a></li>
                    <li><a href="#">subcoisa3</a></li>
                </ul>
                <li><a href="">sair</a></li>
            </ul>
        </nav>
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