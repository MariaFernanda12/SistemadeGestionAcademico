
package com.modelo;
import java.sql.*;

/**
 * Nombre de Clase: Conexion.
 * Fecha: 29-09-2017.
 * Version: 1.0.
 * Copyright: ITCA-FEPADE.
 * @author Victor Alvarado
 */
public class Conexion {
    private Connection con;

    public Connection getCon() {
        return con;
    }

    public void setCon(Connection con) {
        this.con = con;
    }
    
    public void conectar() throws Exception
    {
        try
        {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            con=DriverManager.getConnection("jdbc:derby://localhost:1527/prueba","root","1");
            System.out.println("conexion ok");
        }
        catch (ClassNotFoundException | SQLException e)
        {
            System.out.println("e"+e);
            throw e;
        }
    }
    
    public void desconectar() throws Exception
    {
        try
        {
            if(con!=null)
            {
                if(con.isClosed()==false)
                {
                    con.isClosed();
                }
            }
        }
        catch (SQLException e)
        {
            throw e;
        }
    }
}
