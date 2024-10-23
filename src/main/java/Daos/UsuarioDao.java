/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Daos;

import Clases.Conexion;
import Clases.Usuario;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Lenovo
 */
public class UsuarioDao {
    private final Conexion dbc = new Conexion();
    
    public boolean createUser(Usuario user) {
    String sql = "{CALL SP_USUARIOS(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)}";
    boolean respuesta = false;
    try (Connection conn = dbc.Conectar();
         CallableStatement stmt = conn.prepareCall(sql)) {
        
        stmt.setInt(1, 1);
        stmt.setNull(2, Types.INTEGER);
        stmt.setString(3, user.getNombre());
        stmt.setString(4, user.getApellido_pat());
        stmt.setString(5, user.getApellido_mat());
        stmt.setDate(6, Date.valueOf(user.getFecha_nacimiento())); // Conversión de LocalDate a java.sql.Date
        stmt.setString(7, user.getCorreo());
        stmt.setString(8, user.getImagenPerfil());
        stmt.setString(9, user.getUsername());
        stmt.setString(10, user.getPassword());
        stmt.registerOutParameter(11, Types.BOOLEAN);
        
        stmt.execute();

        respuesta = stmt.getBoolean(11);
        stmt.close();
        conn.close();
    } catch (SQLException e) {
        e.printStackTrace(); // Imprimir errores para depuración
    }
    return respuesta;
    }
    
    public boolean delete(int id) {
    boolean respuesta = false;
    String sql = "{CALL SP_USUARIOS(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)}";
    try (Connection conn = dbc.Conectar();
         CallableStatement stmt = conn.prepareCall(sql)) {
        
        stmt.setInt(1, 3);
        stmt.setInt(2, id);
        stmt.setNull(3, Types.VARCHAR);
        stmt.setNull(5, Types.VARCHAR);
        stmt.setNull(4, Types.VARCHAR);
        stmt.setNull(6, Types.DATE); // Conversión de LocalDate a java.sql.Date
        stmt.setNull(7, Types.VARCHAR);
        stmt.setNull(8, Types.VARCHAR);
        stmt.setNull(9, Types.VARCHAR);
        stmt.setNull(10,Types.VARCHAR);
        stmt.registerOutParameter(11, Types.BOOLEAN);
        
         stmt.execute();

        respuesta = stmt.getBoolean(11);
        stmt.close();
        conn.close();
    } catch (SQLException e) {
        e.printStackTrace();  // Imprimir errores para depuración
    }

    return respuesta;
    
    }
    
    public boolean update(int id, Usuario user){
        String sql = "{CALL SP_USUARIOS(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)}";
        boolean respuesta = false;
         try (Connection conn = dbc.Conectar();
         CallableStatement stmt = conn.prepareCall(sql)) {
        
        stmt.setInt(1, 1);
        stmt.setNull(2, id);
        stmt.setString(3, user.getNombre());
        stmt.setString(4, user.getApellido_pat());
        stmt.setString(5, user.getApellido_mat());
        stmt.setDate(6, Date.valueOf(user.getFecha_nacimiento())); // Conversión de LocalDate a java.sql.Date
        stmt.setString(7, user.getCorreo());
        stmt.setString(8, user.getImagenPerfil());
        stmt.setString(9, user.getUsername());
        stmt.setString(10, user.getPassword());
        stmt.registerOutParameter(11, Types.BOOLEAN);
        
        stmt.execute();

        respuesta = stmt.getBoolean(11);
        stmt.close();
        conn.close();
    } catch (SQLException e) {
        e.printStackTrace(); // Imprimir errores para depuración
    }
        
        return respuesta;
    }

    public Usuario show(int id) {
    Usuario user = new Usuario();
    String sql = "{CALL SP_USUARIOS(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)}";
    try (Connection conn = dbc.Conectar();
         CallableStatement stmt = conn.prepareCall(sql)) {
        
        stmt.setInt(1, 2);
        stmt.setInt(2, user.getId());
        stmt.setNull(3, Types.VARCHAR);
        stmt.setNull(5, Types.VARCHAR);
        stmt.setNull(4, Types.VARCHAR);
        stmt.setNull(6, Types.DATE); // Conversión de LocalDate a java.sql.Date
        stmt.setNull(7, Types.VARCHAR);
        stmt.setNull(8, Types.VARCHAR);
        stmt.setNull(9, Types.VARCHAR);
        stmt.setNull(10,Types.VARCHAR);
        stmt.registerOutParameter(11, Types.BOOLEAN);
        
        ResultSet rs = stmt.executeQuery();

 // Procesar el resultado
        while (rs.next()) {
            user.setId(rs.getInt("ID"));
            user.setNombre(rs.getString("NOMBRE"));
            user.setApellido_pat(rs.getString("APELLIDO_PAT"));
            user.setApellido_mat(rs.getString("APELLIDO_MAT"));
            user.setFecha_nacimiento(rs.getDate("FECHA_NACIMIENTO").toLocalDate());
            user.setCorreo(rs.getString("CORREO"));
            user.setImagenPerfil(rs.getString("PERFIL_IMG"));
            user.setUsername(rs.getString("USERNAME"));
            user.setPassword(rs.getString("PASSWORD"));
        }

        rs.close();
        stmt.close();
        conn.close();

    } catch (SQLException e) {
        e.printStackTrace();  // Imprimir errores para depuración
    }

    return user;
    
    }
    
