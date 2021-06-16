package com.modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 * Nombre de Clase: AccederUsuario. Fecha: 29-09-2017. Version: 1.0. Copyright:
 * ITCA-FEPADE.
 *
 * @author Victor Alvarado
 */
public class AccederUsuario extends Conexion {



    public String loginest(Estudiante usu) throws Exception {
        String estado = "";
        ResultSet rs;
        try {
            this.conectar();
            String sql = "select tipoUsuario from estudiante where nombreUsuario=? and clave=?";
            PreparedStatement ps = this.getCon().prepareStatement(sql);
            ps.setString(1, usu.getNombreUsuario());
            ps.setString(2, usu.getClave());
            rs = ps.executeQuery(); 
            
            if (rs.next()) {
                
                estado = "true";

            }
            usu.setTipoUsuario(rs.getString("tipoUsuario"));
        } catch (Exception e) {
            throw e;
        }
        return estado;
    }

    public String logincor(Coordinador usu) throws Exception {
        String estado = "";
        ResultSet rs;
        try {
            this.conectar();
            String sql = "select idUsuario from coordinador where nombreUsuario=? and clave=?";
            PreparedStatement ps = this.getCon().prepareStatement(sql);
            ps.setString(1, usu.getNombreUsuario());
            ps.setString(2, usu.getClave());
            rs = ps.executeQuery();
            if (rs.next()) {

                estado = "true";

            }

        } catch (Exception e) {
            throw e;
        }
        return estado;
    }
}
