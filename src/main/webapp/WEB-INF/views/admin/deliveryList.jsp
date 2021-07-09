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

		<!-- End of Topbar -->

		<!-- Begin Page Content -->
		<div class="container-fluid">

			<!-- Page Heading -->





			<!-- Content Row -->
			<div class="row">

				<!-- Content Column -->
				<div class="col-xl-12 col-lg-12">
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-primary">��۰���</h6>
						</div>

						<div class="card-body filterBox">
							<div class="boxtr">
								<form action="${contextPath }/admin/membmer/listMembers.do"
									method="post" id="frm_search">
									<table>




										<tr>
											<td colspan="2">��� ����&nbsp;&nbsp;</td>
											<td colspan="5" class="pleft"><input type="radio"
												value="all" name="member_gender" checked>��ȸ�� <input
												type="radio" value="dog" name="member_gender">ȸ��</td>
										</tr>

										<tr>
											<td colspan="2">��� �з�&nbsp;&nbsp;</td>
											<td colspan="5" class="pleft"><select
												id="order_lately_date" name="order_lately_date">
													<option value="" selected>--��� �з� ����--</option>
													<option value="lately_login_desc">��ü</option>
													<option value="lately_login_desc">��ó��</option>
													<option value="lately_login_asc">ó��</option>
											</select> <select id="order_total_buy" name="order_total_buy">
													<option value="" selected>--��� ����--</option>
													<option value="total_buy_desc">ȯ�ҿ�û</option>
													<option value="total_buy_asc">��ǰ��û</option>
													<option value="total_buy_asc">�Ϸ�</option>
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
											<th>��۹�ȣ</th>
											<th>��ǰ�̸�</th>
											<th>�ֹ��� �̸�</th>
											<th>������ �̸�</th>
											<th>������ ��ȭ��ȣ</th>
											<th>������ �ּ�</th>
											<th>�������</th>
											<th>���ó������</th>


										</tr>
									</thead>
									<tfoot>

									</tfoot>
									<tbody>
										<tr>
											<td>Tiger Nixon</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td>61</td>
											<td>2011/04/25</td>
											<td>2011/04/25</td>
											<td>$320,800</td>
											<td><select id="delivery_state" name="delivery_state">

													<option value="delivery_not">��ó��</option>
													<option value="delivery_complete">ó���Ϸ�</option>
											</select></td>

										</tr>
										</tr>

									</tbody>
								</table>
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
