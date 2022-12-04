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
    
    public SupervisorEstagio getSupervisorEstagio() {
        SupervisorEstagio supervisorestagio = null;
        
        PreparedStatement stmt = null;
        ResultSet rs = null;
        String sql = "select * from ";
        
        try {
            stmt = con.prepareStatement(sql);
        } catch (SQLException ex) {
            Logger.getLogger(SupervisorEstagioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return supervisorestagio;
    }
}
