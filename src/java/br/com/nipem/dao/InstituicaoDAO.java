package br.com.nipem.dao;

import br.com.nipem.connection.ConnectionFactory;
import br.com.nipem.model.Instituicao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class InstituicaoDAO {
    
    Connection con;

    public InstituicaoDAO() {
        con = ConnectionFactory.getConnection();
    }
    
    public void cadastrar(Instituicao instituicao){
        
        PreparedStatement stmt = null;
        String sql = "INSERT INTO InstituicaoDeEnsino(RazaoSocial,Cnpj,TipoDeInstituicao,NomeContato,CargoContato,Telefone,Ramal,Email,Token) VALUES( ?,  ?,  ?,  ?, ?, ?, ?, ?, ?)";
        try {
            stmt = con.prepareStatement(sql);
            stmt.setString(1, instituicao.getRazaoSocial());
            stmt.setString(2, instituicao.getCnpj());
            stmt.setString(3, instituicao.getTipo());
            stmt.setString(4, instituicao.getNomeContato());
            stmt.setString(5, instituicao.getCargoContato());
            stmt.setString(6, instituicao.getTelefone());
            stmt.setString(7, instituicao.getRamal());
            stmt.setString(8, instituicao.getEmail());
            stmt.setString(9, instituicao.getToken());
            stmt.execute();
            stmt.close();
        } catch (SQLException u) {
            throw new RuntimeException(u);
        }
    }       
}