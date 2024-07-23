package com.project.user.controller.orderList;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.user.service.OrderService;


@WebServlet("/order/cancelPointEnd")
public class CancelPointEndServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public CancelPointEndServlet() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int userNo = Integer.parseInt(request.getParameter("user_no"));
        int cancelAmount = Integer.parseInt(request.getParameter("cancel_amount"));
        
        String reason = "상품 구매 취소";
        int plusPoint = +cancelAmount;
        
        int result = new OrderService().cancelPoint(userNo,cancelAmount);
        
        if (result> 0) {
            new OrderService().pointListInsert(userNo, reason, plusPoint);  // 포인트 변동 테이블에 내역 insert
        	response.sendRedirect("/views/user/order_cancel_completed.jsp");  // 포인트 취소 성공
        }
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
