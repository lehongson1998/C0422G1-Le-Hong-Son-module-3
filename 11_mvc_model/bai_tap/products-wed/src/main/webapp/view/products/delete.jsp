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
        a{
            text-decoration: none;
        }
    </style>
</head>
<body>
<c:if test="${products != null}">
    <div class="container margin-son">
    <h1>Delete product</h1>
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
                    <td>
                        <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal">
                            Delete products
                        </button>

                        <!-- Modal -->
                        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">Warning</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            if deleted product data will be permanently deleted from the database!
                                            you still want to delete.
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                                            <button type="submit" class="btn btn-primary">Delete</button>
                                        </div>
                                    </div>
                            </div>
                            </div>
                    </td>
                    <td><button type="button" class="btn btn-primary"><a href="/product" class="text-light">Back to Home</a></button></td>
                </tr>
            </table>
        </fieldset>
    </form>
</div>
</c:if>
<div class="container">
    <c:if test='${message != null}'>
        <div class="alert alert-success" role="alert">
            <h4 class="alert-heading">Well done!</h4>
            <p>Aww yeah, you successfully read this important alert message. This example text is going to run a bit longer so that you can see how spacing within an alert works with this kind of content.</p>
            <hr>
            <p class="mb-0">Whenever you need to, be sure to use margin utilities to keep things nice and tidy.</p>
            <h5>${message}</h5>
            <button type="button" class="btn btn-primary"><a href="/product" class="text-light">Back to Home</a></button>
        </div>
    </c:if>
</div>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>
</html>