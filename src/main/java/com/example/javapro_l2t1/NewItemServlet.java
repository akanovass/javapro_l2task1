package com.example.javapro_l2t1;

import bd.DBManager;
import bd.Item;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "NewItemServlet", value = "/NewItemServlet")
public class NewItemServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        int price =Integer.parseInt(request.getParameter("price"));
        int count =Integer.parseInt(request.getParameter("count"));

        Item newItem = new Item(DBManager.getId(),name,price,count);
        DBManager.addItem(newItem);
        response.sendRedirect("/additem");
    }
}
