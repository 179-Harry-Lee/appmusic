package com.myapp.test;

import java.io.IOException;
import java.sql.Connection;

import com.myapp.model.CustomerModel;
import com.myapp.model.DBCrud;
import com.myapp.model.MySQLConnection;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class Register extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("/WEB-INF/viewsx/register.jsp");
            requestDispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //1. lay du lieu tu form cua Browser request
        String email = req.getParameter("email");
        String password1 = req.getParameter("password1");
        String password2 = req.getParameter("password2");
        String address = req.getParameter("address");
        String phoneStr = req.getParameter("phone");
        int phone = 0;
        String password = null;
        try{
            phone = Integer.parseInt(phoneStr);
            if(password1 == password2){
                password = password1;
            }
        }catch(Exception exception)
        {
            exception.printStackTrace();
        }
        

        //2. chuyen du lieu do thanh doi tuong Product
        CustomerModel customer = new CustomerModel(email, password, phone, address,0);

        //3. Ket noi csdl
        Connection conn = MySQLConnection.getMySQLConnection();
        //4. them doi tuong Product vao CSDL
          boolean success =DBCrud.addCustomer(conn, customer);

            if (success) {
            // Nếu thành công, trả về OK status
            resp.setStatus(HttpServletResponse.SC_OK);

              //5. close ket noi
              MySQLConnection.closeConnection(conn);
        //6. di chuyen sang ProductListView.jsp
        resp.sendRedirect(req.getContextPath() + "/listproduct"); //imgsubit
        } else {
            // Nếu có lỗi, trả về INTERNAL_SERVER_ERROR status
        resp.sendRedirect(req.getContextPath() + "/images/thatbai.jsp"); //imgsubit
        } 
        //5. close ket noi
        //MySQLConnection.closeConnection(conn);

        //6. di chuyen sang ProductListView.jsp
        resp.sendRedirect(req.getContextPath() + "/login");

    }
    
}
