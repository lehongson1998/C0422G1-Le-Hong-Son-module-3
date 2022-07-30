<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new customer</title>
    <style>
        .message{
            color:green;
        }
        .margin-son{
            margin-left: 40%;
        }
        a{
            text-decoration: none;
        }

    </style>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

</head>
<body>
<div class="container margin-son">
    <form method="post">
        <fieldset>
            <h1>create new product</h1>
            <table>
                <tr>
                    <td>
                        <div class="input-group input-group-sm mb-3">
                            <span class="input-group-text">Id</span>
                            <input type="number" name="id" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
                        </div>
                    </td>
                </tr>
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
                        <input type="submit" value="Create" class="bg-success text-light">
                        <span class="border bg-danger bg-gradient" style="padding: 5px 10px; border-radius: 5px;"><a href="/product" class="text-light">Cancel and Back</a></span>
                    </td>
                </tr>
                <tr>
                    <td>
                        <c:if test='${message != null}'>
                            <h5 class="message">${message}</h5>
                        </c:if>
                    </td>
                </tr>
            </table>
        </fieldset>
    </form>
</div>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>
</html>