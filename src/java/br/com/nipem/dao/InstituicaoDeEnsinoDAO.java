package br.com.nipem.dao;

import br.com.nipem.connection.ConnectionFactory;
import br.com.nipem.model.InstituicaoDeEnsino;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class InstituicaoDeEnsinoDAO {

    Connection con;

    public InstituicaoDeEnsinoDAO() {
        con = ConnectionFactory.getConnection();
    }

    public void cadastrar(InstituicaoDeEnsino instituicao) {

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

    public InstituicaoDeEnsino getInstituicaoDeEnsino(String cnpj) throws SQLException {
        InstituicaoDeEnsino instituicao = new InstituicaoDeEnsino();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        String sql = "SELECT * FROM InstituicaoDeEnsino where cnpj = ?";

        try {
            stmt = this.con.prepareStatement(sql);
            stmt.setString(1, cnpj);

            rs = stmt.executeQuery();
            stmt.close();

            if (rs.next()) {
                instituicao.setRazaoSocial(rs.getString("RazaoSocial"));
                instituicao.setCnpj(rs.getString("Cnpj"));
                instituicao.setTipo(rs.getString("TipoDeInstituicao"));
                instituicao.setNomeContato(rs.getString("NomeContato"));
                instituicao.setCargoContato(rs.getString("CargoContato"));
                instituicao.setTelefone(rs.getString("Telefone"));
                instituicao.setRamal(rs.getString("Ramal"));
                instituicao.setEmail(rs.getString("Email"));
                instituicao.setToken(rs.getString("Token"));
            }
            
            return instituicao;
        } catch (SQLException u) {
            throw new RuntimeException(u);
        }

    }

    public void alterarToken(InstituicaoDeEnsino instituicao) {
        PreparedStatement stmt = null;
        String sql = "UPDATE InstituicaoDeEstagio (Token) VALUES(?)";
        try {
            stmt = con.prepareStatement(sql);
            stmt.setString(1, instituicao.getToken());
            stmt.execute();
            stmt.close();
        } catch (SQLException u) {
            throw new RuntimeException(u);
        }
    }
}
