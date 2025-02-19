<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<!DOCTYPE html>
<html>
<head>
<title>취소/교환/반품조회</title>
<!-- Bootstrap CDN -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
<%@include file="../include/default_css.jsp"%>


<style type="text/css">

footer {
 
   position:absolute;
   bottom:0;
width: 100%;
  color: white;
}
.board {
	margin-left: 230px;
	padding-right: 10px;
	padding-top: 0px;
}

.boardbody {
	padding-top: 3px;
	margin-left: 10px;
	padding-right: 20px;
}

.card-title {
	
}
</style>
</head>
<body>
	<header>
		<%@include file="../include/default_header.jsp"%>
	</header>




	<!-- 게시글 리스트 -->
	<div class="container col-10 board" style="margin-top: 120px">
		<div class="col-2">
			<%@include file="../include/default_sidebar.jsp"%>
		</div>
		<div class="card-body boardbody">
			<h4 class="card-title">${board_name}</h4>
			<table class="table table-hover" id=''>
				<thead>
					<tr>
					<th scope="col">상품정보</th>
					<th scope="col">주문일자</th>
					<th scope="col">주문번호</th>
					<th scope="col">주문금액(수량)</th>
					<th scope="col" colspan="2">주문 상태</th>				
					</tr>
				</thead>
				<tbody>
					<c:forEach var='obj' items="${contentList }">
						<tr>
							<td class="text-center d-none d-md-table-cell">${obj.content_date}</td>
							<td class="text-center d-none d-md-table-cell">${obj.content_idx}</td>
							<td><a href='/notice/get?board_id=1&content_idx=${obj.content_idx}'>${obj.content_title}</a></td>
							<td class="text-center d-none d-md-table-cell">관리자</td>
							
						</tr>
					</c:forEach>
				</tbody>
			</table>

	
			<input type="hidden" id="size" value="${fn:length(contentList)}" />
			<div class="row">
				<div class="col-sm-12 col-md-5 paginationdiv">
					<div id="masterDiv" class="d-none d-md-block page-div">
						<ul class="pagination justify-content-center">
							<li class="page-item"><c:if test="${pageMaker.prev}">
									<li class="page-item"><a href="${root }notice?board_id=${board_id}&pageNum=${(pageMaker.startPage - 1)}&amount=${pageMaker.cri.amount}"
										class="page-link">이전</a></li>
								</c:if></li>
							<c:forEach var="num" begin="${pageMaker.startPage}"
								end="${pageMaker.endPage }">
								<li
									class='page-item numberitem ${pageMaker.cri.pageNum == num ? "active" : "" }'><a
									href="${root }notice?board_id=${board_id}&pageNum=${num}&amount=${pageMaker.cri.amount}" class="page-link">${num}</a></li>
							</c:forEach>

							<c:if test="${pageMaker.next}">
								<li class="page-item"><a href="${root }notice?board_id=${board_id}&pageNum=${(pageMaker.endPage +1)}&amount=${pageMaker.cri.amount}"
									class="page-link">다음</a></li>
							</c:if>
						</ul>
					</div>
				</div>
			</div>
		<sec:authorize access="hasRole('ROLE_USER')">
			 <div class="text-right">
				<a href="${root}/notice/register?board_id=1" class="btn btn-defalut">글작성</a>
			</div> 
			</sec:authorize>

		</div>
	</div>
	<footer>
		<%@include file="../include/default_footer.jsp"%>
	</footer>

	<%@include file="../include/default_sidebar_js.jsp"%>

	<script type="text/javascript">
		$(document).ready(function() {
			
			// 페이징 버튼 이벤트
			var actionForm = $("#pageActionForm");
			
			

	
		
		});
		
	</script>
</body>
</html>






