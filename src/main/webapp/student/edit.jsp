<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 12/10/2022
  Time: 10:23 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Student</title>
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
<p>
    <a href="/students">Quay lại</a>
</p>
<div align="center">
    <form method="post">
        <table border="1" cellpadding="5">

            <c:if test="${students!= null}">
                <input type="hidden" name="id" value="<c:out value='${student.id}' />"/>
            </c:if>
            <tr>
                <th>Name</th>
                <td>
                    <input type="text" name="name" size="45"
                           value="<c:out value='${student.name}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>DateOfBirth</th>
                <td>
                    <input type="text" name="name" size="45"
                           value="<c:out value='${student.dateOfBirth}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Address</th>
                <td>
                    <input type="text" name="address" size="45"
                           value="<c:out value='${student.address}' />"
                    />
                </td>
            </tr><tr>
            <th>Phone Number</th>
            <td>
                <input type="text" name="phone" size="45"
                       value="<c:out value='${student.phoneNumber}' />"
                />
            </td>
        </tr><tr>
            <th>Email</th>
            <td>
                <input type="text" name="email" size="45"
                       value="<c:out value='${student.email}' />"
                />
            </td>
        </tr>
            <tr>
                <th>Classroom</th>
                <td>
                    <input type="text" name="account" size="30"
                           value="<c:out value='${student.classroom}' />"
                    />
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <a href="<%=request.getContextPath()%>/students"><input type="submit" value="Save"/></a>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>