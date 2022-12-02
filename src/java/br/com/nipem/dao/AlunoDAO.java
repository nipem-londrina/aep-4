package br.com.nipem.dao;

import br.com.nipem.connection.ConnectionFactory;
import br.com.nipem.model.Aluno;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AlunoDAO {

    Connection con;

    public AlunoDAO() {
        con = ConnectionFactory.getConnection();
    }

    public boolean cadastrar(Aluno aluno) {
        PreparedStatement stmt = null;
        ResultSet rs = null;
        String sql = "INSERT INTO Aluno(Nome,Cpf,Curso,Telefone,Ramal,Email) VALUES( ?,  ?,  ?,  ?, ?, ?)";
        try {
            stmt = con.prepareStatement("INSERT INTO Aluno(Nome,Cpf,Curso,Telefone,Ramal,Email) VALUES( ?,  ?,  ?,  ?, ?, ?)");
            stmt.setString(1, aluno.getNome());
            stmt.setString(2, aluno.getCpf());
            stmt.setString(3, aluno.getCurso());
            stmt.setString(4, aluno.getTelefone());
            stmt.setString(5, aluno.getRamal());
            stmt.setString(6, aluno.getEmail());
            stmt.execute();
            stmt.close();
        } catch (SQLException u) {
            throw new RuntimeException(u);
        } finally {
            ConnectionFactory.closeConnection(con, stmt);
        }
        return true;

    }
}
