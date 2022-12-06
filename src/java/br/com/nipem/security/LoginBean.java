package br.com.nipem.security;

import br.com.nipem.connection.ConnectionFactory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class LoginBean {

    private String login, type, password;
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

    public String getType() {
        return type;
    }

    public void setType(String typeI) {
        switch (typeI) {
            case "Aluno":
            case "SupervisorEstagio":
            case "CoordenadorCurso":
            case "InstituicaoDeEnsino":
            case "Autarquia":
                this.type = typeI;
                break;
            default:
                throw new AssertionError();
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
        String type = this.getTypeAsString();
        String cpfoucnpj = type.equals("InstituicaoDeEnsino") || type.equals("Autarquia") ? "Cnpj" : "Cpf";
        String sql = "select token from " + type + " where " + cpfoucnpj + " = ?";

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
