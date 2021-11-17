<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String phone1 = (String) request.getAttribute("phone1");
	String phone2 = (String) request.getAttribute("phone2");
	String phone3 = (String) request.getAttribute("phone3");
	String gender = (String) request.getAttribute("gender");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>내 정보</title>
<style>
	table.t1 {
		margin: 10px;
	}
	
	.title {
		width: 150px;
		text-align: left;
		padding: 10px;
		font-size: 12px;
	}
	
	.sms, .email, .pwd1, .text1 {
		font-size: 5px;
	}
	
	.button {
		padding: 5px;
		border: 1px solid #ccc;
		background-color: #f3f6f7;
	}
	
	.button:hover {
		background-color: rgba(0, 0, 0, 0);
	}
	
	input[type=radio] {
		background-color: #FFFF;
		appearance: none;
		margin-left: 16px;
		border: 1px solid #ccc;
		width: 14px;
		height: 14px;
		border-radius: 100%;
	}
	
	input[type=radio]:checked {
		background-color: #f3f6f7;
		appearance: none;
		margin-left: 16px;
		border: none;
		width: 14px;
		height: 14px;
		border-radius: 100%;
	}
</style>
</head>
<body>
	<div>
		<div>
			<h3>My info</h3>
			<p class="text1">
				<font color="red">*</font>필수 입력 항목
			<hr>
		</div>
		<div>
			<form id="myForm" method="post">
				<table class="t1">
					<tr>
						<td class="title">아이디<font color="red">*</font></td>
						<td><input type="text" name="id" id="id" required></td>
					</tr>
					<tr>
						<td class="title">비밀번호<font color="red">*</font></td>
						<td><input type="text" name="old_pw" id="old_pw"></td>
					</tr>
					<tr>
						<td></td>
						<td class="pwd1"><font color="#7092BE">(영문 대소문자/숫자/
								특수문자 중 2가지 이상 조합. 8자~16자)</font></td>
					</tr>
					<tr>
						<td class="title">비밀번호 확인<font color="red">*</font></td>
						<td><input type="password" name="new_pw" id="new_pw">
						</td>
					</tr>
					<tr>
						<td class="title">이름<font color="red">*</font></td>
						<td><input type="text" name="name" id="name"></td>
					</tr>
					<tr>
						<td class="title">Email<font color="red">*</font></td>
						<td><input type="text" name="email" id="email"></td>
					</tr>
					<tr>
						<td></td>
						<td class="email">이메일 수신여부 <label><input type="radio"
								name="email" checked>수신함</label> <label><input
								type="radio" name="email"> 수신안함</label>
						</td>
					</tr>
					<tr>
						<td class="title">전화번호<font color="red">*</font></td>
						<td><select name="phone1" id="phone1">
								<option>010</option>
								<option>02</option>
								<option>031</option>
								<option>051</option>
						</select> - <input type="text" name="phone2" id="phone2" size="5">
							- <input type="text" name="phone2" id="phone3" size="5">
						</td>
					</tr>
					<tr>
						<td></td>
						<td class="sms">SMS 수신여부 <label><input type="radio"
								class="btn_sms" name="sms" checked>수신함</label> <label><input
								type="radio" class="btn_sms" name="sms">수신안함</label>
						</td>
					</tr>
					<tr>
						<td class="title">주소<font color="red">*</font></td>
						<td><input type=text " name="address" id="address" size="6">
							<button class="button">주소 검색</button></td>
					</tr>
					<tr class="title">
						<td></td>
						<td><input type="text" name="addr" id="addr"></td>
					</tr>
					<tr class="title">
						<td></td>
						<td><input type="text" name="addr_detail" id="addr_detail">
						</td>
					</tr>
					<tr>
						<td class="title">생년월일<font color="red">*</font></td>
						<td><input type="text" name="year" id="year" size="4">
							년 <input type="text" name="month" id="month" size="2"> 월
							<input type="text" name="day" id="day" size="2"> 일</td>
					</tr>
				</table>
				<br>
				<div id="buttonUser">
					<input type="button" class="button" value="회원 탈퇴"> 
					<input type="submit" class="button" value="정보 수정">
				</div>
			</form>
		</div>
	</div>
</body>
</html>