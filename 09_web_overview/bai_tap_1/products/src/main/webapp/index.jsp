
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <meta charset="UTF-8">
    <title>products</title>
  </head>
  <body>
  <h3>Tính chiết khấu sản phẩm</h3>
  <form action="/Discount" method="post">
    <input type="text" placeholder="Product Description: ">
    <label>giá niên yết
    <select name="price">
      <option value="1000">1000$</option>
      <option value="2000">2000$</option>
      <option value="3000">3000$</option>
      <option value="4000">4000$</option>
      <option value="5000">5000$</option>
      <option value="6000">6000$</option>
      <option value="7000">7000$</option>
      <option value="8000">8000$</option>
    </select>
    </label>
    <input type="number" placeholder="Discount Percent:" name="Discount_Percent">
    <input type = "submit" id = "submit" value = "result"/>
  </form>
  </body>
</html>
