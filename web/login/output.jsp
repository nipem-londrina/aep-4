<%@page import="br.com.nipem.security.PasswordAuthentication"%>
<%@page import="br.com.nipem.dao.AlunoDAO"%>
<%@page import="br.com.nipem.dao.CoordenadorCursoDAO"%>
<%@page import="br.com.nipem.dao.SupervisorEstagioDAO"%>
<%@page import="br.com.nipem.dao.InstituicaoDeEnsinoDAO"%>
<%@page import="br.com.nipem.model.Aluno"%>
<%@page import="br.com.nipem.model.CoordenadorCurso"%>
<%@page import="br.com.nipem.model.SupervisorEstagio"%>
<%@page import="br.com.nipem.model.InstituicaoDeEnsino"%>
<jsp:useBean id="obj" class="br.com.nipem.security.LoginBean"/>
<jsp:setProperty name="obj" property="*"/>
<%
    out.print(obj.getType());
    out.print(obj.getLogin());
    out.print(obj.getPassword());
    
    
    String url = null;
    if (obj.authenticate()) {
        session.setAttribute("loginbemsucedido", "");
        session.setAttribute("login", obj);
        switch (obj.getType()) {
            case "Aluno":
                session.setAttribute("usuario", new AlunoDAO().getAluno(obj.getLogin()));
                url = "/aep-4/aluno/";
                break;
            case "SupervisorEstagio":
                session.setAttribute("usuario", new SupervisorEstagioDAO().getSupervisorEstagio(obj.getLogin()));
                url = "/aep-4/supervisor/";
                break;
            case "CoordenadorCurso":
                session.setAttribute("usuario", new CoordenadorCursoDAO().getCoordenadorCurso(obj.getLogin()));
                url = "/aep-4/coordenador/";
                break;
            case "InstituicaoDeEnsino":
                session.setAttribute("usuario", new InstituicaoDeEnsinoDAO().getInstituicaoDeEnsino(obj.getLogin()));
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
