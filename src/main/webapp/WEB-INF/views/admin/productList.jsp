<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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


		<!-- 좌측 네비게이션 바 -->
		<c:import url="/WEB-INF/views/include/admin_left_side_bar.jsp" />



		<!-- 상단 메뉴 바 -->
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
							<h6 class="m-0 font-weight-bold text-primary">상품관리</h6>
						</div>

						<div class="card-body filterBox">
							<div class="boxtr">
								<form action="${contextPath }admin/product" method="post"
									id="frm_search">

									<table>




										<tr>
											<td colspan="2">상품 구분&nbsp;&nbsp;</td>
											<td class="head" colspan="5" class="pleft"><input
												type="radio" value="1" name="product_category_id" checked>1.사료
												<input type="radio" value="2" name="product_category_id">2.간식
												<input type="radio" value="3" name="product_category_id">3.위생/배변
												<input type="radio" value="4" name="product_category_id">4.미용/목욕
												<input type="radio" value="5" name="product_category_id">5.급식기/급수기
												<input type="radio" value="6" name="product_category_id">6.장난감/훈련
												<input type="radio" value="7" name="product_category_id">7.하우스/이동장
												<input type="radio" value="8" name="product_category_id">8.패션/의류
												<input type="radio" value="9" name="product_category_id">9.목줄/하네스

											</td>
										</tr>

										<tr>
											<td colspan="2">주문 분류&nbsp;&nbsp;</td>
											<td colspan="5" class="pleft"><select id="select1"
												name="product_price">
													<option value="" selected>--가격--</option>
													<option value="product_price_asc">가격 낮은 순</option>
													<option value="product_price_desc">가격 높은 순</option>
											</select> <select id="select2" name="product_stock">
													<option value="" selected>--재고량--</option>
													<option value="stock_asc">재고량 적은 순</option>
													<option value="stock_desc">재고량 많은 순</option>
											</select></td>
										</tr>



										<tr>
											<td colspan="7"><input type="button" value="검색"
												id="search_option" />&nbsp;&nbsp; <input type="reset"
												value="초기화" /></td>

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

											<th>상품번호</th>
											<th>상품명</th>
											<th>상품분류</th>
											<th>가격</th>
											<th>재고량</th>
											<th>상세보기</th>

										</tr>
									</thead>

									<c:forEach var='p' items="${productList}">
										<tbody>
											<tr>
												<td><a
													href="${root}admin/getProduct?product_idx=${p.product_idx}">${p.product_idx }</a></td>
												<td>${p.product_name }</td>
												<td>${p.product_category_id }</td>
												<td>${p.product_price }</td>
												<td>${p.product_stock }</td>
												<td align="center" width="120px">
													<button type="button" class="btn btn-info"
														data-toggle="modal" data-target="#myModal">
														상세보기</button>
												</td>



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
													href="${pageMaker.startPage-1}" class="page-link">이전</a></li>
											</c:if></li>
										<c:forEach var="num" begin="${pageMaker.startPage}"
											end="${pageMaker.endPage }">
											<li
												class='page-item numberitem ${pageMaker.cri.pageNum == num ? "active" : "" }'><a
												href="${num}" class="page-link">${num}</a></li>
										</c:forEach>

										<c:if test="${pageMaker.next}">
											<li class="page-item"><a href="${pageMaker.endPage +1}"
												class="page-link">다음</a></li>
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
	<!-- Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">Modal title</h4>
				</div>
				<div class="modal-body">
					<form>
						<div class="form-group">
							<label for="recipient-name" class="control-label">Recipient:</label>
							<input type="text" class="form-control" id="recipient-name">
						</div>
						<div class="form-group">
							<label for="message-text" class="control-label">Message:</label>
							<textarea class="form-control" id="message-text"></textarea>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary">Save changes</button>
				</div>
			</div>
		</div>
	</div>

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
						<span aria-hidden="true">×</span>
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



		<!-- Modal -->
		<div class="modal fade" id="myInfoModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">REPLY MODAL</h4>
					</div>
					<div class="modal-body">처리 되었습니다.</div>
					<div class="modal-footer">
						<button id='modalCloseBtn' type="button" class="btn btn-default">Close</button>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>
		<!-- /.modal -->
	</div>


	<!-- Button trigger modal -->




	<script type="text/javascript">
	
	$(document).ready(
			
			
			$('.modal-content').resizable({
			      //alsoResize: ".modal-dialog",
			      minHeight: 300,
			      minWidth: 300
			    });
			    $('.modal-dialog').draggable();

			    $('#myModal').on('show.bs.modal', function() {
			      $(this).find('.modal-body').css({
			        'max-height': '100%'
			      });
			    });
			
			
			function() {
				
				 var product_idx = '<c:out value="${productVO.product_idx}"/>';
				    
				    /* $.getJSON("/board/getAttachList", {bno: bno}, function(arr){
				    
				      console.log(arr);
				      
				      
				    }); *///end getjson
				    $.getJSON("/admin/getAttachList", {product_idx: product_idx}, function(arr){
				        
				       console.log(arr);
				       
				       var str = "";
				       
				       $(arr).each(function(i, attach){
				       
				         //image type
				         if(attach.fileType){
				           var fileCallPath =  encodeURIComponent( attach.uploadPath+ "/s_"+attach.uuid +"_"+attach.fileName);
				           
				           str += "<li data-path='"+attach.uploadPath+"' data-uuid='"+attach.uuid+"' data-filename='"+attach.fileName+"' data-type='"+attach.fileType+"' ><div>";
				           str += "<img src='/display?fileName="+fileCallPath+"'>";
				           str += "</div>";
				           str +"</li>";
				         }else{
				             
				           str += "<li data-path='"+attach.uploadPath+"' data-uuid='"+attach.uuid+"' data-filename='"+attach.fileName+"' data-type='"+attach.fileType+"' ><div>";
				           str += "<span> "+ attach.fileName+"</span><br/>";
				           str += "<img src='/resources/img/attach.png'></a>";
				           str += "</div>";
				           str +"</li>";
				         }
				       });
				       
				       $(".uploadResult ul").html(str);
				       
				       
				     });//end getjson
				
				//modal
				//checkModal(result);
				
			/* 	function checkModal(result){
					
					if(result === '' ){
						return;
					}
					if(parseInt(result) > 0 ){
						
						$(".modal-body").html("게시글 " + parseInt(result) + "번이 등록되었습니다.")
					}
					
					$("#myModal").modal("show");
				
				
				};
				//modal end */
				
				
				// 페이징 버튼 이벤트
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
				
				//필터박스 이벤트
					$('#frm_search').children().children().children('tr')
					.children().children('#search_option').on('click', function(event) {
					
				    	var product_price = $('#select1').val();
				    	var product_stock = $('#select2').val();
				    	console.log($('#dataTable').html());
				    	console.log($('#select1').val());
				    	console.log($('#select2').val());
				    	
				    	var options = {
				    		product_price : product_price,
				    		product_stock : product_stock
				    	}
						
				    	$.ajax({
			    			type: 'post',
			    			url: '/admin/product',
			    			cache: false,
			    			data: JSON.stringify(options),
			    			contentType: "application/json; charset=utf-8",
			    			dataType: 'json',
			    			success: function(list, status) {
			    				
			    			  	var htmls = "";
								
								$("#dataTable").html("");
								
								$("<tr>" , {
									html : "<td>" + "상품번호" + "</td>"+  // 컬럼명들
											"<td>" + "상품명" + "</td>"+
											"<td>" + "상품분류" + "</td>"+
											"<td>" + "가격" + "</td>"+				
											"<td>" + "재고량" + "</td>"
											
								}).appendTo("#dataTable") // 이것을 테이블에붙임
								
								if(list.length < 1){
									htmls.push("등록된 상품이 없습니다.");
								} else {
									
									$(list).each(function(){
										console.log(this.product_idx);
					                    htmls += '<tr>';
					                    htmls += '<td>'+ this.product_idx + '</td>';
					                    htmls += '<td>'+ this.product_name + '</td>';
						                htmls += '<td>'+ this.product_category_id + '</td>'; 
					                    htmls += '<td>'+ this.product_price + '</td>';
					                    htmls += '<td>'+ this.product_stock + '</td>';	
					                    htmls += '</tr>';
									
				                	});	//each end

									
								}
								$("#dataTable").append(htmls);
			    			  },
			    			     error:function(request,status,error){
			    			         alert("code = "+ request.status + " message = " + request.responseText + " error = " + error); // 실패 시 처리
			    			        }
			    		});
				    	
				    	
					});
				
					  $(".uploadResult").on("click", "button", function(e) {

				            console.log("delete file");

				            var targetFile = $(this).data("file");
				            var type = $(this).data("type");

				            var targetLi = $(this).closest("li");

				            $.ajax({
				                url: '/deleteFile',
				                data: {
				                    fileName: targetFile,
				                    type: type
				                },
				                dataType: 'text',
				                type: 'POST',
				                success: function(result) {
				                    alert(result);
				                    targetLi.remove();
				                    $("#uploadInput").val("");
				                }
				            });
				            // $.ajax
				        });

			
				
				});
	

	</script>

	<c:import url="/WEB-INF/views/include/admin_list_js.jsp" />

</body>

</html>
