<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
<<<<<<< HEAD
	<title>회원가입</title>
	<link rel="stylesheet" href="/style/memberStyle.css?v">
</head>
<body>
	<div id="wrap" class="memberWrap"> 
		<h1>회원가입</h1>
		
		<form action="joinProc">
		<div id="inputArea">
			<input type="text" placeholder="아이디" name="uid" required maxlength="20">
			<input type="password" placeholder="비밀번호" name="upw" id="upw" required maxlength="20">
			<input type="password" placeholder="비밀번호 재확인" name="reupw" id="reupw" required maxlength="20">
			<input type="text" placeholder="닉네임" name="uname" required maxlength="20">
			<input type="text" placeholder="이메일" name="uemail" required maxlength="20">
		</div>
		
		<div id="btnArea">
			<button id="joinBtn">가입하기</button>
		</div>
		
		
		</form>
	</div>
	<!-- div#wrap -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="/script/script.js"></script>
=======
	<title>infoRum</title>
	<link href="images/logo.png" rel="shortcut icon" type="image/x-icon">
	<link rel="stylesheet" href="/style/joinStyle.css?v">
</head>
<body>
	<div id="wrap" class="memberWrap">
		<h1>회원가입</h1> 
			<form action="joinProc">
				<div id="inputArea">
					<input type="text" placeholder="아이디" name="uid" required maxlength="20">
					<input type="password" placeholder="비밀번호" name="upw" id="upw" required maxlength="20">
					<input type="password" placeholder="비밀번호 재확인" name="reupw" id="reupw" required maxlength="20">
					<input type="text" placeholder="닉네임" name="uname" required maxlength="20">
					<input type="text" placeholder="이메일" name="uemail" required maxlength="20">
				</div>
				
				<div id="btnArea">
					<button id="joinBtn">가입하기</button>
				</div>
			</form>
		
	</div>
	<!-- div#wrap -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="/script/loginScript.js"></script>
>>>>>>> refs/remotes/origin/index
</body>
</html>    