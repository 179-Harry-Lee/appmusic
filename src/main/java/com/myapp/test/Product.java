package com.myapp.test;

import java.io.IOException;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import com.myapp.model.DBCrud;
import com.myapp.model.MySQLConnection;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/product")
public class Product extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
                //ket noi CSDL MySQL
        Connection conn = MySQLConnection.getMySQLConnection();
        //lay tat ca Product 
        List<com.myapp.model.Product> listP = DBCrud.getAllProduct(conn);


        //xu ly duong dan 
         String imagePath ="";
        List<String> listr = new ArrayList<>();
        //dong ket noi
        MySQLConnection.closeConnection(conn);
         for (com.myapp.model.Product promimg : listP){
            // imagePath = req.getServletContext().getRealPath("/img/") + promimg.getName();
                         imagePath ="/appmusic/images/"+ promimg.getHinhanh();

            promimg.setHinhanh(imagePath);
        
         }

        //dong ket noi
        MySQLConnection.closeConnection(conn);

        //dat danh sach product vao request
        req.setAttribute("list", listP);
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/WEB-INF/viewsx/product.jsp");
        requestDispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
    
}
