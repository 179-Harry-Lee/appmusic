package com.myapp.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MySQLConnection {

    public static Connection getMySQLConnection(){

        //code
        String hostName = "localhost";
        String dbName = "musicshop";
        String userName = "root";
        String password = "123456789";

        return getMyConnection(hostName, dbName, userName, password);
    }

    private static Connection getMyConnection(String hostName, String dbName, String userName, String password){

        //code 
        String connectionURL = "jdbc:mysql://" + hostName + ":3306/" + dbName;
        Connection conn = null;

        //load driver de ket noi csdl
        try {
            //??????
            Class.forName("com.mysql.cj.jdbc.Driver");
           conn =  DriverManager.getConnection(connectionURL, userName, password);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }


        return conn;
    }

    public static void closeConnection(Connection conn){
        try {
            if(conn != null)
                conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}