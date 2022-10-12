<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 12/10/2022
  Time: 8:40 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Classroom management</title>
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
<div class="container col-md-10">
    <div class="card">
        <div class="card-body">
            <form action="/insert" method="post">
                <fieldset class="form-group">
                    <label>Name</label> <input type="text" class="form-control"
                                               name="name" required="required">
                </fieldset>
                <fieldset class="form-group ml-2">
                    <label>Date Of Birth</label> <input type="text" class="form-control"
                                                name="dateOfBirth" required="required">
                </fieldset>
                <fieldset class="form-group ml-2">
                    <label>Phone Number</label> <input type="text" class="form-control"
                                                   name="phoneNum" required="required">
                </fieldset>
                <fieldset class="form-group ml-2">
                    <label>Email</label> <input type="text" class="form-control"
                                                 name="email" required="required">
                </fieldset>
                <fieldset class="form-group ml-2">
                    <label>Classroom</label> <input type="text" class="form-control"
                                                name="classroom" required="required">
                </fieldset>
                <div class="col text-center mt-3">
                    <button type="submit" class="btn btn-success">ADD</button>
                </div>
            </form>
        </div>
    </div>

</div>
</body>
</html>