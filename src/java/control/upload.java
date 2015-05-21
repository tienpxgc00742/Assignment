/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.RequestContext;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author Administrator
 */
@MultipartConfig
public class upload extends HttpServlet {

 /**
  * dropzonefile Processes requests for both HTTP <code>GET</code> and
  * <code>POST</code> methods.
  *
  * @param request servlet request
  * @param response servlet response
  * @throws ServletException if a servlet-specific error occurs
  * @throws IOException if an I/O error occurs
  */
 protected void processRequest(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
  String filePath = getServletContext().getInitParameter("file-path");
  if (ServletFileUpload.isMultipartContent(request)) {
   Part filePart = request.getPart("file");
   OutputStream out = null;
   InputStream filecontent = filePart.getInputStream();
   //File uploaded successfully
   try {
    String image_name = UUID.randomUUID().toString();
    out = new FileOutputStream(new File(filePath + File.separator + image_name + ".png"));
    response.setContentType("text/html");
    try (PrintWriter pout = response.getWriter()) {
     pout.append(image_name);
    }
    int read = 0;
    final byte[] bytes = new byte[1024];

    while ((read = filecontent.read(bytes)) != -1) {
     out.write(bytes, 0, read);
    }
   } catch (FileNotFoundException fne) {

   } finally {
    if (out != null) {
     out.close();
    }
    if (filecontent != null) {
     filecontent.close();
    }
   }
  } else {
   System.out.println("FAIL2");
  }

//        request.getRequestDispatcher("/result.jsp").forward(request, response);
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

 private String getFileName(final Part part) {
  for (String content : part.getHeader("content-disposition").split(";")) {
   if (content.trim().startsWith("filename")) {
    return content.substring(
            content.indexOf('=') + 1).trim().replace("\"", "");
   }
  }
  return null;
 }
}
