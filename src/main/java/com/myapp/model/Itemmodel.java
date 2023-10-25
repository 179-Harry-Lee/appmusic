package com.myapp.model;

public class Itemmodel {
    private  Product product ;
    private double giasp;
    private int thanhtien ;
    public Itemmodel() {
    }
    public Itemmodel(Product product, double giasp, int thanhtien) {
        this.product = product;
        this.giasp = giasp;
        this.thanhtien = thanhtien;
    }
    public Product getProduct() {
        return product;
    }
    public void setProduct(Product product) {
        this.product = product;
    }
    public double getGiasp() {
        return giasp;
    }
    public void setGiasp(double giasp) {
        this.giasp = giasp;
    }
    public int getThanhtien() {
        return thanhtien;
    }
    public void setThanhtien(int thanhtien) {
        this.thanhtien = thanhtien;
    }

    
}
