package com.project.user.service;

import static com.project.common.sql.JDBCTemplate.close;
import static com.project.common.sql.JDBCTemplate.getConnection;

import java.sql.Connection;

import com.project.user.dao.OrderDao;
import com.project.user.dao.ShipListDao;

public class OrderService {
	
	public static int cancelPoint(int userNo, int cancelAmount) {
		Connection conn = getConnection();
		int result = new OrderDao().cancelPoint(userNo, cancelAmount , conn);
		close(conn);
		return result;
	}

	public static void pointListInsert(int user_no, String reason, int minusPoint) {
		Connection conn = getConnection();
		new OrderDao().pointListInsert(user_no, reason, minusPoint , conn);
		close(conn);
	}
	
	public static void deleteCartItems (int user_no, int[] prodNos) {
		Connection conn = getConnection();
		new OrderDao().deleteCartItems(user_no, prodNos, conn);
		close(conn);
	}
	
	public static int OrderProcess(int user_no, int totalPrice, int ship_no, int[] prodNos, int[] prodQuantities, String order_comment, String order_no) {
		Connection conn = getConnection();
		int result = new OrderDao().OrderProcess(user_no, totalPrice, ship_no, prodNos, prodQuantities, order_comment, order_no, conn);
		close(conn);
		return result;
	}
}