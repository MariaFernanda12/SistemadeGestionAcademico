package com.controlador;

import com.modelo.AccederUsuario;
import com.modelo.Coordinador;
import com.modelo.Estudiante;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Nombre de Clase: AccesoLogin. Fecha: 29-09-2017. Version: 1.0. Copyright:
 * ITCA-FEPADE.
 *
 * @author Victor Alvarado
 */
public class AccesoLogin extends HttpServlet {
 
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession objSesion = request.getSession();
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        if (request.getParameter("btnAcceder") != null) {
            if (request.getParameter("tipo1") != null) {
                Coordinador cor = new Coordinador();
                String user = request.getParameter("nombreUsuario");
                String clave = request.getParameter("clave");
                cor.setNombreUsuario(user);
                cor.setClave(clave);
                AccederUsuario login = new AccederUsuario();
                String estado;

                try {
                    estado = login.logincor(cor);

                    if ("true".equals(estado)) {

                         

                        objSesion.setAttribute("usuario", user);
                        objSesion.setAttribute("nivel", "Administrador");
                        response.sendRedirect("vistaAdmin.jsp");

                    } else {
                        response.sendRedirect("errorlog.jsp");

                    }
                } catch (Exception ex) {
                    System.out.println("error" + ex);
                }

            } else {
                if (request.getParameter("tipo2") != null) {
                    System.out.println("tipo2" );
                    Estudiante est = new Estudiante();
             
                    String user = request.getParameter("nombreUsuario");
                    String clave = request.getParameter("clave");

                    est.setNombreUsuario(user);
                    est.setClave(clave);
                    AccederUsuario login = new AccederUsuario();
                    String estado;

                    try {
                        estado = login.loginest(est);
                        System.out.println("estado"+estado);

                        if ("true".equals(estado)) {
                            System.out.println("entra al if de true");

                           
                            String var = est.getTipoUsuario();
                            System.out.println("tipo user"+var);

                            if (est.getTipoUsuario().equals("Activo")) {
                                System.out.println("entra al if de activo");
                                 objSesion.setAttribute("usuario", user);
                                objSesion.setAttribute("nivel", "Cliente");
                                response.sendRedirect("vistaCliente.jsp");
                                System.out.println("correcta y valida");
                            } else if (est.getTipoUsuario().equals("Inactivo")) {
                                System.out.println("entra al if de inactivo");
                                objSesion.setAttribute("usuario", user);
                                objSesion.setAttribute("nivel", "Cliente");
                                response.sendRedirect("inactiveuser.jsp");
                            }
                        }else{
                         response.sendRedirect("errorlog.jsp");
                        }
                    } catch (Exception ex) {
                               objSesion.setAttribute("usuario", user);
                                objSesion.setAttribute("nivel", "Cliente");
                                response.sendRedirect("vistaCliente.jsp");
                    }

                }

            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
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
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
