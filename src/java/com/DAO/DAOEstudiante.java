/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.DAO;

import com.modelo.Conexion;
import com.modelo.Estudiante;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author maria
 */
public class DAOEstudiante extends Conexion {
     
 private PreparedStatement statement;
 private boolean estadoOperacion;
      public ArrayList<Estudiante> listarTodo() throws Exception{
          ArrayList<Estudiante> respuesta = new ArrayList();
        String estado = "";
        ResultSet rs;
        try {
            this.conectar();
            String sql = "select * from estudiante";
            PreparedStatement ps = this.getCon().prepareStatement(sql);
            rs = ps.executeQuery();
             while (rs.next()) {
                Estudiante elm = new Estudiante();
                elm.setIdUsuario(rs.getInt("IdUsuario"));
                elm.setNombreUsuario(rs.getString("nombreUsuario"));
                elm.setClave("clave");
                elm.setTipoUsuario(rs.getString("tipoUsuario"));

                respuesta.add(elm);
            }

        } catch (Exception e) {
            throw e;
        }
            return respuesta;
      
      
      
      }
      

 public List<Estudiante> obtenerEstudiantes() throws SQLException, Exception {
    
  ResultSet resultSet = null;
  List<Estudiante> listaEstudiantes = new ArrayList<>();
 
  String sql = null;
  estadoOperacion = false;
 ResultSet rs;
 
  try {
       this.conectar();
   sql = "SELECT * FROM productos";
   PreparedStatement ps = this.getCon().prepareStatement(sql);
   rs = ps.executeQuery();
   while (rs.next()) {
    Estudiante p = new Estudiante();
    p.setIdUsuario(rs.getInt(1));
    p.setNombreUsuario(rs.getString(2));
    p.setClave(rs.getString(3));
    p.setTipoUsuario(rs.getString(4));
   
    listaEstudiantes.add(p);
   }
 
  } catch (SQLException e) {
   e.printStackTrace();
  }
 
  return listaEstudiantes;
 }
 
      
}
