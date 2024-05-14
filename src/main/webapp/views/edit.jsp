<%--
  Created by IntelliJ IDEA.
  User: AD
  Date: 5/8/2024
  Time: 2:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

</head>
<body>
<h1 class="text-center">Sua</h1>
<form class="row g-3" action="/editEmployee" method="post">
    <div class="col-md-6">
        <label for="inputEmail" class="form-label">Id</label>
        <input type="text" class="form-control" name="id" id="inputEmail" readonly value="${employees.id}">
    </div>
    <div class="col-md-6">
        <label for="inputEmail4" class="form-label">Name</label>
        <input type="text" class="form-control" name="name" id="inputEmail4" value="${employees.name}">
    </div>
    <div class="col-12">
        <label for="inputAddress" class="form-label">Địa chỉ</label>
        <input type="text" class="form-control" name="address" id="inputAddress" value="${employees.address}">
    </div>

    <div class="col-md-6">
        <label for="inputCity" class="form-label">Birth Day</label>
        <input type="date" class="form-control" name="dateOfBirth" id="inputCity" value="${employees.dateOfBirth}">
    </div>
    <div class="col-md-6">
        <label for="inputCity1" class="form-label">phone</label>
        <input type="text" class="form-control" name="phone" id="inputCity1" value="${employees.phone}">
    </div>

    <div class="col-12">
        <input type="submit" class="btn btn-primary" value="add" name="action"/>
    </div>
</form>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</body>
</html>
