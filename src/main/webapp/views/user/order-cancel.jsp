<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<!-- Basic -->

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Site Metas -->
    <title>주문서 페이지</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Site Icons -->
    <link rel="shortcut icon" href="../../images/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="../../images/apple-touch-icon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../../css/bootstrap.min.css">
    <!-- Site CSS -->
    <link rel="stylesheet" href="../../css/style.css">
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="../../css/responsive.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="../../css/custom.css">
    <link rel="stylesheet" href="../../css/search.css">
    <link rel="stylesheet" href="../../css/loginEnd.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" integrity="sha512-..." crossorigin="anonymous" />
    

</head>

<body>
    <!-- Start Main Top -->

	<%@ include file="../include/nav.jsp" %>



    <!-- Start All Title Box -->
    <div class="all-title-box">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h2>주문서</h2>
                </div>
            </div>
        </div>
    </div>
    <!-- End All Title Box -->

    <!-- Start cancel  -->
<%@ page import="com.project.user.vo.User, java.util.*"%>

<% 
    User userLogin = (User) session.getAttribute("user"); 
/*     int totalPrice = (Integer) request.getAttribute("totalPrice");
    String orderNo = (String) request.getAttribute("orderNo"); */
%>

    <div class="list-box-main">
        <div class="container">
            <div class="title-list">
                <h1>결제 취소</h1>
            </div>
            <div class="point_views_div">
                <label for="point_views">포인트 취소 금액</label>
                <input type="text" id="point_views" disabled="disabled" value="<%= request.getParameter("cancel_amount") %>">  <!-- 조회한 취소금액 -->
            </div>
            <div class="pay_text">
                ⁜ 진행시 전체 취소가 이루어집니다.<br>
                일부 상품만 구매하기를 원하신다면 재주문을 해주세요.
            </div>
            <div class="col-12 d-flex shopping-box">
                <div class="confirm_div1">
                    <form action="/order/cancelPointEnd" method="post">  <!-- 폼 제출 -->
                        <input type="hidden" name="user_no" value="<%= request.getParameter("user_no") %>">
                        <input type="hidden" name="cancel_amount" value="<%= request.getParameter("cancel_amount") %>">
                        <input type="submit" value="네">
                    </form>
                </div>
                <div class="confirm_div2">
                    <input type="button" value="아니요" onclick="window.history.back();">
                </div>
            </div>
        </div>
    </div>
</body>
</html>            
 
    <!-- End cancel -->

    <!-- Start footer  -->
	<%@ include file="../include/footer.jsp" %>

</body>

</html>