package com.gn.product_admin.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gn.product_admin.Service.Product_adminService;
import com.gn.product_admin.vo.Product_admin;

@WebServlet("/product_admin/product_updateList")
public class Product_adminUpdateListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Product_adminUpdateListServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		int prodNo = Integer.parseInt(request.getParameter("product_no"));
//		
//		Product_admin option = new Product_admin();
//		option.setProd_no(prodNo);
		
		List<Product_admin> list = new Product_adminService().selectProduct_adminList();

		request.setAttribute("resultList", list);
		RequestDispatcher view = null;
		if(!list.isEmpty()) {
			view = request.getRequestDispatcher("/product_admin/product_updateList.jsp");
			view.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
