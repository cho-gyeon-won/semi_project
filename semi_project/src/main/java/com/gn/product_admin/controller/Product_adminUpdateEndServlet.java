package com.gn.product_admin.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gn.product_admin.vo.Product_admin;

@WebServlet("/product_admin/productUpdateEnd")
public class Product_adminUpdateEndServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Product_adminUpdateEndServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		Product_admin pa = (Product_admin)request.getAttribute("resultList");
		
		
		RequestDispatcher view = null;
		view = request.getRequestDispatcher("/product_admin/product_update.jsp");
		view.forward(request, response);
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
