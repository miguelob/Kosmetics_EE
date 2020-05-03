package servlets;

import DAO.ProductDAO;
import domain.Product;

import javax.management.DynamicMBean;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/LoadAllProduct")
public class LoadAllProduct extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request,response);
    }

    private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));

        Product product = ProductDAO.loadAllInfo(id);
        HttpSession session = request.getSession();
        session.setAttribute("allProduct",product);

        if(request.getParameter("opc") != null){
            request.getRequestDispatcher("/crear_review.jsp").forward(request,response);
        }else{
            request.getRequestDispatcher("/info_producto.jsp").forward(request,response);
        }
    }
}
