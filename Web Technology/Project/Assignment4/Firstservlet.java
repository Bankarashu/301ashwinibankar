package net.programminghub;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class Firstservlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
           
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet First</title>");            
            out.println("</head>");
            out.println("<body><center>");
            out.println("<h1>Product Details</h1>");
            
            
            String productId=request.getParameter("productId");
            String productName=request.getParameter("pname");
            String productCategory=request.getParameter("category");
            String productPrice=request.getParameter("price");
            String productQuantity=request.getParameter("quantity");
            String productDescription=request.getParameter("description");
            out.println("<table width=\"50%\">"
                    + "<tr><th>Product Id</th><td>"+productId+"</td></tr>"
                    + "<tr><th>Product Name</th><td>"+productName+"</td></tr>"
                    + "<tr><th>Product Category</th><td>"+productCategory+"</td></tr>"
                    + "<tr><th>Price/Item</th><td>"+productPrice+"</td></tr>"
                    + "<tr><th>Quantity</th><td>"+productQuantity+"</td></tr>"
                    + "<tr><th>Description</th><td>"+productDescription+"</td></tr>"
                    + "</table>");
            
            HttpSession session=request.getSession();
            session.setAttribute("productId", productId);
            
            RequestDispatcher rd= request.getRequestDispatcher("Second");
            rd.include(request,response);
            out.println("</center></body>");
            out.println("</html>");
        }
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}