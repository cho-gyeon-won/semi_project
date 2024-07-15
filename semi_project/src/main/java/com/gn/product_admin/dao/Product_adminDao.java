package com.gn.product_admin.dao;
import static com.gn.common.sql.JDBCTemplate.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.gn.product_admin.vo.Product_admin;

public class Product_adminDao {
	public int createProduct(Product_admin pa, Connection conn) {
		PreparedStatement pstmt = null;
		int result = 0;
		try {
			String sql = "INSERT INTO `product` (cate_no, prod_name, prod_price, prod_info, prod_inventory, prod_enroll_image, prod_revise_image) VALUES (?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, pa.getCate_no());
			pstmt.setString(2, pa.getProd_name());
			pstmt.setInt(3, pa.getProd_price());
			pstmt.setString(4, pa.getProd_info());
			pstmt.setInt(5, pa.getProd_inventory());
			pstmt.setString(6, pa.getProd_enroll_image());
			pstmt.setString(7, pa.getProd_revise_image());
			result = pstmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}
	public List<Product_admin> selectProduct_adminList(Connection conn){
		List<Product_admin> list = new ArrayList<Product_admin>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			String sql = "SELECT * FROM `product`";
//			if(prodNo != 0) {
//				sql += " WHERE prod_no LIKE CONCAT('%','"+prodNo+"','%')";
//			}
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Product_admin resultVo = new Product_admin(
								rs.getInt("prod_no"),
								rs.getInt("cate_no"),
								rs.getString("prod_name"),
								rs.getInt("prod_price"),
								rs.getString("prod_info"),
								rs.getInt("prod_inventory"),
								rs.getInt("prod_sellCount"),
								rs.getTimestamp("prod_regDate").toLocalDateTime(),
								rs.getString("prod_status"),
								rs.getString("prod_enroll_image"),
								rs.getString("prod_revise_image"));
				list.add(resultVo);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			close(rs);
			close(pstmt);
		}
		return list;
	}
}
