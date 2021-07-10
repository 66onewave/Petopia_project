<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<c:set var='root' value="${pageContext.request.contextPath }/" />    
<!DOCTYPE html>
<html lang="ko">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Petopia - Admin</title>

  <!-- Custom fonts for this template-->
  <link href="/petopia/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="/petopia/vendor/boorstrap/css/bootstrap.min.css"></link>
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
  <link href="/petopia/css/list.css" rel="stylesheet"></link>
  <!-- Custom styles for this template-->
  <link href="/petopia/css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">



      	<!-- ���� �׺���̼� �� -->
		<c:import url="/WEB-INF/views/include/admin_left_side_bar.jsp" />



		<!-- ��� �޴� �� -->
		<c:import url="/WEB-INF/views/include/admin_top_menu.jsp" />

        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->





          <!-- Content Row -->
          <div class="row">

            <!-- Content Column -->
            <div class="col-xl-12 col-lg-12">
              <div class="card shadow mb-4">
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary">��������</h6>
                </div>

            <div class="frameBox">


                </div>

                <div class="card-body">
                  <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                      <thead>
                        <tr>
                          <th>���̵�</th>
                          <th>�̸�</th>
                          <th>��ȭ��ȣ</th>
                          <th>�ּ�</th>
                          <th>�̸���</th>
                          <th>��������</th>
                          <th>���</th>
                          <th>����Ʈ</th>
                          <th>��ξ�</th>
                     
                        </tr>
                      </thead>
                      <tfoot>

                      </tfoot>
                      <tbody>
                      
                      	<c:forEach var='m' items="${memberList}">
							<tr>
							<td>${m.member_id}</td>
                          <td>${m.member_name}</td>
                          <td>${m.member_phoneNumber}</td>
                          <td>${m.member_address}</td>
                          <td>${m.member_email}</td>
                          <td>${m.member_joindate}</td>
                          <td>${m.member_grade}</td>
                          <td>${m.member_point}</td>
                          <td>${m.member_donation}</td>

							</tr>
						</c:forEach>
                        
                  

                      </tbody>
                    </table>
                  </div>
                </div>

                <div class="row">
                  <div class="col-sm-12 col-md-5 paginationdiv">
                    <div class="d-none d-md-block page-div">
                      <ul class="pagination justify-content-center">
                        <li class="page-item">
                          <a href="#" class="page-link">����</a>
                        </li>
                        <li class="page-item">
                          <a href="#" class="page-link">1</a>
                        </li>
                        <li class="page-item">
                          <a href="#" class="page-link">2</a>
                        </li>
                        <li class="page-item">
                          <a href="#" class="page-link">3</a>
                        </li>
                        <li class="page-item">
                          <a href="#" class="page-link">4</a>
                        </li>
                        <li class="page-item">
                          <a href="#" class="page-link">5</a>
                        </li>
                        <li class="page-item">
                          <a href="#" class="page-link">6</a>
                        </li>
                        <li class="page-item">
                          <a href="#" class="page-link">7</a>
                        </li>
                        <li class="page-item">
                          <a href="#" class="page-link">8</a>
                        </li>
                        <li class="page-item">
                          <a href="#" class="page-link">9</a>
                        </li>
                        <li class="page-item">
                          <a href="#" class="page-link">10</a>
                        </li>
                        <li class="page-item">
                          <a href="#" class="page-link">����</a>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

      <!-- Footer -->
      <footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright &copy; Your Website 2021</span>
          </div>
        </div>
      </footer>
      <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">��</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-primary" href="login.html">Logout</a>
        </div>
      </div>
    </div>
  </div>

  	<c:import url="/WEB-INF/views/include/admin_list_js.jsp" />

</body>

</html>
