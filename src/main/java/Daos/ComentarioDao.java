/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Daos;

import Clases.Comentario;
import Clases.Conexion;
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
public class ComentarioDao {
     private final Conexion dbc = new Conexion();

      public boolean createComentario(Comentario coment) {
        String sql = "{CALL SP_COMENTARIOS(?, ?, ?, ?, ?, ?)}";
        boolean respuesta = false;
        try (Connection conn = dbc.Conectar();
        CallableStatement stmt = conn.prepareCall(sql)) {
        
        stmt.setInt(1, 1);
        stmt.setNull(2, Types.INTEGER);
        stmt.setInt(3, coment.getId_usuario());
        stmt.setInt(4,coment.getId_publicacion());
        stmt.setString(5, coment.getDescripcion());
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
      
      public List<Comentario> index(int idPubli) {
    List<Comentario> listaComentarios = new ArrayList<>();
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
            Comentario coment = new Comentario();
            coment.setId(rs.getInt("ID"));
            coment.setId_usuario(rs.getInt("ID_USUARIO"));
            coment.setId_publicacion(rs.getInt("ID_PUBLICACION"));
            coment.setDescripcion(rs.getString("DESCRIPCION"));

            listaComentarios.add(coment);
        }

        rs.close();
        stmt.close();
        conn.close();

    } catch (SQLException e) {
        e.printStackTrace();  // Imprimir errores para depuración
    }
    
    return listaComentarios;
    }
}
