<%@ page import="bd.Item" %><%--
  Created by IntelliJ IDEA.
  User: Professional
  Date: 23.07.2022
  Time: 14:05
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
            <%
                Item item = (Item)request.getAttribute("kerekItem");
                if(item!=null){
    %>
            <form action="/" method="post">
                <div class="form-group">
                    <label>NAME:</label>
                    <h5><%=item.getName()%></h5>
                </div><br>
                <div class="form-group">
                    <label>PRICE:</label>
                    <h5><%=item.getPrice()%></h5>
                </div><br>
                <div class="form-group">
                    <label>COUNT:</label>
                    <h5><%=item.getAmount()%></h5>
                </div>
            </form>
            <% } %>
        </div>
    </div>
</div>
</body>
</html>
