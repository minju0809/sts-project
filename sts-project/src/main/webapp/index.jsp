<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection, java.sql.DriverManager, java.sql.ResultSet, java.sql.Statement" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student List</title>
</head>
<body>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Age</th>
        </tr>
        <% 
            // JDBC 연결 정보
            String jdbcUrl = "jdbc:mysql://localhost:3306/sts-projectDB";
            String username = "kang";
            String password = "1234";

            try {
                // JDBC 드라이버 로드
                Class.forName("com.mysql.jdbc.Driver");
                Connection connection = DriverManager.getConnection(jdbcUrl, username, password);
                Statement statement = connection.createStatement();

                // SQL 쿼리 실행
                String sqlQuery = "SELECT * FROM students";
                ResultSet resultSet = statement.executeQuery(sqlQuery);

                // 결과를 테이블에 출력
                while (resultSet.next()) {
                    int id = resultSet.getInt("id");
                    String firstName = resultSet.getString("first_name");
                    String lastName = resultSet.getString("last_name");
                    int age = resultSet.getInt("age");

                    out.println("<tr>");
                    out.println("<td>" + id + "</td>");
                    out.println("<td>" + firstName + " " + lastName + "</td>");
                    out.println("<td>" + age + "</td>");
                    out.println("</tr>");
                }

                resultSet.close();
                statement.close();
                connection.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
    </table>
</body>
</html>
