
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div>
    <a href="/user">back to home</a>
    <h3>view user</h3>
    <table border="1">
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Email</th>
            <th>Country</th>
            <th>Action</th>
        </tr>
        <tr>
            <td>${user.id}</td>
            <td>${user.name}</td>
            <td>${user.email}</td>
            <td>${user.country}</td>
            <td>
                <a href="/user?action=edit&id=${user.id}">Edit</a>
                <a href="/user?action=delete&id=${user.id}">Delete</a>
            </td>
        </tr>
    </table>
</div>
</body>
</html>
