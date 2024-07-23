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
    <title>주문 오류</title>
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
                    <h2>주문 오류</h2>
                </div>
            </div>
        </div>
    </div>
    <!-- End All Title Box -->
   <!-- Start -->
        <div class="list-box-main">
        <div class="container">
                        <div class="title-list">
                            <h1>결제 포인트 부족</h1>
                <div class="pay_text">결제 포인트가 부족하여 주문을 완료하지 못했습니다.<br>
										포인트 내역을 확인해주세요.<br>
										이용해주셔서 감사합니다.</div>
				<hr class="pay_hr">
                        </div>
                <div class="col-sm-6 col-lg-6 mb-3">
                <div class="col-12 d-flex shopping-box">
                       		 <div class="list_aTag1">
							<a href="/views/user/loginEnd_index.jsp" class="ml-auto btn hvr-hover">메인 홈으로 이동하기</a>
							</div>
							<div class="list_aTag2">
                        	<a href="/MyPage/Point" class="ml-auto btn hvr-hover">마이페이지로 이동하기</a>
                        	</div>
                        </div>
              	</div>
              	</div>
              	</div>

    <!-- End -->

    <!-- Start footer  -->
	<%@ include file="../include/footer.jsp" %>

</body>

</html>