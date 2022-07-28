
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>customer table</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
    <div class="text-success text-center container bg-info">
        <h1>DANH SÁCH KHÁCH HÀNG</h1>
    </div>
    <div class="container">
       <table class="table table-hover text-center text-nowrap">
           <tr>
               <th>Họ Tên</th>
               <th>Ngày Sinh</th>
               <th>Địa Chỉ</th>
               <th>Hình Ảnh</th>
           </tr>
           <c:forEach var="customer" items="${customerList}" varStatus="status">
               <tr>
                   <td class="table-primary">${customer.getName()}</td>
                   <td class="table-secondary">${customer.getBirthDay()}</td>
                   <td class="table-success">${customer.getAddress()}</td>
                   <td class="table-danger"><img src="${customer.getImage()}" style="width: 10%; height: 3%" class="rounded float-center"></td>
               </tr>
           </c:forEach>
       </table>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>
</html>
