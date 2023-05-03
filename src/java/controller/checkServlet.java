/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Time;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Dikshita Aggarwal
 */
@WebServlet(name = "checkServlet", urlPatterns = {"/checkServlet"})
public class checkServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
           String name=request.getParameter("drivername");
            String car=request.getParameter("cartype");
            String time=request.getParameter("entry");
            String valetreq=request.getParameter("valet");
            try{
               Class.forName("com.mysql.jdbc.Driver");
               Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/users","root","password");
               String sql="Insert into carpark (driver_name,car_type,entry,valet) VALUES (?,?,?,?)";
               PreparedStatement pst=con.prepareStatement(sql);
               pst.setString(1,name);
               pst.setString(2,car);
               pst.setString(3,time);
               pst.setString(4,valetreq);
               
               int i=pst.executeUpdate();
               if(i>0){
                   String sql1="Select id,driver_name,entry from carpark where driver_name=?";
                   PreparedStatement pst1=con.prepareStatement(sql1);
                   pst1.setString(1,name);
                   ResultSet rs1=pst1.executeQuery();
                   if(rs1.next()){
                       int park_id=rs1.getInt("id");                       
                       request.setAttribute("name", name);
                       request.setAttribute("id", park_id);
                       request.getRequestDispatcher("HomePage.jsp").forward(request, response);
                       
            }
            }
            }catch(Exception e){
                out.println(e);
            }
        }
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

}
