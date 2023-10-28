<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student List</title>
</head>
<body>
    <h1>Student List</h1>
    <table>
        <tr>
            <th>ID</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Age</th>
        </tr>
        <c:forEach var="student" items="${students}">
            <tr>
                <td><c:out value="${student.id}" /></td>
                <td><c:out value="${student.first_name}" /></td>
                <td><c:out value="${student.last_name}" /></td>
                <td><c:out value="${student.age}" /></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
