<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <style>
        a{
            text-decoration: none;
        }
    </style>
</head>
<body>
<div class="container text-center">
<h1>Products</h1>
<p>
    <span class="border bg-secondary bg-gradient" style="padding: 5px 10px; border-radius: 5px;"><a href="/product?action=create" class="text-light">Create new product</a></span>
</p>
    <c:if test="${products != null}">
        <table border="1" class="table pd-3">
            <tr>
                <th colspan="3" class="text-center">
                </th>
                <th colspan="4">
                    <form method="post" action="/product?action=search">
                        <div class="input-group mb-3 col-md-6">
                            <input type="text" name="search" placeholder="search" class="form-control">
                            <input type="submit" value="search" class="btn btn-outline-success bg-info">
                        </div>
                </th>
            </tr>
            <tr class="bg-primary bg-gradient">
                <td>Id</td>
                <td>Name</td>
                <td>Price</td>
                <td>Produce</td>
                <td>Image</td>
                <td>Edit</td>
                <td>Delete</td>
            </tr>
            <c:forEach var="product" items='${products}'>
                <tr class="table-secondary align-middle">
                    <td><a href="/product?action=view&id=${product.id}">${product.id}</a></td>
                    <td>${product.name}</td>
                    <td>${product.price}</td>
                    <td>${product.produce}</td>
                    <td><img src="${product.image}" style="width: 40px; height: 50px;"></td>
                    <td><span class="border border-5 bg-success bg-gradient" style="padding: 5px 10px; border-radius: 5px;"><a href="/product?action=edit&id=${product.id}" class="text-light">edit</a></span></td>
                    <td><span class="border border-5 bg-danger bg-gradient" style="padding: 5px 10px; border-radius: 5px;"><a href="/product?action=delete&id=${product.id}" class="text-light">delete</a></span></td>
                </tr>
            </c:forEach>
        </table>
    </c:if>
</div>

<c:if test="${productsListSearch != null}">
    <div class="container text-center">
        <table border="1" class="table pd-3">
            <tr class="bg-primary bg-gradient">
                <th>Id</th>
                <th>Name</th>
                <th>Price</th>
                <th>Produce</th>
                <th>Image</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
            <c:forEach var="product" items='${productsListSearch}'>
                <tr class="table-secondary align-middle">
                    <td><a href="/product?action=view&id=${product.id}">${product.id}</a></td>
                    <td>${product.name}</td>
                    <td>${product.price}</td>
                    <td>${product.produce}</td>
                    <td><img src="${product.image}" style="width: 50px; height: 65px;"></td>
                    <td><span class="border bg-success bg-gradient" style="padding: 5px 10px; border-radius: 5px;"><a href="/product?action=edit&id=${product.id}" class="text-light">edit</a></span></td>
                    <td><span class="border bg-danger bg-gradient" style="padding: 5px 10px; border-radius: 5px;"><a href="/product?action=delete&id=${product.id}" class="text-light">delete</a></span></td>
                </tr>
            </c:forEach>
        </table>
        <p>
            <span class="border bg-success bg-gradient" style="padding: 5px 10px; border-radius: 5px;"><a href="/product" class="text-light">Back to products list</a></span>
        </p>
    </div>
</c:if>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>
</html>