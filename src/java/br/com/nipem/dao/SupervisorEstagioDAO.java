package br.com.nipem.dao;

import br.com.nipem.connection.ConnectionFactory;
import br.com.nipem.model.SupervisorEstagio;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class SupervisorEstagioDAO {

    Connection con;

    public SupervisorEstagioDAO() {
        con = ConnectionFactory.getConnection();
    }

    public void cadastrar(SupervisorEstagio supervisorestagio) {
        PreparedStatement stmt = null;
        String sql = "INSERT INTO SupervisorEstagio(Nome,Cpf,Curso,Telefone,Ramal,Email,Token) VALUES(?, ?, ?, ?, ?, ?, ?)";

        try {
            stmt = con.prepareStatement(sql);
            stmt.setString(1, supervisorestagio.getNome());
            stmt.setString(2, supervisorestagio.getCpf());
            stmt.setString(3, supervisorestagio.getCurso());
            stmt.setString(4, supervisorestagio.getTelefone());
            stmt.setString(5, supervisorestagio.getRamal());
            stmt.setString(6, supervisorestagio.getEmail());
            stmt.setString(7, supervisorestagio.getToken());
            stmt.execute();
            stmt.close();

        } catch (SQLException ex) {
            Logger.getLogger(SupervisorEstagioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public SupervisorEstagio getSupervisorEstagio(String cpf) {
        // TODO implement
        return null;
    }
}
