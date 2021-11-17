<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% String name = request.getParameter("name");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>하이펫스</title>
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
		안녕하세요, ${curUserId}님!<br>
		<a href="<c:url value='/user/logout' />"><small>로그아웃</small></a>
		<a href="./myPage.jsp"><small>마이페이지</small></a>
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