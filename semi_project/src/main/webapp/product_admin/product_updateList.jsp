<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>제품 등록</title>
    <meta
      content="width=device-width, initial-scale=1.0, shrink-to-fit=no"
      name="viewport"
    />
    <link
      rel="icon"
      href="../assets/img/kaiadmin/favicon.ico"
      type="image/x-icon"
    />

    <!-- Fonts and icons -->
    <script src="../assets/js/plugin/webfont/webfont.min.js"></script>
    <script>
      WebFont.load({
        google: { families: ["Public Sans:300,400,500,600,700"] },
        custom: {
          families: [
            "Font Awesome 5 Solid",
            "Font Awesome 5 Regular",
            "Font Awesome 5 Brands",
            "simple-line-icons",
          ],
          urls: ["../assets/css/fonts.min.css"],
        },
        active: function () {
          sessionStorage.fonts = true;
        },
      });
    </script>

    <!-- CSS Files -->
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="../assets/css/plugins.min.css" />
    <link rel="stylesheet" href="../assets/css/kaiadmin.min.css" />

    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link rel="stylesheet" href="../assets/css/demo.css" />
  </head>
  <body>
    <div class="wrapper">
      <!-- Sidebar -->
      <div class="sidebar" data-background-color="dark">
        <div class="sidebar-logo">
          <!-- Logo Header -->
          <div class="logo-header" data-background-color="dark">
            <a href="../index.jsp" class="logo">
              <img
                src="../assets/img/kaiadmin/logo_light.svg"
                alt="navbar brand"
                class="navbar-brand"
                height="20"
              />
            </a>
            <div class="nav-toggle">
              <button class="btn btn-toggle toggle-sidebar">
                <i class="gg-menu-right"></i>
              </button>
              <button class="btn btn-toggle sidenav-toggler">
                <i class="gg-menu-left"></i>
              </button>
            </div>
            <button class="topbar-toggler more">
              <i class="gg-more-vertical-alt"></i>
            </button>
          </div>
          <!-- End Logo Header -->
        </div>
        <div class="sidebar-wrapper scrollbar scrollbar-inner">
          <div class="sidebar-content">
            <ul class="nav nav-secondary">
              <li class="nav-section">
                <span class="sidebar-mini-icon">
                  <i class="fa fa-ellipsis-h"></i>
                </span>
                <h4 class="text-section">작업목록</h4>
              </li>
              <li class="nav-item active submenu">
                <a data-bs-toggle="collapse" href="#product_admin">
                  <i class="fas fa-table"></i>
                  <p>상품관리</p>
                  <span class="caret"></span>
                </a>
                <div class="collapse" id="product_admin">
                  <ul class="nav nav-collapse">
                    <li>
                      <a href="../product_admin/product_add.jsp">
                        <span class="sub-item">제품 등록</span>
                      </a>
                    </li>
                    <li>
                      <a href="../product_admin/product_update.jsp">
                        <span class="sub-item">제품 수정</span>
                      </a>
                    </li>
                    <li>
                      <a href="../product_admin/datatables.jsp">
                        <span class="sub-item">재고 입고</span>
                      </a>
                    </li>
                    <li>
                      <a href="../product_admin/datatables.jsp">
                        <span class="sub-item">제품 삭제</span>
                      </a>
                    </li>
                  </ul>
                </div>
              </li>
               <li class="nav-item">
                <a data-bs-toggle="collapse" href="#order_admin">
                  <i class="fas fa-table"></i>
                  <p>주문내역 관리</p>
                  <span class="caret"></span>
                </a>
                <div class="collapse" id="order_admin">
                  <ul class="nav nav-collapse">
                    <li>
                      <a href="../product_admin/datatables.jsp">
                        <span class="sub-item">판매량 확인</span>
                      </a>
                    </li>
                    <li>
                      <a href="../product_admin/datatables.jsp">
                        <span class="sub-item">주문내역 확인</span>
                      </a>
                    </li>
                  </ul>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </div>
      <!-- End Sidebar -->

      <div class="main-panel">
        <div class="main-header">
          <div class="main-header-logo">
            <!-- Logo Header -->
            <div class="logo-header" data-background-color="dark">
              <a href="../index.jsp" class="logo">
                <img
                  src="../assets/img/kaiadmin/logo_light.svg"
                  alt="navbar brand"
                  class="navbar-brand"
                  height="20"
                />
              </a>
              <div class="nav-toggle">
                <button class="btn btn-toggle toggle-sidebar">
                  <i class="gg-menu-right"></i>
                </button>
                <button class="btn btn-toggle sidenav-toggler">
                  <i class="gg-menu-left"></i>
                </button>
              </div>
              <button class="topbar-toggler more">
                <i class="gg-more-vertical-alt"></i>
              </button>
            </div>
            <!-- End Logo Header -->
          </div>
        </div>

        <div class="container">
          <div class="page-inner">
            <div class="page-header">
              <h3 class="fw-bold mb-3">상품 수정</h3>
            </div>
            <div class="row">
              <div class="col-md-12">
                <div class="card">
                  <div class="card-body">
                    <!-- Modal -->
                    <div class="table-responsive">
                      <table
                        id="add-row"
                        class="display table table-striped table-hover"
                      >
                        <thead>
                          <tr>
                          	<th>상품 이미지</th>
                            <th>상품명</th>
                            <th>상품 가격</th>
                            <th>상품 설명</th>
                            <th style="width: 10%">Action</th>
                          </tr>
                        </thead>
                        <tbody>
                        <form action=""></form>
                        <%@page import="com.gn.product_admin.vo.Product_admin, java.util.*" %>
                            <%
                            	List<Product_admin> list = (List<Product_admin>)request.getAttribute("resultList");
                            	for(int i = 0; i < list.size(); i++){%>
                            		<tr>
                            		<form action='/product_admin/productUpdate' method='post' enctype="multipart/form-data" name="modify_productUpdate_form">
                            			<input type="hidden" name="product_no" value="<%= list.get(i).getProd_no()%>">
                            			<td><%=list.get(i).getProd_revise_image()%></td>
                            			<td><%=list.get(i).getProd_name() %></td>
                            			<td><%=list.get(i).getProd_price() %></td>
                            			<td><%=list.get(i).getProd_info() %></td>
                            			<td><input type="submit" class="btn btn-success" value="수정" onclick='productUpdateForm();'></td>
                            		</form>
                            		</tr>
                            	
                            	<%}%>
                            	<script>
                            		function productUpdateForm(){
                            			const form = document.modify_productUpdate_form;
                            			form.submit();
                            		}
                            	</script>
                        </tbody>
                        
                      </table>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

        <footer class="footer">
          <div class="container-fluid d-flex justify-content-between">
            <nav class="pull-left">
              <ul class="nav">
                <li class="nav-item">
                  <a class="nav-link" href="http://www.themekita.com">
                    ThemeKita
                  </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#"> Help </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#"> Licenses </a>
                </li>
              </ul>
            </nav>
            <div class="copyright">
              2024, made with <i class="fa fa-heart heart text-danger"></i> by
              <a href="http://www.themekita.com">ThemeKita</a>
            </div>
            <div>
              Distributed by
              <a target="_blank" href="https://themewagon.com/">ThemeWagon</a>.
            </div>
          </div>
        </footer>
      </div>
    </div>
    <!--   Core JS Files   -->
    <script src="../assets/js/core/jquery-3.7.1.min.js"></script>
    <script src="../assets/js/core/popper.min.js"></script>
    <script src="../assets/js/core/bootstrap.min.js"></script>

    <!-- jQuery Scrollbar -->
    <script src="../assets/js/plugin/jquery-scrollbar/jquery.scrollbar.min.js"></script>
    <!-- Datatables -->
    <script src="../assets/js/plugin/datatables/datatables.min.js"></script>
    <!-- Kaiadmin JS -->
    <script src="../assets/js/kaiadmin.min.js"></script>
    <!-- Kaiadmin DEMO methods, don't include it in your project! -->
    <script src="../assets/js/setting-demo2.js"></script>
    <script>
      $(document).ready(function () {
        $("#basic-datatables").DataTable({});

        $("#multi-filter-select").DataTable({
          pageLength: 5,
          initComplete: function () {
            this.api()
              .columns()
              .every(function () {
                var column = this;
                var select = $(
                  '<select class="form-select"><option value=""></option></select>'
                )
                  .appendTo($(column.footer()).empty())
                  .on("change", function () {
                    var val = $.fn.dataTable.util.escapeRegex($(this).val());

                    column
                      .search(val ? "^" + val + "$" : "", true, false)
                      .draw();
                  });

                column
                  .data()
                  .unique()
                  .sort()
                  .each(function (d, j) {
                    select.append(
                      '<option value="' + d + '">' + d + "</option>"
                    );
                  });
              });
          },
        });

        // Add Row
        $("#add-row").DataTable({
          pageLength: 5,
        });

        var action =
          '<td> <div class="form-button-action"> <button type="button" data-bs-toggle="tooltip" title="" class="btn btn-link btn-primary btn-lg" data-original-title="Edit Task"> <i class="fa fa-edit"></i> </button> <button type="button" data-bs-toggle="tooltip" title="" class="btn btn-link btn-danger" data-original-title="Remove"> <i class="fa fa-times"></i> </button> </div> </td>';

        $("#addRowButton").click(function () {
          $("#add-row")
            .dataTable()
            .fnAddData([
              $("#addName").val(),
              $("#addPosition").val(),
              $("#addOffice").val(),
              action,
            ]);
          $("#addRowModal").modal("hide");
        });
      });	
    </script>
    <script>
    	
    </script>
  </body>
</html>
