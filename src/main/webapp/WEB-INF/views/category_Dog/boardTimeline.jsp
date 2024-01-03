<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String uid_session = (String)session.getAttribute("uid_session");
out.print(uid_session);
%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>강아지 게시판</title>
	<link rel="stylesheet" href="/style/boardTimelineStyle.css?v">
</head>
<body>
	<div id="wrap" class="boardTimeline">
	
		<!--  헤더템플릿 시작, iframe으로 변경 -->
		<%@ include file="../inc/headerTmp.jsp" %>
    	<!--  헤더템플릿 끝 -->   
		
		<main id="main">
		<% if(uid_session != null) { %>
			<div id="writeArea">
				<form id="writeFrm">
					<div id="writeInfo" class="dFlex">
						<div id="userProfile">
							<span>프사</span>
						</div>
						<div id="userName">
							<span>닉네임</span>
						</div>
					</div>
					<div id="contentArea">
						<textarea id="content" placeholder="무슨말을 전달하고 싶으세요 ?"></textarea>
					</div>
					<div id="writeBtnArea">
						<button type="button" id="uploadImg">사진</button>
						<button type="button" id="writeBtn">게시</button>
					</div>
				</form>
			</div>
		<% } %>
			
			
			<!-- 게시글출력  -->
			<c:forEach var="list" items="${ PanList }">
			<div id="rowArea" class="listlowMain">
				<div id="userInfoArea" class="dFlex">
					<div id="userImgArea">
						<span>이미지</span>
					</div>
					<div id="userWirterArea">
						<span>${ list.writer }</span>
						<span>${ list.createdDate }</span>
					</div>
				</div>
				<div id="contentArea">
					<span>${ list.num }</span>
					<span>${ list.content }</span>
				</div>
			</div>
			</c:forEach>
			<!-- 게시글출력 끝 -->
			
			<div id="testarea" class="listlow">
			
			</div>
		</main>
		
		
<!-- 	<form action="" id="testFrm"> -->
<!-- 		<input type="text" name="num" value="5"> -->
<!-- 		<button type="button" id="testBtn">테스트버튼</button> -->
<!-- 	</form> -->
	</div>
	</div>
	<!-- div#wrap -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="/script/boardTimelineScript.js"></script>
</body>
</html>    