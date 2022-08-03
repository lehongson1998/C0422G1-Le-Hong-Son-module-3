<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>User Management Application</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<center>
    <h1>User Management</h1>
    <h2>
        <a href="/user?action=create">Add New User</a>
    </h2>
    <button type="button" onclick="location.href='/user?action=sort_by_name'">Sort by name</button>
    <button type="button" onclick="location.href='/user?action=sort_by_country'">Sort by country</button>
</center>
<div align="center" class="container mt-5">
        <table border="1" cellpadding="5" class="table table-success">
        <caption><h2>List of Users</h2></caption>
        <tr>
            <th colspan="2"><a href="/user">Home</a></th>
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
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                        <a href="/user?action=edit&id=${user.id}" class="text-light" style="text-decoration: none">Edit</a>
                    </button>

                    <button onclick="showInfoDelete('${user.id}','${user.name}')" type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                        Delete
                    </button>
                </td>
            </tr>
        </c:forEach>
        <c:if test="${message != null}">
            <tr>
                <td>${message}</td>
            </tr>
        </c:if>
    </table>
    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <form action="/user?action=delete&id" method="post">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">warning</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <input type="text" name="deleteId" id="deleteId">
                        <span>you want users: </span><span id="deleteName"></span>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Delete</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<script>
    function showInfoDelete(id,name) {
        document.getElementById("deleteId").value= id;
        document.getElementById("deleteName").innerText = name;
    }
</script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>
</html>