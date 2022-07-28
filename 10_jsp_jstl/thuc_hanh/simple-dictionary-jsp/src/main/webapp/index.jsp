
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <head>
    <title>Simple Dictionary</title>
    <style>
      body{
        font-family: Arial;
      }
      form{
        padding: 10px;
        border-radius: 15px;
        border-color: azure;
      }
      .input{
        width: 200px;
        height: 30px;
        border-radius: 15px;
      }
      .submit{
        width: 70px;
        text-align: center;
        border-radius: 15px;
        background-color: chartreuse;
        height: 30px;
      }

    </style>
  </head>
  <body>
    <h2>Vietnamese Dictionary</h2>
    <form action="dictionary.jsp" method="post">
      <input class="input" type="text" name="search" placeholder="Enter your word: "/>
      <input class="submit" type="submit" id="submit" value="Search">
    </form>
  </body>
</html>
