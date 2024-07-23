package com.project.user.controller.orderList;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



// 마이페이지 -> 주문내역 -> 취소버튼 클릭할 떄 order-cancel.jsp에 보내줄 데이터

@WebServlet("/order/cancelPoint")   
public class CancelPointServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public CancelPointServlet() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
