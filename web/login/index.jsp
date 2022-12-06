<!DOCTYPE html>
<html lang="pt-BR">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login</title>
        <link rel="stylesheet" href="login.css">
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
                $("#login").mask('000.000.000-00');
                $("#type").change(function () {
                    addMaskToInput();
                });
            });

            function addMaskToInput() {
                var selecionado = $('#type option:selected').val();
                if (selecionado === "Aluno" || selecionado === "CoordenadorCurso" || selecionado === "SupervisorEstagio") {
                    $("#login").mask('000.000.000-00');
                } else {
                    $("#login").mask('00.000.000/0000-00');
                }
                $("#login").val('');
                $("#password").val('');
            }
        </script>
    </head>

    <body>
        <main>
            <form class="login" method="POST" action="output.jsp">
                <h1>Login</h1>
                <select name="type" id="type">
                    <option value="Aluno">Aluno</option>
                    <option value="SupervisorEstagio">Supervisor</option>
                    <option value="CoordenadorCurso">Coordenador</option>
                    <option value="InstituicaoDeEnsino">Instituição</option>
                    <option value="Autarquia">Autarquia</option>
                </select>
                <input type="text" name="login" id="login" placeholder="Login"><br><br>
                <input type="password" name="password" id="password" placeholder="Senha"><br><br>
                <%= session.getAttribute("loginbemsucedido") == null ? "" : session.getAttribute("loginbemsucedido")%><br>
                <button id="entra">
                    ENTRAR
                </button><br><br>
            <a href="#"><em>Esqueceu a senha?</em></a>
            <br><br>
            <p>Vamos iniciar nossa parceria?</p>
            </form>
            <button id="cadastre" onclick="location.href = '/aep-4/bemvindo/index.html'">
                Cadastrar instituição de ensino</button>
        </main>
    </body>
</html>
