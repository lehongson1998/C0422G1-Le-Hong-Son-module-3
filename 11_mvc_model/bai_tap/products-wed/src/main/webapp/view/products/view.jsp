<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View products</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

</head>
<body class="container text-center">
<h1>product details</h1>
<p>
    <a href="/product">Back to product list</a>
</p>
<table class="table align-middle col-lg-6">
    <tr class="bg-success">
        <td>id: </td>
        <td>${requestScope["products"].getId()}</td>
    </tr>
    <tr class="bg-primary">
        <td>Name: </td>
        <td>${requestScope["products"].getName()}</td>
    </tr>
    <tr class="bg-danger">
        <td>Price: </td>
        <td>${requestScope["products"].getPrice()}</td>
    </tr>
    <tr class="bg-info">
        <td>Produce: </td>
        <td>${requestScope["products"].getProduce()}</td>
    </tr>
    <tr class="bg-secondary">
        <td>Image: </td>
        <td><img src="${requestScope["products"].getImage()}" style="width: 60px; height: 70px;"></td>
    </tr>
</table>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>
</html>