<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Deleting customer</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

</head>
<body>
<h1>Delete customer</h1>
<p>
    <a href="/product">Back to customer list</a>
</p>
<form method="post">
    <h3>Are you sure?</h3>
    <fieldset>
        <legend>products information</legend>
        <table>
            <tr>
                <td>Id: </td>
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
                <td>image: </td>
                <td><img src="${requestScope["products"].getImage()}" style="width: 50px; height: 30px;"></td>
            </tr>
            <tr>
                <td><input type="submit" value="DeleteProduct"></td>
                <td><a href="/product">Back to product list</a></td>
            </tr>
        </table>
    </fieldset>
</form>
<c:if test='${requestScope["message"] != null}'>
    <h3 class="message">${requestScope["message"]}</h3>
</c:if>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>
</html>