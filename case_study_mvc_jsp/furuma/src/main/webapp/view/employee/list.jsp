
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>list employee</title>
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

<div class="container text-center pd-5">
    <h2>LIST EMPLOYEE</h2>
    <table class="table">
        <tr class="bg-light bg-gradient">
            <th>Name</th>
            <th>Date of birth</th>
            <th>Id card</th>
            <th>Email</th>
            <th>Education id</th>
            <th>Position id</th>
            <th>Salary</th>
            <th colspan="2">Action</th>
        </tr>
            <tr>
                <td>Lê hồng sơn</td>
                <td>06/08/1998</td>
                <td>187592899</td>
                <td>lhongson2909@gmail.com</td>
                <td>Đại học</td>
                <td>Giám đốc</td>
                <td>2000$</td>
                <td>
                    <button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#edit-modal" onclick="editEmployee(${emp.id})">
                        Edit
                    </button>
                </td>
                <td>
                    <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal" onclick="removeFacility(${emp.id})">
                        Delete
                    </button>
                </td>
            </tr>
    </table>
</div>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <form action="/furuma?action=delete">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Delete Employee</h5>
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
    <form action="/furuma?action=edit_employee">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Edit Employee</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                        <div class="mb-3 row">
                            <label for="editId" class="col-sm-4 col-form-label">Id</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="editId" name="id">
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="name" class="col-sm-4 col-form-label">name</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="name" name="name">
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="date" class="col-sm-4 col-form-label">Date of birth</label>
                            <div class="col-sm-8">
                                <input type="date" class="form-control" id="date" name="date-of-birth">
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="id-card" class="col-sm-4 col-form-label">Id card</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="id-card" name="id-card">
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="email" class="col-sm-4 col-form-label">Email</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="email">
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="edu-id" class="col-sm-4 col-form-label">Education Id</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="edu-id">
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="position-id" class="col-sm-4 col-form-label">Position id</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="position-id">
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="salary" class="col-sm-4 col-form-label">Salary</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="salary">
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
    function editEmployee(id){
        document.getElementById("editId").value = id;
    }
    function removeEmployee(id){
        document.getElementById("deleteId").value = id;
    }
</script>

<script src="https://kit.fontawesome.com/8a4e8d8d08.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>

</body>
</html>
