package com.example.javapro_l2t1;

import bd.DBManager;
import bd.Item;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(value = "/details")
public class DetailsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long id = Long.parseLong(request.getParameter("id"));
        Item item = DBManager.getItem(id);

        request.setAttribute("kerekItem",item);
        request.getRequestDispatcher("/details.jsp").forward(request,response);
    }
}
