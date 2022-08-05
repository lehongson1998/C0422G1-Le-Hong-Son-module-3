<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
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

<div class="text-center"><h2>LIST FACILITY</h2></div>
<div class="pd-5">
    <table class="table table-border">
        <tr class="bg-info bg-gradient text-light">
            <th>Name</th>
            <th>Area</th>
            <th>Cost</th>
            <th>Max people</th>
            <th>Rent type</th>
            <th>Facility type</th>
            <th>Standard room</th>
            <th>Description</th>
            <th>Pool area</th>
            <th>Number floor</th>
            <th>Facility free</th>
            <th>Action</th>
        </tr>
<%--        <c:forEach var="fac" items="${facility}">--%>
            <tr>
                <td>${fac.name}</td>
                <td>${fac.area}</td>
                <td>${fac.cont}</td>
                <td>${fac.maxPeople}</td>
                <td>
                <c:if test="${rentTypeId != null}">
                    <c:forEach var="rentType" items="${renTypeId}">
                        ${rentType.name}
                    </c:forEach>
                </c:if>
                </td>
                <td>
                <c:if test="${facilityId != null}">
                    <c:forEach var="type" items="${facilityId}">
                        ${type.name}
                    </c:forEach>
                </c:if>
                </td>
                <td>${fac.stanrdRoom}</td>
                <td>${fac.decreption}</td>
                <td>${fac.poolArea}</td>
                <td>${fac.numberFloor}</td>
                <td>${fac.facilityFree}</td>
                <td>
                    <ul style="list-style: none">
                        <li>
                            <div class="btn-group">
                                <button type="button" class="btn btn-danger dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                                    Action
                                </button>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <li><button type="button" class="dropdown-item btn btn-success" data-bs-toggle="modal" data-bs-target="#edit-modal" onclick="editFacility(${fac.id})">Edit</button></li>
                                    <li><button type="button" class="dropdown-item btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal" onclick="removeFacility(${fac.id})">Delete</button></li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </td>
            </tr>
<%--        </c:forEach>--%>
    </table>
</div>
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
   <form action="/furuma?action=delete">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Delete Facility</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <input type="text" readonly id="deleteId" class="form-control-plaintext">
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                <button type="submit" class="btn btn-primary">Delete</button>
            </div>
        </div>
    </div>
   </form>
</div>

<div class="modal fade" id="edit-modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <form action="/furuma?action=edit" method="post">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Edit Facility</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                            <div class="mb-3 row">
                                <label for="editId" class="col-sm-4 col-form-label">Id</label>
                                <div class="col-sm-8">
                                    <input type="text" readonly class="form-control-plaintext" id="editId">
                                </div>
                            </div>
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
                            <div class="mb-3 row">
                                <label for="facility-free" class="col-sm-4 col-form-label">Facility free</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="facility-free">
                                </div>
                            </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                    <button type="submit" class="btn btn-primary">Edit</button>
                </div>
            </div>
        </div>
    </form>
</div>

<script>
    function editFacility(id){
        document.getElementById("editId").value = id;
    }
    function removeFacility(id){
        document.getElementById("deleteId").value = id;
    }
</script>
<script src="https://kit.fontawesome.com/8a4e8d8d08.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>
</html>
