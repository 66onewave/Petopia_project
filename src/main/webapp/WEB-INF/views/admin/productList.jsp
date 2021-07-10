<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

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
							<h6 class="m-0 font-weight-bold text-primary">��ǰ����</h6>
						</div>

						<div class="card-body filterBox">
							<div class="boxtr">
								<form action="${contextPath }/admin/product" method="post" id="frm_search" >
								
									<table>




										<tr >
											<td colspan="2">��ǰ ����&nbsp;&nbsp;</td>
											<td class= "head" colspan="5" class="pleft">
											<input type="radio" value="1" name="product_category_id"checked>1.���
											<input type="radio" value="2" name="product_category_id" >2.����
											<input type="radio" value="3" name="product_category_id">3.����/�躯
											<input type="radio" value="4" name="product_category_id">4.�̿�/���
											<input type="radio" value="5" name="product_category_id">5.�޽�/�޽���
											<input type="radio" value="6" name="product_category_id">6.�峭��/�Ʒ�
											<input type="radio" value="7" name="product_category_id">7.�Ͽ콺/�̵���
											<input type="radio" value="8" name="product_category_id">8.�м�/�Ƿ�
											<input type="radio" value="9" name="product_category_id">9.����/�ϳ׽�	

											</td>
										</tr>

										<tr>
											<td colspan="2">�ֹ� �з�&nbsp;&nbsp;</td>
											<td colspan="5" class="pleft">
											<select id="select1" name="product_price">
													<option value="" selected>--����--</option>
													<option value="product_price_asc">���� ���� ��</option>
													<option value="product_price_desc">���� ���� ��</option>
											</select> 
											<select id="select2" name="product_stock">
													<option value="" selected>--���--</option>
													<option value="stock_asc">��� ���� ��</option>
													<option value="stock_desc">��� ���� ��</option>
											</select></td>
										</tr>



										<tr>
											<td colspan="7"><input type="button" value="�˻�"
												id="search_option" />&nbsp;&nbsp;
												<input type="reset" value="�ʱ�ȭ" /></td>
												
										</tr>
									</table>
								</form>
							</div>
						</div>

						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable" width="100%"
									cellspacing="0">
									<thead>
										<tr>

											<th>��ǰ��ȣ</th>
											<th>��ǰ��</th>
											<th>��ǰ�з�</th>
											<th>����</th>
											<th>���</th>

										</tr>
									</thead>
							
								<c:forEach var='p' items="${productList}">
									<tbody>
										<tr>
											<td>${p.product_idx }</td>
											<td>${p.product_name }</td>
											<td>${p.product_category_id }</td>
											<td>${p.product_price }</td>
											<td>${p.product_stock }</td>



										</tr>
										
									</tbody>
								</c:forEach>
								</table>
							</div>
							<form id='pageActionForm' action="/admin/product" method='get'>
												<input type='hidden' name='pageNum'
													value='${pageMaker.cri.pageNum}' /> <input type='hidden'
													name='amount' value='${pageMaker.cri.amount}' />
							</form>
						</div>
						<input type="hidden" id="size" value="${fn:length(list)}" />
						<div class="row">
							<div class="col-sm-12 col-md-5 paginationdiv">
								<div class="d-none d-md-block page-div">
									<ul class="pagination justify-content-center">
										<li class="page-item"><c:if test="${pageMaker.prev}">
												<li class="page-item"><a
													href="${pageMaker.startPage-1}" class="page-link">����</a></li>
											</c:if></li>
										<c:forEach var="num" begin="${pageMaker.startPage}"
											end="${pageMaker.endPage }">
											<li
												class='page-item numberitem ${pageMaker.cri.pageNum == num ? "active" : "" }'><a
												href="${num}" class="page-link">${num}</a></li>
										</c:forEach>

										<c:if test="${pageMaker.next}">
											<li class="page-item"><a href="${pageMaker.endPage +1}"
												class="page-link">����</a></li>
										</c:if>

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
	
	<script type="text/javascript">
	$(document).ready(
			function() {

				// ����¡ ��ư �̺�Ʈ
				var actionForm = $("#pageActionForm");

				$(".numberitem a").on(
						"click",
						function(e) {

							e.preventDefault();

							console.log('click');

							actionForm.find("input[name='pageNum']").val(
									$(this).attr("href"));
							actionForm.submit();
						});
						
				//���͹ڽ� ���� �̺�Ʈ
				$('.filterBox').on('change', function(event) {
				    if ($(event.target)[0].tagName === 'SELECT') {
				    	var select1 = $('#select1').val();
				    	var select2 = $('#select2').val();
				    
				    }
				});


			});
	

	</script>	

		<c:import url="/WEB-INF/views/include/admin_list_js.jsp" />

</body>

</html>
