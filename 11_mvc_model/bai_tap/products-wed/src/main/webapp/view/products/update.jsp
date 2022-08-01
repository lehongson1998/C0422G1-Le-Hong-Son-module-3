<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>edit product by Id</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <style>
        .margin-son{
            margin-left: 40%;
        }
        .message{
            color: chartreuse;
        }
        a{
            text-decoration: none;
        }
    </style>
</head>
<body>


<div class="container margin-son">
    <form method="post">
    <fieldset>
        <h1>Edit product</h1>
        <table>
            <tr>
                <td>
                <div class="input-group input-group-sm mb-3">
                    <span class="input-group-text">Name</span>
                    <input type="text" name="name" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
                </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="input-group input-group-sm mb-3">
                        <span class="input-group-text">Price</span>
                        <input type="number" name="price" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="input-group input-group-sm mb-3">
                        <span class="input-group-text">Produce</span>
                        <input type="text" name="produce" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="input-group input-group-sm mb-3">
                        <span class="input-group-text" id="inputGroup-sizing-sm">Image</span>
                        <input type="text" name="image" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <input type="submit" value="editProduct" class="bg-success text-light">
                    <span class="border bg-danger bg-gradient" style="padding: 5px 10px; border-radius: 5px;"><a href="/product" class="text-light">Cancel and Back</a></span>
                </td>
            </tr>
        </table>
    </fieldset>
</form>
</div>
<div class="container">
    <c:if test='${message != null}'>
        <div class="alert alert-success" role="alert">
            <h4 class="alert-heading">Well done!</h4>
            <p>Aww yeah, you successfully read this important alert message. This example text is going to run a bit longer so that you can see how spacing within an alert works with this kind of content.</p>
            <hr>
            <p class="mb-0">Whenever you need to, be sure to use margin utilities to keep things nice and tidy.</p>
            <h5>${message}</h5>
        </div>
    </c:if>
</div>
<%--<script>--%>
<%--    let name = document.getElementById("nameProduct");--%>
<%--    name.oninvalid = function(event) {--%>
<%--        event.target.setCustomValidity('Username should only contain lowercase letters. e.g. john');--%>
<%--    }--%>
<%--    let produce = document.getElementById("produce");--%>
<%--    produce.oninvalid = function(event) {--%>
<%--        event.target.setCustomValidity('Username should only contain lowercase letters. e.g. john');--%>
<%--    }--%>
<%--</script>--%>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>
</html>
