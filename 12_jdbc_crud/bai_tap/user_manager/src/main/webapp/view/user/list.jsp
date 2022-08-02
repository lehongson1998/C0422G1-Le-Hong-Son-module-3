<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>User Management Application</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<center>
    <h1>User Management</h1>
        <button type="button" class="btn btn-secondary mb-3" data-bs-toggle="modal">
            <a href="/user?action=create" class="text-light">Add New User</a>
        </button>
</center>
<div align="center" class="container">
    <c:if test="${listUser != null}">
        <table class="table table-success table-striped">
        <tr>
            <th colspan="5">
                <form method="post" action="/user?action=search">
                    <div class="input-group mb-3 container">
                            <input type="text" class="form-control" name="country" placeholder="search">
                            <input type="submit" value="search" class="btn btn-outline-success bg-info">
                    </div>
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
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal">
                        <a href="/user?action=edit&id=${user.id}" class="text-light">Edit</a>
                    </button>
                    <!-- Button trigger modal -->
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal-${user.id}">
                        delete
                    </button>

                    <!-- Modal -->
                    <div class="modal fade" id="exampleModal-${user.id}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Warning</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    you want delete!!!!!!
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                                    <button type="submit" class="btn btn-primary"><a href="/user?action=delete&id=${user.id}" class="text-light">Delete</a></button>
                                </div>
                            </div>
                        </div>
                    </div>
                </td>
            </tr>
        </c:forEach>
    </table>
    </c:if>
</div>
<div align="center">
    <c:if test="${findCountry != null}">
        <div class="container">
            <table border="1" class="table">
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
        </div>
    </c:if>
</div>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>
</html>