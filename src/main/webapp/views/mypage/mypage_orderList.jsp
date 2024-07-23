<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>주문 내역</title>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <link rel="shortcut icon" href="../../images/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="../../images/apple-touch-icon.png">
    <link rel="stylesheet" href="../../css/bootstrap.min.css">
    <link rel="stylesheet" href="../../css/style.css">
    <link rel="stylesheet" href="../../css/responsive.css">
    <link rel="stylesheet" href="../../css/custom.css">
    <link rel="stylesheet" href="../../css/login.css">
    <link rel="stylesheet" href="../../css/search.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" crossorigin="anonymous" />
</head>
<body>
<%@ include file = "../include/nav.jsp"%>
<div class="container-fluid mb-5">
    <div class="row border-top px-xl-5">
        <div class="col-lg-3 d-none d-lg-block" style="max-width:280px">
            <a class="btn shadow-none d-flex align-items-center justify-content-between bg-primary text-white w-100" href="#" style="height: 65px; margin-top: 1px; padding: 0 30px;">
                <h2 style="color: white;">마이페이지</h2>
            </a>
            <nav class="collapse show navbar navbar-vertical navbar-light align-items-start p-0 border border-left-0 border-top-0 border-bottom-" id="navbar-vertical">
                <div class="navbar-nav w-100" style="height: 410px;">
                    <a href="/MyPage/PointHistory" class="nav-item nav-link margin-left-5px">적립금</a>
                     <a href="/MyPage/OrderList" class="nav-item nav-link">주문내역</a>
                    <a href="/MyPage/Edit" class="nav-item nav-link">회원정보수정</a>
                    <a href="/MyPage/ReviewList" class="nav-item nav-link">리뷰내역</a>
                </div>
            </nav>
        </div>
    
		<%@page import = "com.project.user.vo.User" %>
		<input type="hidden" name="user_no" value="<%=user.getUser_no()%>">

        <div class="container mt-5">
            <h1 class="mb-4">주문 내역</h1>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>주문 번호</th>
                        <th>수취인</th>
                        <th>작성일</th>
                        <th>배송상태</th>
                    </tr>
                </thead>
                <tbody>
                <%@ page import="com.gn.product_admin.vo.Product_admin,
                        com.gn.order_admin.vo.Buy, com.gn.order_admin.vo.Shiplist,java.util.*" %>
                            <%
                            	List<Map<String, Object>> list = (List<Map<String, Object>>)request.getAttribute("userListOrder");
                            if(list != null){
                            	for(int i = 0; i < list.size(); i++){%>
                    
                        <tr>
                            <td><a href="/MyPage/OrderUserInfo?order_no=<%= list.get(i).get("주문번호") %>"><%= list.get(i).get("주문번호") %></a></td>
                            <td><a href="/MyPage/OrderUserInfo?order_no=<%= list.get(i).get("주문번호") %>"><%= list.get(i).get("수취인") %></a></td>
                            <td><a href="/MyPage/OrderUserInfo?order_no=<%= list.get(i).get("주문번호") %>"><%= list.get(i).get("주문일자") %></a></td>
                            <td><a href="/MyPage/OrderUserInfo?order_no=<%= list.get(i).get("주문번호") %>"><%= list.get(i).get("주문상태") %></a></td>
                        </tr>
                        <input type="hidden" id="order_no" name="order_no" value="<%= list.get(i).get("주문번호") %>">
                    <%}%>
                    <%} else{%>
                    <tr>
                    	<td><p>주문하신 내역이 없습니다.</p></td>
                    </tr>
                    <%} %>
                </tbody>
            </table>
        </div>
    </div>
</div>
<%@ include file = "../include/footer.jsp"%>

<script src="../../js/jquery-3.5.1.min.js"></script>
<script src="../../js/bootstrap.bundle.min.js"></script>
</body>
</html>
