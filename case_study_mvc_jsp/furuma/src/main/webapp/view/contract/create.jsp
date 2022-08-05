
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>create contract</title>
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
        <h3>Create Contract</h3>
        <form action="/furuma?action=insert_contract" method="post">
            <div class="mb-3 row">
                <label for="facility" class="col-sm-4 col-form-label">Facility Name</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" id="facility" name="facility_name">
                </div>
            </div>
            <div class="mb-3 row">
                <label for="cus-name" class="col-sm-4 col-form-label">Customer Name</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" id="cus-name" name="cus-name">
                </div>
            </div>
            <div class="mb-3 row">
                <label for="start-date" class="col-sm-4 col-form-label">Start Date</label>
                <div class="col-sm-8">
                    <input type="date" class="form-control" id="start-date">
                </div>
            </div>
            <div class="mb-3 row">
                <label for="end-date" class="col-sm-4 col-form-label">End Date</label>
                <div class="col-sm-8">
                    <input type="date" class="form-control" id="end-date">
                </div>
            </div>
            <div class="mb-3 row">
                <label for="deposit" class="col-sm-4 col-form-label">Deposit</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" id="deposit" name="deposit">
                </div>
            </div>
            <div class="mb-3 row">
                <label for="total-money" class="col-sm-4 col-form-label">Total Money</label>
                <div class="col-sm-8">
                    <input type="text" readonly class="form-control" id="total-money" name="total-money">
                </div>
            </div>
            <div class="mb-3 row">
                <label for="attach" class="col-sm-4 col-form-label">Attach Facility</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" id="attach" name="attach">
                </div>
            </div>
            <div>
                <button class="btn btn-danger" type="button" onclick="location.href='/furuma?action=list_contract'">Cancel</button>
                <button class="btn btn-success" type="submit">Create</button>
            </div>
        </form>
    </div>
</div>


<script src="https://kit.fontawesome.com/8a4e8d8d08.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>
</html>
