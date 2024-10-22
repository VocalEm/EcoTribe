/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Daos;

import Clases.Categoria;
import Clases.Conexion;
import Clases.Publicacion;
import Clases.Usuario;
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
        
    public boolean createPublicacion(Publicacion publi) { // la publicacion va a ser cargada con un usuario y una categoria entera por lo que en base a esos atributos
        String sql = "{CALL SP_PUBLICACIONES(?, ?, ?, ?, ?, ?, ?, ?)}"; // vamos a generar una instancia de usuario y categoria que seran llenadas con la ayuda de nuestros metodos
        
        Usuario usuario = new Usuario();
        usuario = publi.getUsuario();
        
        Categoria categoria = new Categoria();
        categoria = publi.getCategoria(); 
        
        boolean respuesta = false;
        try (Connection conn = dbc.Conectar();
        CallableStatement stmt = conn.prepareCall(sql)) {
        
        stmt.setInt(1, 1);
        stmt.setNull(2, Types.INTEGER);
        stmt.setInt(3, usuario.getId());//
        stmt.setString(4, publi.getTitulo());
        stmt.setString(5, publi.getDescripcion());
        stmt.setString(6, publi.getImagen()); // Conversión de LocalDate a java.sql.Date
        stmt.setInt(7, categoria.getId());//
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
       
    public Publicacion show (int id){
        
    Publicacion publi = new Publicacion();
    String sql = "{CALL SP_PUBLICACIONES(?, ?, ?, ?, ?, ?, ?, ?)}";
    try (Connection conn = dbc.Conectar();
        CallableStatement stmt = conn.prepareCall(sql))
        {
        stmt.setInt(1, 3);
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
            Usuario usuario = new Usuario();
            usuario.setUsername(rs.getString("USERNAME"));
            Categoria categoria = new Categoria();
            categoria.setNombre(rs.getString("CATEGORIA"));
            //LLENADO DE PUBLI
            publi.setId(rs.getInt("ID"));
            publi.setTitulo(rs.getString("TITULO"));
            publi.setDescripcion(rs.getString("DESCRIPCION"));
            publi.setFecha_creacion(rs.getDate("FECHA").toLocalDate());
            publi.setDescripcion(rs.getString("DESCRIPCION"));
            publi.setImagen(rs.getString("IMAGEN"));
            publi.setUsuario(usuario);
            publi.setCategoria(categoria);
        }

        rs.close();
        stmt.close();
        conn.close();

    } catch (SQLException e) {
        e.printStackTrace();  // Imprimir errores para depuración
    }
    
    return publi;
    } //muestra una sola

    public List<Publicacion> index () {
    List<Publicacion> listaPublicaciones = new ArrayList<>();
    String sql = "{CALL SP_PUBLICACIONES(?, ?, ?, ?, ?, ?, ?, ?)}";
    try (Connection conn = dbc.Conectar();
        CallableStatement stmt = conn.prepareCall(sql)) {
        stmt.setInt(1, 4);
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
            Usuario usuario = new Usuario();
            usuario.setUsername(rs.getString("USERNAME"));
            Categoria categoria = new Categoria();
            categoria.setNombre(rs.getString("CATEGORIA"));
            
            Publicacion publi = new Publicacion();
            publi.setUsuario(usuario);
            publi.setCategoria(categoria);
            publi.setId(rs.getInt("ID"));
            publi.setFecha_creacion(rs.getDate("FECHA").toLocalDate());
            publi.setTitulo(rs.getString("TITULO"));
            publi.setDescripcion(rs.getString("DESCRIPCION"));
            publi.setImagen(rs.getString("IMAGEN"));
            listaPublicaciones.add(publi);
        }

        rs.close();
        stmt.close();
        conn.close();

    } catch (SQLException e) {
        e.printStackTrace();  // Imprimir errores para depuración
    }
    
    return listaPublicaciones;
    } // feed
    
    public List<Publicacion> showPublicacion (int id_usuario) {
    List<Publicacion> listaPublicaciones = new ArrayList<>();
    String sql = "{CALL SP_PUBLICACIONES(?, ?, ?, ?, ?, ?, ?, ?)}";
    try (Connection conn = dbc.Conectar();
        CallableStatement stmt = conn.prepareCall(sql)) {
         stmt.setInt(1, 5);
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
            Publicacion publi = new Publicacion();
            Usuario usuario = new Usuario();
            usuario.setUsername(rs.getString("USERNAME"));
            Categoria categoria = new Categoria();
            categoria.setNombre(rs.getString("CATEGORIA"));
            publi.setUsuario(usuario);
            publi.setCategoria(categoria);
            publi.setId(rs.getInt("ID"));
            publi.setFecha_creacion(rs.getDate("FECHA_CREACION").toLocalDate());
            publi.setTitulo(rs.getString("TITULO"));
            publi.setDescripcion(rs.getString("DESCRIPCION"));
            publi.setImagen(rs.getString("IMAGEN"));
            listaPublicaciones.add(publi);
        }

        rs.close();
        stmt.close();
        conn.close();

    } catch (SQLException e) {
        e.printStackTrace();  // Imprimir errores para depuración
    }
    
    return listaPublicaciones;
    } //muestra publicaciones de un solo usuario
}
