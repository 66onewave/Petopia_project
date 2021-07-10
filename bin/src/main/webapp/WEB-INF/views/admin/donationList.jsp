<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html lang="ko">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Petopia - Admin</title>

<c:import url="/WEB-INF/views/include/admin_list_css.jsp" />

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
							<h6 class="m-0 font-weight-bold text-primary">��γ��� ����</h6>
						</div>

						<div class="card-body filterBox">
							<div class="boxtr">
								<form action="${contextPath }/admin/membmer/listMembers.do"
									method="post" id="frm_search">
									<table>




										<tr>
											<td colspan="2">ó�� ����&nbsp;&nbsp;</td>
											<td colspan="5" class="pleft"><input type="radio"
												value="cat" name="member_gender">��ó�� <input
												type="radio" value="all" name="member_gender" checked>ó��


											</td>
										</tr>

										<tr>
											<td colspan="2">��� �з�&nbsp;&nbsp;</td>
											<td colspan="5" class="pleft"><select
												id="donation_date_year" name="donation_date_year">
													<option value="" selected>--��γ��� �⵵ ����--</option>
													<option value="donation_year">2021</option>
													<option value="donation_year">2020</option>
													<option value="donation_year">2019</option>
													<option value="donation_year">2018</option>
													<option value="donation_year">2017</option>


											</select> <select id="donation_date_month" name="donation_date_month">
													<option value="" selected>--��γ��� �� ����--</option>
													<option value="donation_month">1��</option>
													<option value="donation_month">2��</option>
													<option value="donation_month">3��</option>
													<option value="donation_month">4��</option>
													<option value="donation_month">5��</option>
													<option value="donation_month">6��</option>
													<option value="donation_month">7��</option>
													<option value="donation_month">8��</option>
													<option value="donation_month">9��</option>
													<option value="donation_month">10��</option>
													<option value="donation_month">11��</option>
													<option value="donation_month">12��</option>

											</select> <select id="donation_date_today" name="donation_date_today">
													<option value="" selected>--�������--</option>

													<option value="donation_today">���� ��� ����</option>

											</select></td>
										</tr>



										<tr>
											<td colspan="7"><input type="button" value="�˻�"
												onClick="member_search()" />&nbsp;&nbsp;<input type="reset"
												value="�ʱ�ȭ" /></td>
										</tr>
									</table>
							</div>
						</div>
						</form>

						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable" width="100%"
									cellspacing="0">
									<thead>
										<tr>


											<th>��ó����α�</th>
											<th>����</th>
											<th>ó������</th>

										</tr>
									</thead>
									<tfoot>

									</tfoot>
									<tbody>
										<tr>
											<td>1</td>
											<td>ab1233</td>
											<td><select id="qna_state" name="qna_state">

													<option value="qna_not">��ó��</option>
													<option value="qna_complete">ó���Ϸ�</option>
											</select></td>


										</tr>
										</tr>

									</tbody>
								</table>
							</div>
						</div>

						<ul class="pagination justify-content-center">
							<li class="page-item"><a href="#" class="page-link">����</a></li>
							<li class="page-item"><a href="#" class="page-link">1</a></li>
							<li class="page-item"><a href="#" class="page-link">2</a></li>
							<li class="page-item"><a href="#" class="page-link">3</a></li>
							<li class="page-item"><a href="#" class="page-link">4</a></li>
							<li class="page-item"><a href="#" class="page-link">5</a></li>
							<li class="page-item"><a href="#" class="page-link">6</a></li>
							<li class="page-item"><a href="#" class="page-link">7</a></li>
							<li class="page-item"><a href="#" class="page-link">8</a></li>
							<li class="page-item"><a href="#" class="page-link">9</a></li>
							<li class="page-item"><a href="#" class="page-link">10</a></li>
							<li class="page-item"><a href="#" class="page-link">����</a></li>
						</ul>
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
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

	<!-- Logout Modal-->
	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">��</span>
					</button>
				</div>
				<div class="modal-body">Select "Logout" below if you are ready
					to end your current session.</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">Cancel</button>
					<a class="btn btn-primary" href="login.html">Logout</a>
				</div>
			</div>
		</div>
	</div>

		<c:import url="/WEB-INF/views/include/admin_list_js.jsp" />

</body>

</html>
