package com.myapp.an;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.myapp.model.Product;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/giohang")
@MultipartConfig(maxFileSize = 1024 * 1024 * 10) // Giới hạn kích thước ảnh tải lên là 10MB
public class GioHangController  extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

         String name = req.getParameter("tenx");
            String img = req.getParameter("imgx");
            //double giaa = Double.parseDouble(req.getParameter("giax"));
                        String giaxx = req.getParameter("giax");


            List<Product> prolist = new ArrayList<>();
            Product pro =  new Product(300, img, "GT0", "id", "motaa", 1, name);
            prolist.add(pro);
            req.setAttribute("listx", prolist);

        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/WEB-INF/viewsx/namtest/giohang.jsp");
        requestDispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
         

            String name = req.getParameter("tenx");
            String img = req.getParameter("imgx");
            double giaa = Double.parseDouble(req.getParameter("giax"));

            List<Product> prolist = new ArrayList<>();
            Product pro =  new Product(giaa, img, "GT0", "id", "motaa", 1, name);
            prolist.add(pro);
            req.setAttribute("x", prolist);
                // Chuyển hướng về trang giỏ hàng
                resp.sendRedirect(req.getContextPath() + "/giohang");

    }
    
}
