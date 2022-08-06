<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>create customer</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

</head>
<body>
<div class="sticky-top row">
    <nav class="navbar navbar-expand-lg navbar-light bg-success bg-gradient">
        <div class="container-fluid">
            <a class="navbar-brand text-light" href="/furuma">
                <i class="fa-solid fa-house-chimney fs-4 text"></i>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/furuma">Home</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Employee
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="/furuma?action=list_employee">List Employee</a></li>
                            <li><a class="dropdown-item" href="/furuma?action=create_employee">Add new Employee</a></li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Customer
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="/furuma?action=list_customer">List Customer</a></li>
                            <li><a class="dropdown-item" href="/furuma?action=create_customer">Add new Customer</a></li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Service
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="/furuma?action=list_facility">List Service</a></li>
                            <li><a class="dropdown-item" href="/furuma?action=create_facility">Add new Service</a></li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#"  role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Contract
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="/furuma?action=list_contract">List Contract</a></li>
                            <li><a class="dropdown-item" href="/furuma?action=create_contract">Add new Contract</a></li>
                        </ul>
                    </li>
                </ul>
                <form class="d-flex">
                    <input class="form-control me-1" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-info text-light" type="submit">Search</button>
                </form>
            </div>
        </div>
    </nav>
</div>

<div>
    <div class="col-md-5 bg-light mt-5 p-3" style="margin: auto">
    <h3>Create Customer</h3>
    <form action="/furuma?action=insert_customer" method="post">
        <div class="mb-3 row">
            <label for="id" class="col-sm-4 col-form-label">Id</label>
            <div class="col-sm-8">
                <input type="text" class="form-control" id="id" name="id">
            </div>
        </div>
        <div class="mb-3 row">
            <label for="inputTypeId" class="col-sm-4 col-form-label">Type id</label>
            <div class="col-sm-8">
                <input type="text" class="form-control" id="inputTypeId" name="typeId">
            </div>
        </div>
        <div class="mb-3 row">
            <label for="static-name" class="col-sm-4 col-form-label">Name</label>
            <div class="col-sm-8">
                <input type="text" class="form-control" id="static-name" name="name">
            </div>
        </div>
        <div class="mb-3 row">
            <label for="staticDate" class="col-sm-4 col-form-label">Date of birth</label>
            <div class="col-sm-8">
                <input type="date" class="form-control" id="staticDate" name="dateOfBirth">
            </div>
        </div>
        <div class="mb-3 row">
            <label for="gender" class="col-sm-4 col-form-label">Gender</label>
            <div class="col-sm-8">
                <div class="form-check" id="gender">
                    <input class="form-check-input" type="radio" name="gender" value="1" id="flexRadioDefault1">
                    <label class="form-check-label" for="flexRadioDefault1">
                        Male
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="gender" value="0" id="flexRadioDefault2" checked>
                    <label class="form-check-label" for="flexRadioDefault2">
                        Female
                    </label>
                </div>
            </div>
        </div>
        <div class="mb-3 row">
            <label for="id-card" class="col-sm-4 col-form-label">id Card</label>
            <div class="col-sm-8">
                <input type="text" class="form-control" id="id-card" name="idCard">
            </div>
        </div>
        <div class="mb-3 row">
            <label for="phone" class="col-sm-4 col-form-label">Phone number</label>
            <div class="col-sm-8">
                <input type="text" class="form-control" id="phone" name="phone">
            </div>
        </div>
        <div class="mb-3 row">
            <label for="email" class="col-sm-4 col-form-label">Email</label>
            <div class="col-sm-8">
                <input type="text" class="form-control" id="email" name="email">
            </div>
        </div>
        <div class="mb-3 row">
            <label for="address" class="col-sm-4 col-form-label">Address</label>
            <div class="col-sm-8">
                <input type="text" class="form-control" id="address" name="address">
            </div>
        </div>
        <div>
            <button class="btn btn-danger" type="button" onclick="location.href='/furuma?action=list_customer'">Cancel</button>
            <button class="btn btn-success" type="submit">Create</button>
        </div>
    </form>
        <c:if test="${message != null}">
        <div class="col-md-5 bg-light mt-5 p-3 text-center" style="margin: auto">
            <h1>${message}</h1>
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" onclick="location.href='/furuma?action=list_customer'">Back</button>
        </div>
        </c:if>

<script src="https://kit.fontawesome.com/8a4e8d8d08.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>
</html>
