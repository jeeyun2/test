<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<section>
		<h1>회원가입</h1>
	</section>
	<section>
		<form>
			<br>아이디<br> <br> <input type="text" name="id"
				placeholder="아이디 입력">
			<input type="button" name="idcheck" value="아이디 확인"> <br>
			<br>비밀번호<br>
			<br> <input type="password" name="password"
				placeholder="비밀번호 입력"> <input type="button" name="pwcheck"
				value="비밀번호 재확인"> <br>
			<br> 이름<br> <input type="text" name="name"> <br>생년월일<br>
			<select name="year">
				<option>선택</option>
				<option value="1995">1995</option>
				<option value="1996">1996</option>
				<option value="1997">1997</option>
				<option value="1998">1998</option>
				<option value="1999">1999</option>
				<option value="2000">2000</option>
				<option value="2001">2001</option>
				<option value="2002">2002</option>
			</select> <select name="month">
				<option>선택</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
				<option value="6">6</option>
				<option value="7">7</option>
				<option value="8">8</option>
				<option value="9">9</option>
				<option value="10">10</option>
				<option value="11">11</option>
				<option value="12">12</option>
			</select> <select name="day">
				<option>선택</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
				<option value="6">6</option>
				<option value="7">7</option>
				<option value="8">8</option>
				<option value="9">9</option>
				<option value="10">10</option>
				<option value="11">11</option>
				<option value="12">12</option>
				<option value="13">13</option>
				<option value="14">14</option>
				<option value="15">15</option>
				<option value="16">16</option>
				<option value="17">17</option>
				<option value="18">18</option>
				<option value="19">19</option>
				<option value="20">20</option>
				<option value="21">21</option>
				<option value="22">22</option>
				<option value="23">23</option>
				<option value="24">24</option>
				<option value="25">25</option>
				<option value="26">26</option>
				<option value="27">27</option>
				<option value="28">28</option>
				<option value="29">29</option>
				<option value="30">30</option>
				<option value="31">31</option>
			</select> <br>
			<br>성별<br> <label for="man">남자</label> <input type="radio"
				name="gender" value="m" id="man"> <label for="woman">여자</label>
			<input type="radio" name="gender" value="f" id="woman"> <br>
			<br> 전화번호<br> <input type="text" name="phone"> <br>
			<br>
			<br> <input type="submit" value="제출">
		</form>
	</section>
</body>
</body>
</html>