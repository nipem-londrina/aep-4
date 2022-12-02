<%@page import="br.com.nipem.security.PasswordAuthentication"%>
<jsp:useBean id="obj" class="br.com.nipem.security.LoginBean"/>
<jsp:setProperty name="obj" property="*"/>
<jsp:getProperty name="obj" property="type"/><br>
<jsp:getProperty name="obj" property="login"/><br>
<jsp:getProperty name="obj" property="password"/><br>
<%
    String url;
    if (obj.authenticate()) {
        session.setAttribute("loginbemsucedido", "");
        switch (obj.getType()) {
            case "Aluno":
                url = "/aep-4/aluno/";
                session.setAttribute("loginho", obj.getLogin());
                break;
            case "SupervisorEstagio":
                url = "/aep-4/supervisor/";
                break;
            case "CoordenadorCurso":
                url = "/aep-4/coordenador/";
                break;
            case "InstituicaoDeEnsino":
                url = "/aep-4/instituicao/";
                break;
            case "Autarquia":
                url = "/aep-4/autarquia/";
                break;
            default:
                url = "/aep-4/login/";
                session.setAttribute("loginbemsucedido", "Erro do login: 0x3519"); //escolhi aleatoriamente, um dia vai ser útil juro
        }
    } else {
        url = "/aep-4/login/";
        session.setAttribute("loginbemsucedido", "Credenciais incorretas.");
    }
    response.sendRedirect(url);
%>
