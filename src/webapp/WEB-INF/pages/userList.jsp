<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
    <title>Users</title>
</head>
<body>
<h3 align="center"><a href="add">New User</a> </h3>
<table border="1px" align="center">
    <tr>
        <th width="80">#ID</th>
        <th width="120">Name</th>
        <th width="120">Surname</th>
        <th width="60"></th>
        <th width="60"></th>

    </tr>
    <c:forEach items="${users}" var="user">
        <tr>
            <td align="center">${user.id}</td>
            <td align="center">${user.name}</td>
            <td align="center">${user.surname}</td>
            <td>
                <form action="update" method="get">
                    <input type="hidden" name="id" value="${user.id}">
                    <input type="submit" value="Edit">
                </form>
            </td>
            <td>
                <form action="delete" method="post">
                    <input type="hidden" name="id" value="${user.id}">
                    <input type="submit" value="Delete">
                </form>
            </td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
