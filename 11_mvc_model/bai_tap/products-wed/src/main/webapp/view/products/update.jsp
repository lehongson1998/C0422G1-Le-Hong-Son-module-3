<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>edit product by Id</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

</head>
<body>
<h1>Edit product</h1>
<p>
    <c:if test='${requestScope["message"] != null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<form method="post">
    <fieldset>
        <table>
            <legend>Edit</legend>
            <tr>
                <td>Name:</td>
                <td><input type="text" name="name" value="name"></td>
            </tr>
            <tr>
                <td>Price:</td>
                <td><input type="text" name="price" value="price"></td>
            </tr>
            <tr>
                <td>Produce:</td>
                <td><input type="text" name="produce" value="product"></td>
            </tr>
            <tr>
                <td>Image:</td>
                <td><input type="text" name="image" value="image"></td>
            </tr>
            <tr>
                <td><input type="submit" value="editProduct"></td>
                <td><a href="/product">Back to product list</a></td>
            </tr>
        </table>
    </fieldset>
</form>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>
</html>
