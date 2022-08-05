<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>create</title>
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

    <div class="col-md-5 bg-light mt-5 p-3" style="margin: auto">
        <form method="post" action="/furuma?action=select_facility">
            <div class="mb-3 row">
                <label for="type-facility" class="col-sm-4 col-form-label">Facility type</label>
                <div class="col-sm-8">
                    <select class="form-control" name="select" id="type-facility">
                        <option value="villa">Villa</option>
                        <option value="house">House</option>
                        <option value="room">room</option>
                    </select>
                    <button type="submit" class="btn btn-success mt-3" >Accept</button>
                </div>
            </div>
        </form>
    </div>
<div>
    <c:if test="${villas != null}">
    <div class="col-md-5 bg-light mt-5 p-3" style="margin: auto">
        <h3>Create Villa</h3>
        <form action="/furuma?action=insert_facility" method="post">
            <div class="mb-3 row">
                <label for="name" class="col-sm-4 col-form-label">Name</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" id="name">
                </div>
            </div>
            <div class="mb-3 row">
                <label for="area" class="col-sm-4 col-form-label">Area</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" id="area">
                </div>
            </div>
            <div class="mb-3 row">
                <label for="cont" class="col-sm-4 col-form-label">Cont</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" id="cont">
                </div>
            </div>
            <div class="mb-3 row">
                <label for="max-people" class="col-sm-4 col-form-label">Max people</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" id="max-people">
                </div>
            </div>
            <div class="mb-3 row">
                <label for="ren-type-id" class="col-sm-4 col-form-label">Ren type id</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" id="ren-type-id">
                </div>
            </div>
            <div class="mb-3 row">
                <label for="facility-type-id" class="col-sm-4 col-form-label">Facility type id</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" id="facility-type-id">
                </div>
            </div>
            <div class="mb-3 row">
                <label for="standard-room" class="col-sm-4 col-form-label">Standard room</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" id="standard-room">
                </div>
            </div>
            <div class="mb-3 row">
                <label for="description" class="col-sm-4 col-form-label">Description</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" id="description">
                </div>
            </div>
            <div class="mb-3 row">
                <label for="pool-area" class="col-sm-4 col-form-label">Pool area</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" id="pool-area">
                </div>
            </div>
            <div class="mb-3 row">
                <label for="number-floor" class="col-sm-4 col-form-label">Number floor</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" id="number-floor">
                </div>
            </div>
            <div>
                <button class="btn btn-danger" type="button" onclick="location.href='/furuma?action=list_facility'">Cancel</button>
                <button class="btn btn-success" type="submit">Create</button>
            </div>
        </form>
    </div>
    </c:if>
    <c:if test="${houses != null}">
        <div class="col-md-5 bg-light mt-5 p-3" style="margin: auto">
            <h3>Create House</h3>
            <form action="/furuma?action=insert_facility" method="post">
                <div class="mb-3 row">
                    <label for="name1" class="col-sm-4 col-form-label">Name</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" id="name1">
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="area1" class="col-sm-4 col-form-label">Area</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" id="area1">
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="cont1" class="col-sm-4 col-form-label">Cost</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" id="cont1">
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="max-people1" class="col-sm-4 col-form-label">Max people</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" id="max-people1">
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="ren-type-id1" class="col-sm-4 col-form-label">Ren type id</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" id="ren-type-id1">
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="facility-type-id1" class="col-sm-4 col-form-label">Facility type id</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" id="facility-type-id1">
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="standard-room1" class="col-sm-4 col-form-label">Standard room</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" id="standard-room1">
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="description1" class="col-sm-4 col-form-label">Description</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" id="description1">
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="number-floor" class="col-sm-4 col-form-label">Number floor</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" id="number-floor1">
                    </div>
                </div>
                <div>
                    <button class="btn btn-danger" type="button" onclick="location.href='/furuma?action=list_facility'">Cancel</button>
                    <button class="btn btn-success" type="submit">Create</button>
                </div>
            </form>
        </div>
    </c:if>
    <c:if test="${room != null}">
        <div class="col-md-5 bg-light mt-5 p-3" style="margin: auto">
            <h3>Create Room</h3>
            <form action="/furuma?action=insert_facility" method="post">
                <div class="mb-3 row">
                    <label for="name2" class="col-sm-4 col-form-label">Name</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" id="name2">
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="area2" class="col-sm-4 col-form-label">Area</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" id="area2">
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="cont2" class="col-sm-4 col-form-label">Cont</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" id="cont2">
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="max-people2" class="col-sm-4 col-form-label">Max people</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" id="max-people2">
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="ren-type-id2" class="col-sm-4 col-form-label">Ren type id</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" id="ren-type-id2">
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="facility-type-id2" class="col-sm-4 col-form-label">Facility type id</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" id="facility-type-id2">
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="facility-free" class="col-sm-4 col-form-label">Facility free</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" id="facility-free">
                    </div>
                </div>
                <div>
                    <button class="btn btn-danger" type="button" onclick="location.href='/furuma?action=list_facility'">Cancel</button>
                    <button class="btn btn-success" type="submit">Create</button>
                </div>
            </form>
        </div>
    </c:if>
</div>



<script src="https://kit.fontawesome.com/8a4e8d8d08.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>
</html>
