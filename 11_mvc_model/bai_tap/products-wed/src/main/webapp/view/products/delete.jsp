<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Deleting customer</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <style>
        .margin-son{
            margin-left: 40%;
        }
    </style>
</head>
<body>
<div class="container margin-son">
    <h1>Delete product</h1>
    <p>
        <a href="/product">Back to product list</a>
    </p>
    <form method="post">
        <h3>Are you sure?</h3>
        <fieldset>
            <legend>products information</legend>
            <table>
                <tr>
                    <td>Id: </td>
                    <td>${products.id}</td>
                </tr>
                <tr>
                    <td>Name: </td>
                    <td>${products.name}</td>
                </tr>
                <tr>
                    <td>Price: </td>
                    <td>${products.price}</td>
                </tr>
                <tr>
                    <td>Produce: </td>
                    <td>${products.produce}</td>
                </tr>
                <tr>
                    <td>image: </td>
                    <td><img src="${products.image}" style="width: 50px; height: 65px;"></td>
                </tr>
                <tr>
                    <td><input type="submit" value="DeleteProduct"></td>
                    <td><a href="/product">Back to product list</a></td>
                </tr>
            </table>
        </fieldset>
    </form>
    <c:if test='${message != null}'>
        <h3 class="message">${message}</h3>
    </c:if>
</div>


<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>
</html>