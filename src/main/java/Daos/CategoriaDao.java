/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Daos;

import Clases.Categoria;
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
public class CategoriaDao {
    private final Conexion dbc = new Conexion();

    public Categoria show(int id){
    Categoria cat = new Categoria();
    String sql = "{CALL SP_CATEGORIAS(?, ?, ?, ?)}";
    try (Connection conn = dbc.Conectar();
        CallableStatement stmt = conn.prepareCall(sql)) {
        stmt.setInt(1, 1);
        stmt.setInt(2, id);
        stmt.setNull(3, Types.VARCHAR);
        stmt.registerOutParameter(4, Types.BOOLEAN);
        
        ResultSet rs = stmt.executeQuery();
        // Procesar el resultado
        if (rs.next()) {
            cat.setId(rs.getInt("ID"));
            cat.setNombre(rs.getString("NOMBRE"));
        }

        rs.close();
        stmt.close();
        conn.close();

    } catch (SQLException e) {
        e.printStackTrace();  // Imprimir errores para depuración
    }
    
    return cat;
    }
    
    public List<Categoria> index () {
    List<Categoria> listaCategorias = new ArrayList<>();
    String sql = "{CALL SP_PUBLICACIONES(?, ?, ?, ?)}";
    try (Connection conn = dbc.Conectar();
        CallableStatement stmt = conn.prepareCall(sql)) {
        stmt.setInt(1, 2);
        stmt.setNull(2, Types.INTEGER);
        stmt.setNull(3, Types.VARCHAR);
        stmt.registerOutParameter(4, Types.BOOLEAN);
        
        ResultSet rs = stmt.executeQuery();
        // Procesar el resultado
        if (rs.next()) {
            Categoria cat = new Categoria();
            cat.setId(rs.getInt("ID"));
            cat.setNombre(rs.getString("NOMBRE"));
            listaCategorias.add(cat);
        }

        rs.close();
        stmt.close();
        conn.close();

    } catch (SQLException e) {
        e.printStackTrace();  // Imprimir errores para depuración
    }
    
    return listaCategorias;
    }
}
