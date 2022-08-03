<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>User Management Application</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
</head>
<body>
<center>
    <h1>User Management</h1>
    <h2>
        <a href="/user?action=create">Add New User</a>
    </h2>
</center>
<div align="center">
    <c:if test="${listUser != null}">
        <table border="1" cellpadding="5">
        <caption><h2>List of Users</h2></caption>
        <tr>
            <th colspan="2"></th>
            <th colspan="3">
                <form method="post" action="/user?action=search">
                    <input type="text" name="country" placeholder="search">
                    <input type="submit" value="search">
                </form>
            </th>
        </tr>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Country</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="user" items="${listUser}">
            <tr>
                <td><a href="/user?action=view&id=${user.id}">${user.id}</a></td>
                <td>${user.name}</td>
                <td>${user.email}</td>
                <td>${user.country}</td>
                <td>
                    <a href="/user?action=edit&id=${user.id}">Edit</a>
                    <a href="/user?action=delete&id=${user.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
    </c:if>
</div>
<div align="center">
    <c:if test="${findCountry != null}">
        <table border="1">
            <tr>
                <th>Id</th>
                <th>name</th>
                <th>Email</th>
                <th>Country</th>
                <th>Action</th>
            </tr>
            <c:forEach var="users" items="${findCountry}">
                <tr>
                    <td><a href="/user?action=view&id=${users.id}">${users.id}</a></td>
                    <td>${users.name}</td>
                    <td>${users.email}</td>
                    <td>${users.country}</td>
                    <td>
                        <a href="/user?action=edit&id=${users.id}">Edit</a>
                        <a href="/user?action=delete&id=${users.id}">Delete</a>
                    </td>
                </tr>
            </c:forEach>
            <tr>
                <td>
                    <a href="/user">Back</a>
                </td>
            </tr>
        </table>
    </c:if>
</div>
</body>
</html>