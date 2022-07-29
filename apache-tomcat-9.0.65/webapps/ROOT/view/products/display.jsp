<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View products</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

</head>
<body>
<h1>Customer details</h1>
<p>
    <a href="/product">Back to customer list</a>
</p>
<table>
    <tr>
        <td>id: </td>
        <td>${requestScope["products"].getId()}</td>
    </tr>
    <tr>
        <td>Name: </td>
        <td>${requestScope["products"].getName()}</td>
    </tr>
    <tr>
        <td>Price: </td>
        <td>${requestScope["products"].getPrice()}</td>
    </tr>
    <tr>
        <td>Produce: </td>
        <td>${requestScope["products"].getProduce()}</td>
    </tr>
    <tr>
        <td>Image: </td>
        <td>${requestScope["products"].getImage()}</td>
    </tr>
</table>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>
</html>