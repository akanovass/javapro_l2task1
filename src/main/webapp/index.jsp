<%@ page import="bd.Item" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <%@include file="vector/bootstrap.jsp"%>
</head>
<body>
<%@include file="vector/navbar.jsp"%>
<div class="container">
    <div class="row mt-5">
        <div class="col">
            <table class="table table-striped">
                <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Name</th>
                    <th scope="col">Price</th>
                    <th scope="col">Amount</th>
                    <th scope="col">Details</th>
                </tr>
                </thead>
                <tbody>
                <% ArrayList<Item> items = (ArrayList<Item>)request.getAttribute("lists");
                if(items!=null){
                    for(Item it: items){
    %>
                <tr>
                    <th scope="row"><%=it.getId()%></th>
                    <td><%=it.getName()%></td>
                    <td><%=it.getPrice()%></td>
                    <td><%=it.getAmount()%></td>
                    <td><a href="/details?id=<%=it.getId()%>" class="btn btn-success">Details</a></td>
                </tr>
                <% }
                }
                    %>

                </tbody>
            </table>

        </div>

    </div>

</div>
</body>
</html>