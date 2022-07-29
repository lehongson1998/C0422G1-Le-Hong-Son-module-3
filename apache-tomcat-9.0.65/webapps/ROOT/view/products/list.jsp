<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer List</title>
</head>
<body>
<h1>Customers</h1>
<p>
    <a href="/product?action=create">Create new product</a>
</p>
<table border="1">
    <tr>
        <td>Name</td>
        <td>Email</td>
        <td>Address</td>
        <td>Edit</td>
        <td>Delete</td>
    </tr>
    <c:forEach items='${"product"}' var="product">
        <tr>
            <td><a href="/customers?action=view&id=${customer.getId()}">${product.getId()}</a></td>
            <td>${product.getName()}</td>
            <td>${product.getPrice()}</td>
            <td>${product.getProduce()}</td>
            <td>${product.getImage()}</td>
            <td><a href="/products?action=edit&id=${product.getId()}">edit</a></td>
            <td><a href="/product?action=delete&id=${product.getId()}">delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>