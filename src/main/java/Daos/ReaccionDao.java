/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Daos;

import Clases.Conexion;
import Clases.Reaccion;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Lenovo
 */
public class ReaccionDao {
     private final Conexion dbc = new Conexion();
        
    public boolean createReaccion(Reaccion reac) {
        String sql = "{CALL SP_REACCIONES(?, ?, ?, ?, ?, ?)}";
        boolean respuesta = false;
        try (Connection conn = dbc.Conectar();
        CallableStatement stmt = conn.prepareCall(sql)) {
        
        stmt.setInt(1, 1);
        stmt.setNull(2, Types.INTEGER);
        stmt.setInt(3, reac.getId_usuario());
        stmt.setInt(4, reac.getId_publicacion());
        stmt.setInt(5, reac.getTipo());
        stmt.registerOutParameter(6, Types.BOOLEAN);

        stmt.execute();

        respuesta = stmt.getBoolean(6);
        stmt.close();
        conn.close();
    } catch (SQLException e) {
        e.printStackTrace(); // Imprimir errores para depuración
    }
    return respuesta;
    }
    
    public int conteoLikes(int idPubli) {
        String sql = "{CALL SP_REACCIONES(?, ?, ?, ?, ?, ?)}";
        int likes = 0;
        try (Connection conn = dbc.Conectar();
        CallableStatement stmt = conn.prepareCall(sql)) {
        
        stmt.setInt(1, 2);
        stmt.setNull(2, Types.INTEGER);
        stmt.setNull(3, Types.INTEGER);
        stmt.setInt (4, idPubli);
        stmt.setNull(5, Types.INTEGER);
        stmt.registerOutParameter(6, Types.BOOLEAN);
        
         ResultSet rs = stmt.executeQuery();
        // Procesar el resultado
        while (rs.next()) {
           likes = rs.getInt("CONTEOLIKES");
        }
        stmt.close();
        conn.close();
    } catch (SQLException e) {
        e.printStackTrace(); // Imprimir errores para depuración
    }
    return likes;
    }
    
    public int conteoDislikes(int idPubli) {
        String sql = "{CALL SP_REACCIONES(?, ?, ?, ?, ?, ?)}";
        int likes = 0;
        try (Connection conn = dbc.Conectar();
        CallableStatement stmt = conn.prepareCall(sql)) {
        
        stmt.setInt(1, 3);
        stmt.setNull(2, Types.INTEGER);
        stmt.setNull(3, Types.INTEGER);
        stmt.setInt (4, idPubli);
        stmt.setNull(5, Types.INTEGER);
        stmt.registerOutParameter(6, Types.BOOLEAN);
        
         ResultSet rs = stmt.executeQuery();
        // Procesar el resultado
        while (rs.next()) {
           likes = rs.getInt("CONTEOLIKES");
        }
        stmt.close();
        conn.close();
    } catch (SQLException e) {
        e.printStackTrace(); // Imprimir errores para depuración
    }
    return likes;
    }
    
    public List<Reaccion> listaReacciones(int idPubli) {
    List<Reaccion> listaReacciones = new ArrayList<>();
    String sql = "{CALL SP_PUBLICACIONES(?, ?, ?, ?, ?, ?, ?, ?)}";
    try (Connection conn = dbc.Conectar();
        CallableStatement stmt = conn.prepareCall(sql)) {
        stmt.setInt(1, 4);
        stmt.setNull(2, Types.INTEGER);
        stmt.setNull(3, Types.INTEGER);
        stmt.setInt (4, idPubli);
        stmt.setNull(5, Types.INTEGER);
        stmt.registerOutParameter(6, Types.BOOLEAN);
        
        ResultSet rs = stmt.executeQuery();
        // Procesar el resultado
        if (rs.next()) {
            Reaccion reac = new Reaccion();
            reac.setId(rs.getInt("ID"));
            reac.setId_usuario(rs.getInt("ID_USUARIO"));
            reac.setId_publicacion(rs.getInt("ID_PUBLICACION"));
            reac.setTipo(rs.getInt("TIPO"));

            listaReacciones.add(reac);
        }

        rs.close();
        stmt.close();
        conn.close();

    } catch (SQLException e) {
        e.printStackTrace();  // Imprimir errores para depuración
    }
    
    return listaReacciones;
    }
}
