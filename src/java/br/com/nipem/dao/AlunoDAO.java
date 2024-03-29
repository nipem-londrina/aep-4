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

    public void cadastrar(Aluno aluno) {
        PreparedStatement stmt = null;
        String sql = "INSERT INTO Aluno(Nome,Cpf,Curso,Telefone,Ramal,Email, Periodo, Token, IdSupervisor) VALUES( ?,  ?,  ?,  ?, ?, ?, ?, ?, 1)"; // TODO esquema de supervisor
        try {
            stmt = con.prepareStatement(sql);
            stmt.setString(1, aluno.getNome());
            stmt.setString(2, aluno.getCpf());
            stmt.setString(3, aluno.getCurso());
            stmt.setString(4, aluno.getTelefone());
            stmt.setString(5, aluno.getRamal());
            stmt.setString(6, aluno.getEmail());
            stmt.setString(7, aluno.getPeriodo());
            stmt.setString(8, aluno.getToken());
            stmt.execute();
            stmt.close();
        } catch (SQLException u) {
            throw new RuntimeException(u);
        }
    }
    
    public Aluno getAluno(String cpf) {
        Aluno aluno = new Aluno();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        String sql = "select * from Aluno where Cpf = ?";
        
        try {
            stmt = con.prepareStatement(sql);
            stmt.setString(1, cpf);
            rs = stmt.executeQuery();
            if (rs.next()) {
                aluno.setCpf(cpf);
                aluno.setCurso(rs.getString("Curso"));
                aluno.setDataIncio(rs.getDate("DataInicio"));
                aluno.setDataTermino(rs.getDate("DataTermino"));
                aluno.setEmail(rs.getString("Email"));
                aluno.setIdAluno(rs.getInt("IdAluno"));
                aluno.setIdSupervisor(rs.getInt("IdSupervisor"));
                aluno.setNome(rs.getString("Nome"));
                aluno.setPeriodo(rs.getString("Periodo"));
                aluno.setRamal(rs.getString("Ramal"));
                aluno.setTelefone(rs.getString("Telefone"));
                aluno.setToken(rs.getString("Token"));
            }
            stmt.close();
        } catch (SQLException u) {
            throw new RuntimeException(u);
        }
        return aluno;
    }
}
