package com.myapp.model;

public class Product {
    private double giasanpham;
    private String hinhanh;
    private String idloaisanpham;
    private String idsanpham;
    private String motasanpham;
    private int soluongsanpham;
    private String tensanpham;
    public Product(double giasanpham, String hinhanh, String idloaisanpham, String idsanpham, String motasanpham,
            int soluongsanpham, String tensanpham) {
        this.giasanpham = giasanpham;
        this.hinhanh = hinhanh;
        this.idloaisanpham = idloaisanpham;
        this.idsanpham = idsanpham;
        this.motasanpham = motasanpham;
        this.soluongsanpham = soluongsanpham;
        this.tensanpham = tensanpham;
    }
    
    public Product() {
    }


    public double getGiasanpham() {
        return giasanpham;
    }
    public void setGiasanpham(double giasanpham) {
        this.giasanpham = giasanpham;
    }
    public String getHinhanh() {
        return hinhanh;
    }
    public void setHinhanh(String hinhanh) {
        this.hinhanh = hinhanh;
    }
    public String getIdloaisanpham() {
        return idloaisanpham;
    }
    public void setIdloaisanpham(String idloaisanpham) {
        this.idloaisanpham = idloaisanpham;
    }
    public String getIdsanpham() {
        return idsanpham;
    }
    public void setIdsanpham(String idsanpham) {
        this.idsanpham = idsanpham;
    }
    public String getMotasanpham() {
        return motasanpham;
    }
    public void setMotasanpham(String motasanpham) {
        this.motasanpham = motasanpham;
    }
    public int getSoluongsanpham() {
        return soluongsanpham;
    }
    public void setSoluongsanpham(int soluongsanpham) {
        this.soluongsanpham = soluongsanpham;
    }
    public String getTensanpham() {
        return tensanpham;
    }
    public void setTensanpham(String tensanpham) {
        this.tensanpham = tensanpham;
    }
    
}
