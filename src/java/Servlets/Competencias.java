package Servlets;

import Controller.GestorBD;
import Model.Competencia;
import com.google.gson.Gson;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
//import java.io.InputStreamReader;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
//import com.google.gson.Gson;

/**
 *
 * @author daniel
 */
@WebServlet(name = "Competencias", urlPatterns = {"/Competencias"})
public class Competencias extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Competencias</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Competencias at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        GestorBD ges = new GestorBD();

        ArrayList<Competencia> compe = new ArrayList<>();
        try {
            compe = ges.BuscarCompetencias();
        } catch (SQLException | ClassNotFoundException ex) {
            Logger.getLogger(Competencias.class.getName()).log(Level.SEVERE, null, ex);
        }

        Gson gson = new Gson();
        String json = gson.toJson(compe);
        response.setContentType("application/json");
        response.getWriter().write(json);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nombre = request.getParameter("nombre");
        String lugar = request.getParameter("lugar");
        String descrip = request.getParameter("descripcion");
        String fecha = request.getParameter("fecha");

        GestorBD gestor = new GestorBD();
        boolean respuesta = false;
        String errorBD = "";

//        BufferedReader reader = new BufferedReader(new InputStreamReader(request.getInputStream()));
//        StringBuilder sb = new StringBuilder();
//
//        String line;
//        while ((line = reader.readLine()) != null) {
//            sb.append(line);
//        }
//        String json = sb.toString();
//
//        // Parsear el JSON a un objeto Java
//        Gson gson = new Gson();
        //Competencia comp = new Competencia(nombre,lugar,descrip,"",fecha);
        // Procesar los datos del objeto Java
        //System.out.println("Nombre: " + objetoJava.getNombre());
        try {
            Competencia compe = new Competencia(0, nombre, lugar, descrip, "", fecha);

            respuesta = gestor.cargarCompetencia(compe);

        } catch (SQLException | ClassNotFoundException ex) {
            errorBD = ex.toString();
            Logger
                    .getLogger(Competencia.class
                            .getName()).log(Level.SEVERE, null, ex);
        }
// request.setAttribute("listaVencidos", lista); para enviar cosas desde el servlet
//

        if (respuesta) {
            request.setAttribute("alta", "OK");
        } else {
            request.setAttribute("alta", errorBD);

        }
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/altaCompetencia.jsp");
        rd.forward(request, response);
    }

}
