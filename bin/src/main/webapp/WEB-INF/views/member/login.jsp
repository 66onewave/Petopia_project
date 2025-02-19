<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=decice-width" initial-scale="1">
<title>Login</title>
<!-- CSS here -->
<link rel="stylesheet" href="/petopia/css/login_style.css">
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<!-- default_css -->
<%@include file="../include/default_css.jsp"%>
</head>

<body>
	<header>
		<%@include file="../include/default_header.jsp"%>
	</header>

	<main>
		<div class="container">
			<div class="login-form">
				<form action="/loginProcess" method="POST">
					<h1>로그인</h1>
					<div class="form-group">
						<input type="text" name="member_id" placeholder="아이디"> <span
							class="input-icon"><i class="fa fa-user-circle"
							aria-hidden="true"></i></span>
					</div>
					<div class="form-group">
						<input type="password" name="member_password" placeholder="비밀번호"> <span
							class="input-icon"><i class="fa fa-lock"></i></span>
					</div>
					<button id ="login-button" class="login-btn" type="submit" name="submit">로그인</button>
					<div class="reset-group">
						<a class="reset-id" href="#">아이디찾기</a> <a class="reset-psw"
							href="#">비밀번호찾기</a> <a class="sign-up" href="joinAgree">회원가입</a>
					</div>
					
					<div class="seperator">
						<b>or</b>
					</div>
					
					<p>SNS 간편 로그인</p>
					<!-- Social login buttons -->
					<div class="social-icon">
						<button class="naver" type="button"></button>
						<a href="https://kauth.kakao.com/oauth/authorize?client_id=ff1341405313f721c279ce5cd541bf40&redirect_uri=http://localhost:8282/kakao/callback&response_type=code">
						<button class="kakao" type="button"></button></a>
					</div>
					
					<div class="seperator">
						<b>or</b>
					</div>
					
					<h3>비회원 로그인</h3>
					<div class="form-group">
						<input type="text" name="user_name" placeholder="주문고객"> 
						<span class="input-icon"><i class="fa fa-user-circle"aria-hidden="true"></i></span>
					</div>
					<div class="form-group">
						<input type="password" name="order_idx" placeholder="주문번호"> 
						<span class="input-icon"><i class="fa fa-lock"></i></span>
					</div>
					<button id ="user-login-button" class="login-btn" type="submit" name="submit">로그인</button>
				
				</form>
			</div>
		</div>
	</main>

	<footer>
		<%@include file="../include/default_footer.jsp"%>
	</footer>

<script type="text/javascript">
$(function(){
	$("#login-button").click(function(){
		login();
	})		
})

/**
* 로그인 
*/

	
</script>

</body>
</html>