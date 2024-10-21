/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Clases;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Lenovo
 */
public class Conexion {
    String bd = "ecotribe";
    String url = "jdbc:mysql://localhost:3306/";
    String user = "root";
    String password = "VocalEm343.";
    String driver  = "com.mysql.cj.jdbc.Driver";
    Connection con;
    
    public Conexion()
    {
        
    }
    
    public Connection Conectar() throws SQLException{
        try {
            Class.forName(driver);
            con = DriverManager.getConnection(url+bd,user,password);
             System.out.println("Si se conecto");
             return con;
        } catch (ClassNotFoundException | SQLException ex) {
            System.out.println(ex);
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
        
    }
    
    public void desconectar ()
    {
        try
        {
            con.close();
        }
        catch(SQLException ex)
        {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
