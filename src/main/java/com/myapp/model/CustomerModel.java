package com.myapp.model;

public class CustomerModel {

    private String email;
    private String password;
    private int phone;
    private String address;
    private int quyen;

    public CustomerModel() {
    }
    public CustomerModel(String email, String password, int phone, String address) {
        this.email = email;
        this.password = password;
        this.phone = phone;
        this.address = address;
    }

    public CustomerModel( String email, String password, int phone, String address,int quyen) {
        this.address = address;
        this.email = email;
        this.password = password;
        this.phone = phone;
        this.quyen = quyen;
    }
    
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public int getPhone() {
        return phone;
    }
    public void setPhone(int phone) {
        this.phone = phone;
    }
    public String getAddress() {
        return address;
    }
    public void setAddress(String address) {
        this.address = address;
    }

    public int getQuyen() {
        return quyen;
    }

    public void setQuyen(int quyen) {
        this.quyen = quyen;
    }

}
