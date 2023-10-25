package com.myapp.an;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.sql.Connection;

import com.myapp.model.DBCrud;
import com.myapp.model.MySQLConnection;
import com.myapp.model.Product;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

@WebServlet("/uploadproduct")
@MultipartConfig(maxFileSize = 1024 * 1024 * 10) // Giới hạn kích thước ảnh tải lên là 10MB
public class UploadProductController extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //1. lay code tu url browser
        String code = req.getParameter("id");
        //2. ket noi csdl
        Connection conn = MySQLConnection.getMySQLConnection();

        //3. lay product tu bang theo code
        Product product = DBCrud.findProductByCode(conn, code);
        //4. close
        MySQLConnection.closeConnection(conn);

        //5. dat doi tuong product vao trong request (req)

        req.setAttribute("p", product);
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/WEB-INF/viewsx/namtest/uploadimg.jsp");

        requestDispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
         try {
              //1. lay du lieu tu form cua Browser request
            String id = req.getParameter("id");
            String name = req.getParameter("name");
            Part part = req.getPart("image");
            String motaa = req.getParameter("mota");
            String giaa = req.getParameter("gia");
             String idlsp = req.getParameter("ids");

            double giasp = Double.parseDouble(giaa);
            // tao anh va ten file anh trong thu muc /images
            String realPath = req.getServletContext().getRealPath("/images");
            String filename = Paths.get(part.getSubmittedFileName()).getFileName().toString();
    
            if(!Files.exists(Paths.get(realPath))){
                Files.createDirectory(Paths.get(realPath));
            }
            part.write(realPath+"/"+filename);

            //Promimg2 pro = new Promimg2(id, name, filename);
            Product pro = new Product(30, filename, idlsp,"02", motaa, 30, name);

             //3. Ket noi csdl
        Connection conn = MySQLConnection.getMySQLConnection();
        //4. them doi tuong Product vao CSDL
        boolean success = DBCrud.updateProduct(conn, pro);

        //
          if (success) {
            // Nếu thành công, trả về OK status
            resp.setStatus(HttpServletResponse.SC_OK);

              //5. close ket noi
              MySQLConnection.closeConnection(conn);
        //6. di chuyen sang ProductListView.jsp
        resp.sendRedirect(req.getContextPath() + "/productlist"); //imgsubit
        } else {
            // Nếu có lỗi, trả về INTERNAL_SERVER_ERROR status
        resp.sendRedirect(req.getContextPath() + "/images/thatbai.jsp"); //imgsubit
        }
       } catch (Exception e) {
            e.printStackTrace();
       }
    }
    
}
