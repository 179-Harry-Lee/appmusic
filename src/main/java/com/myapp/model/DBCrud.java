package com.myapp.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DBCrud {

    public static List<Product> getAllProduct(Connection conn){
        List<Product> productList = null;
        String sql = "SELECT * FROM product";
        PreparedStatement ps = null;
        ResultSet rs = null;
        productList = new ArrayList<>();

        //code

        try {
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            //chuyen ResultSet sang List<Product>
            while(rs.next()){
                String tensanpham =rs.getString("tensanpham");
                double giasanpham = rs.getDouble("giasanpham");
                String hinhanh = rs.getString("hinhanh");
                String idloaisanpham = rs.getString("idloaisanpham");
                String idsanpham = rs.getString("idsanpham");
                String motasanpham = rs.getString("motasanpham");
                int soluongsanpham =rs.getInt("soluongsanpham");

                Product product = new Product(giasanpham, hinhanh, idloaisanpham, idsanpham, motasanpham, soluongsanpham, tensanpham);
                productList.add(product);

            }

        } catch (SQLException e) {
            e.printStackTrace();
        }


        return productList;


    }
    

    public static boolean addProduct(Connection conn, Product product){

        //cau lenh sql - insert vao csdl
        String sql = "insert into product (idsanpham, idloaisanpham, tensanpham, giasanpham, soluongsanpham, motasanpham, hinhanh) values(?, ?, ?, ?, ?, ?, ?)";
        PreparedStatement ps = null;
        boolean xx = false ;
        try {
            ps = conn.prepareStatement(sql);
            ps.setDouble(4, product.getGiasanpham());
            ps.setString(7, product.getHinhanh());
            ps.setString(2, product.getIdloaisanpham());
            ps.setString(1, product.getIdsanpham());
            ps.setString(6, product.getMotasanpham());
            ps.setInt(5, product.getSoluongsanpham());
            ps.setString(3, product.getTensanpham());            

            ps.executeUpdate();
            xx = true ;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return xx ;

    }

    public static Product findProductByCode(Connection conn, String idsanpham){
        Product product = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        String sql = "select * from product where idsanpham = ?";

        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, idsanpham);
            rs = ps.executeQuery();

            while(rs.next()){
               String tensanpham =rs.getString("tensanpham");
                double giasanpham = rs.getDouble("giasanpham");
                String hinhanh = rs.getString("hinhanh");
                String idloaisanpham = rs.getString("idloaisanpham");
                String motasanpham = rs.getString("motasanpham");
                int soluongsanpham =rs.getInt("soluongsanpham");

                 product = new Product(giasanpham, hinhanh, idloaisanpham, idsanpham, motasanpham, soluongsanpham, tensanpham);
               
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }


        return product;
    }

    public static boolean  updateProduct(Connection conn, Product product){

        String sql = " update musicshop.product set idloaisanpham =? ,tensanpham = ?, giasanpham = ?,  soluongsanpham=?,motasanpham= ?,hinhanh =? where idsanpham = ?;"; // hinhanh =?  ,giasanpham=?,

        PreparedStatement ps = null;
         boolean xx = false ;
        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, product.getIdloaisanpham());
              ps.setString(2, product.getTensanpham());
            ps.setDouble(3, product.getGiasanpham());
            ps.setInt(4, product.getSoluongsanpham());
            ps.setString(5, product.getMotasanpham());

            ps.setString(6, product.getHinhanh());
             ps.setString(7, product.getIdsanpham());
            ps.executeUpdate();
            xx = true ;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        return xx ;
    }


    // customer 
    public static boolean addCustomer(Connection conn, CustomerModel customer){

        //cau lenh sql - insert vao csdl
        String sql = "insert into customer (idtaikhoan, matkhau, sodienthoai, diachi,phanquyen) values(?, ?, ?, ?, ?)";
        PreparedStatement ps = null;
        boolean xx = false ;
        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, customer.getEmail());
            ps.setString(2, customer.getPassword());
            ps.setInt(3, customer.getPhone());
            ps.setString(4, customer.getAddress());     
            ps.setInt(5, customer.getQuyen());
     

            ps.executeUpdate();
            xx = true ;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return xx ;

    }

     public static boolean deleteProductbyCode(Connection conn, String code){

        //cau lenh sql - insert vao csdl
        String sql = "DELETE FROM musicshop.product WHERE idsanpham = ?;";
        PreparedStatement ps = null;
        boolean xx = false ;
        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, code); 
            ps.executeUpdate();
            xx = true ;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return xx ;

    }
}
