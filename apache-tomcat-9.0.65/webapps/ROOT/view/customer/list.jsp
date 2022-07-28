
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>customer table</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
    <div class="container">
       <table class="table">
           <tr>
               <th scope="col">Họ Tên</th>
               <th scope="col">Ngày Sinh</th>
               <th scope="col">Địa Chỉ</th>
               <th scope="col">Hình Ảnh</th>
           </tr>
           <c:forEach var="customer" items="${customerList}" varStatus="status">
               <tr>
                   <td>${customer.getName()}</td>
                   <td>${customer.getBirthDay()}</td>
                   <td>${customer.getAddress()}</td>
                   <td><img src="${customer.getImage()}" style="width: 20%; height: 15%"></td>
               </tr>
           </c:forEach>
       </table>
    </div>
</body>
</html>
