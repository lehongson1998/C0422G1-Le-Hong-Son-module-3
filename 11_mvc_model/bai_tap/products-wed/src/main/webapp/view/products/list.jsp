<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>

<body>
<div class="container">
    <form method="post" action="/product?action=search">
    <div class="input-group mb-3 col-md-6">
        <input type="text" name="search" placeholder="search" class="form-control">
        <input type="submit" value="search" class="btn btn-outline-success bg-info">
    </div>
</form>
</div>
<div class="container text-center">
<h1>Products</h1>
<p>
    <a href="/product?action=create">Create new product</a>
</p>
    <table border="1" class="table pd-3">
    <tr class="bg-primary">
        <td>Id</td>
        <td>Name</td>
        <td>Price</td>
        <td>Produce</td>
        <td>Image</td>
        <td>Edit</td>
        <td>Delete</td>
    </tr>
    <c:forEach var="product" items='${requestScope["products"]}'>
        <tr class="table-secondary align-middle">
            <td><a href="/product?action=view&id=${product.getId()}">${product.getId()}</a></td>
            <td>${product.getName()}</td>
            <td>${product.getPrice()}</td>
            <td>${product.getProduce()}</td>
            <td><img src="${product.getImage()}" style="width: 40px; height: 50px;"></td>
            <td><span class="border border-5 bg-success" style="padding: 5px 10px"><a href="/product?action=edit&id=${product.getId()}" class="text-light">edit</a></span></td>
            <td><span class="border border-5 bg-success" style="padding: 5px 10px"><a href="/product?action=delete&id=${product.getId()}" class="text-light">delete</a></span></td>
        </tr>
    </c:forEach>
</table>
</div>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>
</html>