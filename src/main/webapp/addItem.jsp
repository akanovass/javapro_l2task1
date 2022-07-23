<%--
  Created by IntelliJ IDEA.
  User: Professional
  Date: 18.07.2022
  Time: 13:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@include file="vector/bootstrap.jsp"%>
</head>
<body>
<%@include file="vector/navbar.jsp"%>
<div class="container">
    <div class="row mt-3">
        <div class="col-8 mx-auto">
            <form action="/NewItemServlet" method="post">
                <div class="form-group">
                    <label>NAME:</label>
                    <input type="text" name="name" class="form-control">
                </div><br>
                <div class="form-group">
                    <label>PRICE:</label>
                    <input type="number" name="price" class="form-control">
                </div><br>
                <div class="form-group">
                    <label>COUNT:</label>
                    <input type="number" name="count" class="form-control">
                </div><br>
                <div class="form-group">
                    <button class="btn btn-success">ADD ITEM</button>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
