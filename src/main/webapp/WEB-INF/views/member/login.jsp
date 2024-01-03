<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>로그인</title>
	<link rel="stylesheet" href="/style/memberStyle.css?v">
</head>
<body>

	<div id="wrap" class="memberWrap">
		<h1>로그인</h1>
		<form action="loginProc">
		
		<div id="inputArea">
			<input type="text" placeholder="이메일 또는 아이디" name="uid" required>
			<input type="password" placeholder="비밀번호" name="upw" required>
		</div>
		
		<div id="btnArea">
			<button>로그인</button>
		</div>
		
		<footer id="loginFooter" class="dFlex">
			<span>비밀번호 찾기</span>
			<span>|</span>
			<span><a href="/privacy">신규회원가입</a></span>
		</footer>
		</form>
	</div>
	<!-- div#wrap -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    