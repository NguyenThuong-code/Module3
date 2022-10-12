<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 11/10/2022
  Time: 9:35 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<html>
<head>
    <title>View Classroom</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body>
<jsp:include page="navbar.jsp"></jsp:include>
<br>
<div class="container">
    <h2 class="text-center text-primary">CLASS LIST</h2>
    <br>
    <table class="table table-bordered">
        <thead>
        <tr>
            <th>#</th>
            <th>Name</th>
            <th>Date of Birth</th>
            <th>Phone Number</th>
            <th>Email</th>
            <th>Classroom</th>
            <th>Action</th>

        </tr>
        </thead>
        <tbody>
        <c:forEach var="classroom" items="${ClassroomLists}">
            <tr>
                <td>${classroom.id}</td>
                <td>${classroom.name}</td>
                <td>${classroom.dateOfBrith}</td>
                <td>${classroom.phoneNum}</td>
                <th>${classroom.email}</th>
                <th>${classroom.classroom}</th>

                <td><a class="btn btn-warning" href="edit?id=${product.id}">Edit</a>
                    <a class="btn btn-danger" href="delete?id=${product.id}"
                       onclick="return confirm('Do you want to delete this product?');">Delete</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
