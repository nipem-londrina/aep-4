<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            $('[name=cpf]').mask('000.000.000-00');
        });
    </script>
</head>
