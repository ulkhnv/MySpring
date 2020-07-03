<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <title>Edit</title>
</head>
<body>
<div align="center">
<h1><c:out value="Update user with id : ${id}"/> </h1>
<form action="update" method="post">
    <table>
        <input type="hidden" name="id" value=${id}>
        <tr>
            <td>Name :</td>
            <td><input type="text" name="name" value=${name}></td>
        </tr>
        <tr>
            <td>Surname :</td>
            <td><input type="text" name="surname" value=${surname}></td>
        </tr>

    </table>
    <input type="submit" value="Save">
</form>
</div>

</body>
</html>
