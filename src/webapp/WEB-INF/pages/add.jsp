<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add User</title>
</head>
<body>
<div align="center">
    <h2>New User</h2>
    <form:form action="add" method="post" modelAttribute="user">
        <table cellpadding="5">
            <tr>
                <td align="center">Name :</td>
                <td><form:input path="name" /></td>
            </tr>
            <tr>
                <td>Surname :</td>
                <td><form:input path="surname"/></td>
            </tr>
        </table>
        <input type="submit" value="Add">
    </form:form>

</div>
</body>
</html>
