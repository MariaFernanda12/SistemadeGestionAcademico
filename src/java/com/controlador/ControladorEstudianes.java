/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controlador;
import com.DAO.DAOEstudiante;
import com.modelo.Estudiante;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
 
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 *
 * @author María Fernanda
 */
public class ControladorEstudianes extends HttpServlet {
    
    private static final long serialVersionUID = 1L;
 
 /**
  * @see HttpServlet#HttpServlet()
  */
  
 
 /**
  * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
  *      response)
  */
 protected void processRequest(HttpServletRequest request, HttpServletResponse response)
   throws ServletException, IOException {
  // TODO Auto-generated method stub
     System.out.println("entro al controlador");
  String opcion = request.getParameter("opcion");
 
   if (opcion.equals("listar")) {
 
   DAOEstudiante productoDAO = new DAOEstudiante();
   List<Estudiante> lista = new ArrayList<>();
   try {
    lista = productoDAO.obtenerEstudiantes();
    for (Estudiante estudiante : lista) {
     System.out.println(estudiante);
    }
 
    request.setAttribute("lista", lista);
    RequestDispatcher requestDispatcher = request.getRequestDispatcher("listar.jsp");
    requestDispatcher.forward(request, response);
 
   } catch (SQLException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
   }  catch (Exception ex) {
          Logger.getLogger(ControladorEstudianes.class.getName()).log(Level.SEVERE, null, ex);
      }
 
   System.out.println("Usted a presionado la opcion listar");
  } 
 }
 
 /**
  * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
  *      response)
  */
     @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }
    
}