    public boolean login(String correo, String password) {
    boolean respuesta = false;
    String sql = "{CALL SP_USUARIOS(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)}";
    try (Connection conn = dbc.Conectar();
         CallableStatement stmt = conn.prepareCall(sql)) {
        
        stmt.setInt(1, 5);
        stmt.setNull(2, Types.INTEGER);
        stmt.setNull(3, Types.VARCHAR);
        stmt.setNull(5, Types.VARCHAR);
        stmt.setNull(4, Types.VARCHAR);
        stmt.setNull(6, Types.DATE); // Conversión de LocalDate a java.sql.Date
        stmt.setString(7, correo);
        stmt.setNull(8, Types.VARCHAR);
        stmt.setNull(9,  Types.VARCHAR);
        stmt.setString(10, password);
        stmt.registerOutParameter(11, Types.BOOLEAN);
        
         stmt.execute();

        respuesta = stmt.getBoolean(11);
        stmt.close();
        conn.close();

    } catch (SQLException e) {
        e.printStackTrace();  // Imprimir errores para depuración
    }

    return respuesta;
    
    }
       
    public List<Usuario> index() {
    List<Usuario> listaUsuarios = new ArrayList<>();
    String sql = "{CALL SP_USUARIOS(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)}";

    try (Connection conn = dbc.Conectar();
         CallableStatement stmt = conn.prepareCall(sql)) {

        // Setear los parámetros de entrada
        stmt.setInt(1, 6);  // Operación para listar usuarios
        stmt.setNull(2, Types.INTEGER);  // Id del usuario
        stmt.setNull(3, Types.VARCHAR);  // Nombre
        stmt.setNull(4, Types.VARCHAR);  // Apellido Paterno
        stmt.setNull(5, Types.VARCHAR);  // Apellido Materno
        stmt.setNull(6, Types.DATE);  // Fecha de nacimiento
        stmt.setNull(7, Types.VARCHAR);  // Correo
        stmt.setNull(8, Types.VARCHAR);  // Imagen de perfil
        stmt.setNull(9, Types.VARCHAR);  // Username
        stmt.setNull(10, Types.VARCHAR); // Password
        stmt.registerOutParameter(11, Types.BOOLEAN);  // Parámetro de salida

        ResultSet rs = stmt.executeQuery(); // Procesar el resultado

        // Procesar los resultados
        while (rs.next()) {
            Usuario user = new Usuario();
            user.setId(rs.getInt("ID"));
            user.setNombre(rs.getString("NOMBRE"));
            user.setApellido_pat(rs.getString("APELLIDO_PAT"));
            user.setApellido_mat(rs.getString("APELLIDO_MAT"));
            user.setFecha_nacimiento(rs.getDate("FECHA_NACIMIENTO").toLocalDate());
            user.setCorreo(rs.getString("CORREO"));
            user.setImagenPerfil(rs.getString("PERFIL_IMG"));
            user.setUsername(rs.getString("USERNAME"));
            user.setPassword(rs.getString("PASSWORD"));
            listaUsuarios.add(user);
        }

        rs.close();
        stmt.close();
        conn.close();

    } catch (SQLException e) {
        e.printStackTrace();  // Imprimir errores para depuración
    }

    return listaUsuarios;
    }
    
    public int obtenerId(String correo) {
        int idRes = -1;
    String sql = "{CALL SP_USUARIOS(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)}";
    try (Connection conn = dbc.Conectar();
         CallableStatement stmt = conn.prepareCall(sql)) {
        
        stmt.setInt(1, 7);
        stmt.setNull(2, Types.INTEGER);
        stmt.setNull(3, Types.VARCHAR);
        stmt.setNull(5, Types.VARCHAR);
        stmt.setNull(4, Types.VARCHAR);
        stmt.setNull(6, Types.DATE); // Conversión de LocalDate a java.sql.Date
        stmt.setString(7, correo);
        stmt.setNull(8, Types.VARCHAR);
        stmt.setNull(9, Types.VARCHAR);
        stmt.setNull(10,Types.VARCHAR);
        stmt.registerOutParameter(11, Types.BOOLEAN);
        
        ResultSet rs = stmt.executeQuery();

 // Procesar el resultado
        while (rs.next()) {
            idRes = rs.getInt("ID");
        }

        rs.close();
        stmt.close();
        conn.close();

    } catch (SQLException e) {
        e.printStackTrace();  // Imprimir errores para depuración
    }

    return idRes;
    
    }
    
    public boolean validacionCorreo(String correo)
    {
        boolean respuesta = false;
        String sql = "{CALL SP_USUARIOS(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)}";
        try (Connection conn = dbc.Conectar();
        CallableStatement stmt = conn.prepareCall(sql)) {
        
        stmt.setInt(1, 8);
        stmt.setNull(2, Types.INTEGER);
        stmt.setNull(3, Types.VARCHAR);
        stmt.setNull(5, Types.VARCHAR);
        stmt.setNull(4, Types.VARCHAR);
        stmt.setNull(6, Types.DATE); // Conversión de LocalDate a java.sql.Date
        stmt.setString(7, correo);
        stmt.setNull(8, Types.VARCHAR);
        stmt.setNull(9,  Types.VARCHAR);
        stmt.setNull(10, Types.VARCHAR);
        stmt.registerOutParameter(11, Types.BOOLEAN);
        
         stmt.execute();

        respuesta = stmt.getBoolean(11);
        stmt.close();
        conn.close();

    } catch (SQLException e) {
        e.printStackTrace();  // Imprimir errores para depuración
    }

    return respuesta;
    
    }
    
}
