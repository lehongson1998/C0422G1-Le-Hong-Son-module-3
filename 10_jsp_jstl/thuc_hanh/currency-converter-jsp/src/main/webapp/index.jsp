
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>currency converter</title>
    <style>
      label{
        font-family: Arial;
        color: white;
      }
      .form{
        display: block;
        background-color: darkgray;
        width: 300px;
        margin: auto;
        border-radius: 10px;
        padding: 20px;
      }
      input{
        display: block;
        width: 90%;
        margin-bottom: 20px;
        border: none;
      }
    </style>
  </head>
  <body>
  <div class="form">
    <h2>Currency Converter</h2>
    <form action="/converter.jsp" method="post">
      <label>Rate:</label><br>
      <input type="text" name="rate" value="22000" placeholder="Rate">
      <label>USD:</label><br>
      <input type="text" name="usd" placeholder="usd" value="0">
      <input type="submit" id="submit" value="converter">
    </form>
  </div>
  </body>
</html>
