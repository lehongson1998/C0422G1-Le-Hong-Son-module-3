<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>edit contract</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
        <div class="col-md-5 bg-light mt-5 p-3" style="margin: auto">
            <div class="text-center">
                <h4>Edit Facility Villa</h4>
            </div>
                <form action="/furuma?action=edit" method="post">
                    <div class="mb-3 row">
                        <label for="editId" class="col-sm-4 col-form-label">Id</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control-plaintext" id="editId" name="editId">
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <label for="name" class="col-sm-4 col-form-label">Name</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="name" name="name">
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <label for="area" class="col-sm-4 col-form-label">Area</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="area" name="area">
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <label for="cost" class="col-sm-4 col-form-label">Cost</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="cost" name="cost">
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <label for="max-people" class="col-sm-4 col-form-label">Max people</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="max-people" name="max-people">
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <label for="ren-type-id" class="col-sm-4 col-form-label">Ren type id</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="ren-type-id" name="ren-type-id">
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <label for="standard-room" class="col-sm-4 col-form-label">Standard room</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="standard-room" name="standard-room">
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <label for="description" class="col-sm-4 col-form-label">Description</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="description" name="description">
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <label for="pool-area" class="col-sm-4 col-form-label">Pool area</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="pool-area" name="pool-area">
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <label for="number-floor" class="col-sm-4 col-form-label">Number floor</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="number-floor" name="number-floor">
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" onclick="location.href='/furuma?action=list_facility'">Cancel</button>
                        <button type="submit" class="btn btn-primary">Edit Villa</button>
                    </div>
            </form>
        </div>

        <div class="col-md-5 bg-light mt-5 p-3" style="margin: auto">
            <div class="text-center">
                <h4>Edit Facility House</h4>
            </div>
            <form action="/furuma?action=edit" method="post">
                <div class="mb-3 row">
                    <label for="editId1" class="col-sm-4 col-form-label">Id</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control-plaintext" name="editId" id="editId1">
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="name1" class="col-sm-4 col-form-label">Name</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" name="name" id="name1">
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="area1" class="col-sm-4 col-form-label">Area</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" name="area" id="area1">
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="cost1" class="col-sm-4 col-form-label">Cost</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" name="cont" id="cost1">
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="max-people1" class="col-sm-4 col-form-label">Max people</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" name="max-people" id="max-people1">
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="ren-type-id1" class="col-sm-4 col-form-label">Ren type id</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" name="ren-type-id" id="ren-type-id1">
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="standard-room" class="col-sm-4 col-form-label">Standard room</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" name="standard-room">
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="description1" class="col-sm-4 col-form-label">Description</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" name="description" id="description1">
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="number-floor1" class="col-sm-4 col-form-label">Number floor</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" name="number-floor" id="number-floor1">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" onclick="location.href='/furuma?action=list_facility'">Cancel</button>
                    <button type="submit" class="btn btn-primary">Edit House</button>
                </div>
            </form>
        </div>

        <div class="col-md-5 bg-light mt-5 p-3" style="margin: auto">
            <div class="text-center">
                <h4>Edit Facility Room</h4>
            </div>
            <form action="/furuma?action=edit" method="post">
                <div class="mb-3 row">
                    <label for="editId2" class="col-sm-4 col-form-label">Id</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control-plaintext" name="editId" id="editId2">
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="name2" class="col-sm-4 col-form-label">Name</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" name="name" id="name2">
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="area2" class="col-sm-4 col-form-label">Area</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" name="area" id="area2">
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="cost2" class="col-sm-4 col-form-label">Cost</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" name="cont" id="cost2">
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="max-people2" class="col-sm-4 col-form-label">Max people</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" name="max-people" id="max-people2">
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="ren-type-id2" class="col-sm-4 col-form-label">Ren type id</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" name="ren-type-id" id="ren-type-id2">
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="facility-free" class="col-sm-4 col-form-label">Facility free</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" name="facility-free" id="facility-free">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" onclick="location.href='/furuma?action=list_facility'">Cancel</button>
                    <button type="submit" class="btn btn-primary">Edit Room</button>
                </div>
            </form>
        </div>

<script src="https://kit.fontawesome.com/8a4e8d8d08.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>
</html>
