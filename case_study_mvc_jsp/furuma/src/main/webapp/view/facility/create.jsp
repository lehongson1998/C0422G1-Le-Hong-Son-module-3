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

<div class="container w-50 mt-2 p-2 bg-light" style="border: 1px solid grey; border-radius: 15px">
    <h3 align="center">Add New Facility</h3>
    <form class="row g-3">
        <div class="col-md-12">
            <label class="form-label">Facility type</label>
            <select name=""  class="form-select" onchange="showServiceInput(this)">
                <option value="None" >Select Facility</option>
                <option value="Villa" >Villa</option>
                <option value="House" >House</option>
                <option value="Room" >Room</option>
            </select>
        </div>

        <div class="col-md-12">
            <label for="name" class="form-label">Facility Name</label>
            <input type="text" class="form-control" id="name" name="name">
        </div>
        <div class="col-md-12">
            <label for="area" class="form-label">Area</label>
            <input type="text" class="form-control" id="area" name="area">
        </div>
        <div class="col-md-12">
            <label for="cost" class="form-label">Deposit</label>
            <input type="text" class="form-control" id="cost"  name="cost" >
        </div>
        <div class="col-md-12">
            <label for="inputAddress2" class="form-label">Max people</label>
            <input type="text" class="form-control" id="inputAddress2"  name="max_people" >
        </div>
        <div class="col-md-12">
            <label for="inputCity" class="form-label">Rent Type</label>
            <input type="text" class="form-control" id="inputCity" name="rent_type_id">
        </div>
        <div class="col-md-12 " id="s1" style="display: none">
            <label for="standard_room" class="form-label">Standard Room</label>
            <input type="text" class="form-control" id="standard_room" name="standard_room">
        </div>

        <div class="col-md-12 " id="s2" style="display: none">
            <label for="description_other_convenience" class="form-label">Description</label>
            <input type="text" class="form-control" id="description_other_convenience" name="description_other_convenience">
        </div>

        <div class="col-md-12 " id="s3" style="display: none">
            <label for="pool_area" class="form-label">Pool Area</label>
            <input type="text" class="form-control" id="pool_area" name="pool_area">
        </div>

        <div class="col-md-12" id="s4" style="display: none">
            <label for="number_of_floors" class="form-label">Number Floor</label>
            <input type="text" class="form-control" id="number_of_floors" name="number_of_floors">
        </div>

        <div class="col-md-12 " id="s5" style="display: none">
            <label for="facility_free" class="form-label">Facility Free</label>
            <input type="text" class="form-control" id="facility_free" name="facility_free">
        </div>

        <div class="col-12 ">
            <button type="button" class="btn btn-danger">Back</button>
            <button type="submit" class="btn btn-success">Create</button>
        </div>
    </form>
</div>
<script>

    function showServiceInput(value) {
        let v = value.value;
        switch (v) {
            case 'None':
                document.getElementById("s1").style.display="none";
                document.getElementById("s2").style.display="none";
                document.getElementById("s3").style.display="none";
                document.getElementById("s4").style.display="none";
                document.getElementById("s5").style.display="none";
                break;
            case "Villa":
                document.getElementById("s1").style.display="block";
                document.getElementById("s2").style.display="block";
                document.getElementById("s3").style.display="block";
                document.getElementById("s4").style.display="block";
                document.getElementById("s5").style.display="none";
                break;
            case "House":
                document.getElementById("s1").style.display="block";
                document.getElementById("s2").style.display="block";
                document.getElementById("s4").style.display="block";
                document.getElementById("s5").style.display="none";
                document.getElementById("s3").style.display="none";
                break;
            case "Room":
                document.getElementById("s1").style.display="none";
                document.getElementById("s2").style.display="none";
                document.getElementById("s3").style.display="none";
                document.getElementById("s4").style.display="none";
                document.getElementById("s5").style.display="block";
                break;
        }
    }
</script>



<script src="https://kit.fontawesome.com/8a4e8d8d08.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>
</html>
