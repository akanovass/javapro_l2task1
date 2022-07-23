package com.example.javapro_l2t1;

import bd.DBManager;
import bd.Item;

import java.io.*;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(value = "/")
public class HelloServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        ArrayList<Item> items = DBManager.getItems();
        request.setAttribute("lists", items);
        request.getRequestDispatcher("/index.jsp").forward(request,response);
    }
}