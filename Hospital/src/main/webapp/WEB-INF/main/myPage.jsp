<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%!private String name = "홍길동";%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>마이 페이지</title>
<style>
	table.t1, table.t2 {
		border-collapse: separate;
		border-spacing: 1px;
		text-align: left;
		line-height: 1.5;
		border-top: 1px solid #ccc;
		margin: 20px 10px;
	}
	
	table.t1 th {
		width: 100px;
		padding: 10px;
		font-weight: bold;
		vertical-align: top;
		border-bottom: 1px solid #ccc;
		background: #f3f6f7;
	}

	table.t1 td {
		width: 300px;
		padding: 10px;
		vertical-align: top;
		border-bottom: 1px solid #ccc;
		border-right: 1px solid #ccc;
	}
	
	table.t2 {
		float: left;
	}

	table.t2 th {
		padding: 10px;
		font-weight: bold;
		vertical-align: top;
		background: #f3f6f7;
		border-bottom: 1px solid #ccc;
	}

	table.t2 td {
		width: 300px;
		padding: 10px;
		vertical-align: top;
		border-bottom: 1px solid #ccc;
	}

	#button_group {
		padding: 10px;
	}
	
	#button_group button {
		padding: 5px;
		border: 1px solid #ccc;
		background-color: #f3f6f7;
	}
	
	#button_group button:hover {
		background-color: rgba(0, 0, 0, 0);
	}
</style>
</head>
<body>
	<div>
		<h3>My Page</h3>
		안녕하세요,
		<%=name%>님!
		<hr>
	</div>
	<div id="button_group">
		<button class="update" onclick="location.href='update.jsp'">회원정보수정
		</button>
	</div>
	<table class="t1">
		<tr>
			<th scope="row">ID</th>
			<td>hong</td>
		</tr>
		<tr>
			<th scope="row">이름</th>
			<td>홍길동</td>
		</tr>
		<tr>
			<th scope="row">E-mail</th>
			<td>hong@naver.com</td>
		</tr>
		<tr>
			<th scope="row">전화번호</th>
			<td>010-3222-3333</td>
		</tr>
	</table>
	<div>
		<table class="t2">
			<tr>
				<th scope="row" rowspan="5">작성 리뷰 목록</th>
				<td><a>2021/09/02</a>
					<button class="review_update">수정</button>
					<button class="review_remove">삭제</button>
					<p></td>
			</tr>
			<tr>
				<td><a>2021/08/20</a>
					<button class="review_update">수정</button>
					<button class="review_remove">삭제</button>
					<p></td>
			</tr>
			<tr>
				<td><a>2021/08/07</a>
					<button class="review_update">수정</button>
					<button class="review_remove">삭제</button>
					<p></td>
			</tr>
			<tr>
				<td><a>2020/10/11</a>
					<button class="review_update">수정</button>
					<button class="review_remove">삭제</button>
					<p></td>
			</tr>
			<tr>
				<td><a>2020/04/03</a>
					<button class="review_update">수정</button>
					<button class="review_remove">삭제</button>
					<p></td>
			</tr>
		</table>
		<table class="t2">
			<tr>
				<th scope="row">방문 병원 목록</th>
				<td>
					<ul>
						<li>병원 목록</li>
						<li>병원 목록</li>
						<li>병원 목록</li>
						<li>병원 목록</li>
					</ul>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>