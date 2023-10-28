package com.spring.biz;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class DatabaseConnection {
    public static Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver"); // MySQL 드라이버를 사용하려면 해당 드라이버 클래스를 사용하세요.
            String url = "jdbc:mysql://localhost:3306/your_database_name";
            String user = "your_username";
            String password = "your_password";
            connection = DriverManager.getConnection(url, user, password);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return connection;
    }
}
