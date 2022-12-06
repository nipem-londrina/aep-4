package br.com.nipem.security;

import br.com.nipem.connection.ConnectionFactory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class LoginBean {

    public static final int ALUNO = 0;
    public static final int SUPERVISOR = 1;
    public static final int COORDENADOR = 2;
    public static final int INSTITUICAO = 3;
    public static final int AUTARQUIA = 4;
    
    private String login, password;
    private int type;
    PasswordAuthentication pa;

    public LoginBean() {
        this.pa = new PasswordAuthentication();
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getType() {
        return type;
    }

    public void setType(String typeI) {
        switch (typeI) {
            case "Aluno":
                this.type = ALUNO;
            case "SupervisorEstagio":
                this.type = SUPERVISOR;
            case "CoordenadorCurso":
                this.type = COORDENADOR;
            case "InstituicaoDeEnsino":
                this.type = INSTITUICAO;
            case "Autarquia":
                this.type = AUTARQUIA;
                break;
            default:
                throw new AssertionError();
        }
    }
    
    public String getTypeAsString() {
        switch (type) {
            case ALUNO:
                return "Aluno";
            case SUPERVISOR:
                return "SupervisorEstagio";
            case COORDENADOR:
                return "CoordenadorCurso";
            case INSTITUICAO:
                return "InstituicaoDeEnsino";
            case AUTARQUIA:
                return "Autarquia";
            default:
                return null;
        }
    }

    /*
    public String getToken() {
        return pa.hash(this.getPassword());
    }
     */
    public boolean authenticate() {
        Connection con = ConnectionFactory.getConnection();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        String sql = "select token from " + this.getTypeAsString() + " where Cpf = ?";

        String token;

        try {
            stmt = con.prepareStatement(sql);
            stmt.setString(1, login);
            rs = stmt.executeQuery();

            if (rs.next()) {
                token = rs.getString(1);
                return pa.authenticate(password, token);
            }
        } catch (SQLException ex) {
            Logger.getLogger(LoginBean.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
}
