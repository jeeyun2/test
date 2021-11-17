<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>하이펫스</title>
<script>
function login() {
	if (form.userId.value == "") {
		alert("사용자 ID를 입력하십시오.");
		form.userId.focus();
		return false;
	} 
	if (form.password.value == "") {
		alert("비밀번호를 입력하십시오.");
		form.password.focus();
		return false;
	}		
	form.submit();
}

function customerCreate(targetUri) {
	form.action = targetUri;
	form.method="GET";		// register form 요청
	form.submit();
}
</script>
<style>
	header {
		font-family: Verdana, Geneva, Tahoma, sans-serif;
	}
	
	p {
		text-align: center;
		margin-bottom: 30px;
		font-size: 14px;
	}
	
	div {
		margin-bottom: 80px;
	}
	
	h1 {
		margin: 40px 0;
		font-size: 40px;
	}
	
	.login {
		text-align: right;
		padding: 20px;
	}
	
	h4 {
		text-align: right;
		padding-right: 100px;
	}
	
	h3 {
		text-align: center;
	}
	
	.text1 {
		margin: top 200px;
	}
	
	span {
		margin: 15px;
		font-size: 20px;
	}
	
	footer {
		margin-top: 200px;
	}
</style>
</head>
<body>
	<header>
		<h1>HIPETS</h1>
	</header>
	<div>
		<span><a href="">병원 검색</a></span> <span><a href="">캘린더</a></span> <span><a
			href="">마이페이지</a></span>
	</div>
	<div class="login">
		<h4>Login</h4>
		<form name="form" method="POST" action="<c:url value='/user/login'/>">
			<!-- 로그인이 실패한 경우 exception 객체에 저장된 오류 메시지를 출력 -->
        	<c:if test="${loginFailed}">
	  	 		<font color="red"><c:out value="${exception.getMessage()}" /></font><br>
	   		</c:if>
			<input type="text" name="userId" placeholder="id"><br>
			<input type="password" name="password" placeholder="password"><br>
			<input type="button" value="로그인" onClick="login()"> &nbsp;
			<input type="button" value="회원가입" onClick="customerCreate(
								'<c:url value='/user/register'/>')">
		</form>
	</div>
	<div>
		<h3>
			<strong>오늘의 반려동물 지식</strong>
		</h3>
		<br>
		<p class="text1">
		<p>당근은 토끼에게 비만을 일으킵니다.</p>
		<p>고양이는 음수량이 중요합니다.</p>
		<p>고양이 목욕은 한달에 한두번 정도만 시키는 것이 적당합니다.</p>
		<p>햄스터는 영역 보호 본능이 매우 강해 한 공간에 두마리를 키워서는 절대 안됩니다.</p>
	</div>
	<footer>
		<hr>
		<small> &copy; Hospital &nbsp; Tel : 02-2019-2019</small>
	</footer>
</body>