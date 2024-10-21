/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Daos;

import Clases.Conexion;
import Clases.Publicacion;
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
public class PublicacionDao {
    private final Conexion dbc = new Conexion();
        
    public boolean createPublicacion(Publicacion publi) {
        String sql = "{CALL SP_PUBLICACIONES(?, ?, ?, ?, ?, ?, ?, ?)}";
        boolean respuesta = false;
        try (Connection conn = dbc.Conectar();
        CallableStatement stmt = conn.prepareCall(sql)) {
        
        stmt.setInt(1, 1);
        stmt.setInt(2, Types.INTEGER);
        stmt.setInt(3, publi.getId_usuario());
        stmt.setString(4, publi.getTitulo());
        stmt.setString(5, publi.getDescripcion());
        stmt.setString(6, publi.getImagen()); // Conversión de LocalDate a java.sql.Date
        stmt.setInt(7, publi.getId_categoria());
        stmt.registerOutParameter(8, Types.BOOLEAN);

        stmt.execute();

        respuesta = stmt.getBoolean(8);
        stmt.close();
        conn.close();
    } catch (SQLException e) {
        e.printStackTrace(); // Imprimir errores para depuración
    }
    return respuesta;
    }
    
    public boolean delete(int id) {
    boolean respuesta = false;
    String sql = "{CALL SP_PUBLICACIONES(?, ?, ?, ?, ?, ?, ?, ?)}";
    try (Connection conn = dbc.Conectar();
         CallableStatement stmt = conn.prepareCall(sql)) {
        
        stmt.setInt(1, 3);
        stmt.setInt(2, id);
        stmt.setNull(3, Types.INTEGER);
        stmt.setNull(5, Types.VARCHAR);
        stmt.setNull(4, Types.VARCHAR);
        stmt.setNull(6, Types.VARCHAR); // Conversión de LocalDate a java.sql.Date
        stmt.setNull(7, Types.INTEGER);
        stmt.registerOutParameter(8, Types.BOOLEAN);

        
         stmt.execute();

        respuesta = stmt.getBoolean(8);
        stmt.close();
        conn.close();
    } catch (SQLException e) {
        e.printStackTrace();  // Imprimir errores para depuración
    }

    return respuesta;
    
    }
       
    public Publicacion show (int id) {
        
    Publicacion publi = new Publicacion();
    String sql = "{CALL SP_PUBLICACIONES(?, ?, ?, ?, ?, ?, ?, ?)}";
    try (Connection conn = dbc.Conectar();
        CallableStatement stmt = conn.prepareCall(sql)) {
        stmt.setInt(1, 1);
        stmt.setInt(2, id);
        stmt.setNull(3, Types.INTEGER);
        stmt.setNull(4, Types.VARCHAR);
        stmt.setNull(5, Types.VARCHAR);
        stmt.setNull(6, Types.VARCHAR); // Conversión de LocalDate a java.sql.Date
        stmt.setNull(7, Types.INTEGER);
        stmt.registerOutParameter(8, Types.BOOLEAN);
        
        ResultSet rs = stmt.executeQuery();
        // Procesar el resultado
        if (rs.next()) {
            publi.setId(rs.getInt("ID"));
            publi.setId_usuario(rs.getInt("ID_USUARIO"));
            publi.setFecha_creacion(rs.getDate("FECHA_CREACION").toLocalDate());
            publi.setTitulo(rs.getString("TITULO"));
            publi.setDescripcion(rs.getString("DESCRIPCION"));
            publi.setImagen(rs.getString("IMAGEN"));
            publi.setId_categoria(rs.getInt("ID_CATEGORIA"));
        }

        rs.close();
        stmt.close();
        conn.close();

    } catch (SQLException e) {
        e.printStackTrace();  // Imprimir errores para depuración
    }
    
    return publi;
    }

    public List<Publicacion> index () {
    List<Publicacion> listaPublicaciones = new ArrayList<>();
    String sql = "{CALL SP_PUBLICACIONES(?, ?, ?, ?, ?, ?, ?, ?)}";
    try (Connection conn = dbc.Conectar();
        CallableStatement stmt = conn.prepareCall(sql)) {
        stmt.setInt(1, 1);
        stmt.setNull(2, Types.INTEGER);
        stmt.setNull(3, Types.INTEGER);
        stmt.setNull(4, Types.VARCHAR);
        stmt.setNull(5, Types.VARCHAR);
        stmt.setNull(6, Types.VARCHAR); // Conversión de LocalDate a java.sql.Date
        stmt.setNull(7, Types.INTEGER);
        stmt.registerOutParameter(8, Types.BOOLEAN);
        
        ResultSet rs = stmt.executeQuery();
        // Procesar el resultado
        if (rs.next()) {
            Publicacion publi = new Publicacion();
            publi.setId(rs.getInt("ID"));
            publi.setId_usuario(rs.getInt("ID_USUARIO"));
            publi.setFecha_creacion(rs.getDate("FECHA_CREACION").toLocalDate());
            publi.setTitulo(rs.getString("TITULO"));
            publi.setDescripcion(rs.getString("DESCRIPCION"));
            publi.setImagen(rs.getString("IMAGEN"));
            publi.setId_categoria(rs.getInt("ID_CATEGORIA"));
            listaPublicaciones.add(publi);
        }

        rs.close();
        stmt.close();
        conn.close();

    } catch (SQLException e) {
        e.printStackTrace();  // Imprimir errores para depuración
    }
    
    return listaPublicaciones;
    }
    
    public Publicacion showPublicacion (int id_usuario) {
        
    Publicacion publi = new Publicacion();
    String sql = "{CALL SP_PUBLICACIONES(?, ?, ?, ?, ?, ?, ?, ?)}";
    try (Connection conn = dbc.Conectar();
        CallableStatement stmt = conn.prepareCall(sql)) {
         stmt.setInt(1, 1);
        stmt.setNull(2, Types.INTEGER);
        stmt.setInt (3, id_usuario);    
        stmt.setNull(4, Types.VARCHAR);
        stmt.setNull(5, Types.VARCHAR);
        stmt.setNull(6, Types.VARCHAR); // Conversión de LocalDate a java.sql.Date
        stmt.setNull(7, Types.INTEGER);
        stmt.registerOutParameter(8, Types.BOOLEAN);
        
        ResultSet rs = stmt.executeQuery();
        // Procesar el resultado
        if (rs.next()) {
            publi.setId(rs.getInt("ID"));
            publi.setId_usuario(rs.getInt("ID_USUARIO"));
            publi.setFecha_creacion(rs.getDate("FECHA_CREACION").toLocalDate());
            publi.setTitulo(rs.getString("TITULO"));
            publi.setDescripcion(rs.getString("DESCRIPCION"));
            publi.setImagen(rs.getString("IMAGEN"));
            publi.setId_categoria(rs.getInt("ID_CATEGORIA"));            
        }

        rs.close();
        stmt.close();
        conn.close();

    } catch (SQLException e) {
        e.printStackTrace();  // Imprimir errores para depuración
    }
    
    return publi;
    }
}
