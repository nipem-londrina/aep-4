package br.com.nipem.dao;

import br.com.nipem.connection.ConnectionFactory;
import br.com.nipem.model.CoordenadorCurso;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class CoordenadorCursoDAO {
    Connection con;
    
    public CoordenadorCursoDAO() {
        con = ConnectionFactory.getConnection();
    }
    
    public void cadastrar(CoordenadorCurso coordenadorcurso) {
        PreparedStatement stmt = null;
        String sql = "INSERT INTO CoordenadorCurso(Nome,Cpf,Curso,Telefone,Ramal,Email,Token) VALUES(?, ?, ?, ?, ?, ?, ?)";
        
        try {
            stmt = con.prepareStatement(sql);
            stmt.setString(1, coordenadorcurso.getNome());
            stmt.setString(2, coordenadorcurso.getCpf());
            stmt.setString(3, coordenadorcurso.getCurso());
            stmt.setString(4, coordenadorcurso.getTelefone());
            stmt.setString(5, coordenadorcurso.getRamal());
            stmt.setString(6, coordenadorcurso.getEmail());
            stmt.setString(7, coordenadorcurso.getToken());
            stmt.execute();
            stmt.close();
                        
        } catch (SQLException u) {
            throw new RuntimeException(u);
        }
    }
}
