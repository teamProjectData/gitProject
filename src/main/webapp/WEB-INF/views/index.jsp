<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String uid_session = (String)session.getAttribute("uid_session");

	out.print(uid_session);
%>
<!DOCTYPE html>
<html lang="ko">

<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" href="/style/style.css?v">
	<!-- Link Swiper's CSS -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
</head>

<body>
	<div id="wrap">
		<div id="header">
			<div id="logo">
				<img src="../images/Logo.png">
				<span class="notosanskr">우리들의 정보 공유 게시판!</span>
				<span class="notosanskr">당신만이 가진 이야기를 공유해주세요.</span>
			</div>

			<!-- Swiper -->
			<div class="swiper mySwiper">
				<div class="swiper-wrapper">
					<div class="swiper-slide">
						<img src="../images/background1.jpg" alt="">
					</div>
					<div class="swiper-slide">
						<img src="../images/background2.jpg" alt="">
					</div>
					<div class="swiper-slide">
						<img src="../images/background3.jpg" alt="">
					</div>

				</div>

				<div class="autoplay-progress" style="display: none;">
					<svg viewBox="0 0 48 48">
						<circle cx="24" cy="24" r="20"></circle>
					</svg>
					<span></span>
				</div>
			</div>
		</div>

		<div id="gallery">
			<div id="board" class="dFlex">
			<a href="boardTimeline">
				<div id="board1" class="board">
				
					<div class="board_text">					
						<div class="textboard">
							<span>게시판 제목</span>
							<br>
							<span>너와 나의 강아지 이야기</span>
							<span>수 많은 반려견들의 이야기가 당신을 기다리고 있습니다.</span>
						</div>
					
					</div>
					
				</div>
				</a>
				<div id="board2" class="board">
				</div>
				<div id="board3" class="board">
				</div>
			</div>
			<div id="board" class="dFlex">
				<div id="board4" class="board">
				</div>
				<div id="board5" class="board">
				</div>
				<div id="board6" class="board">
				</div>
			</div>
		</div>

		<div id="footer">
			<div id="text">
				<span>관리자 정보</span>
				<span>Team. Ezen</span>
				<span>Tel. 010-1234-5678</span>
			</div>
		</div>

	</div>
	<!-- div#wrap -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="/script/script.js"></script>
	<!-- Swiper JS -->
	<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>

	<!-- Initialize Swiper -->
	<script>
		const progressCircle = document.querySelector(".autoplay-progress svg");
		const progressContent = document.querySelector(".autoplay-progress span");
		var swiper = new Swiper(".mySwiper", {
			spaceBetween: 30,
			centeredSlides: true,
			autoplay: {
				delay: 4000,
				disableOnInteraction: false
			},
			pagination: {
				el: ".swiper-pagination",
				clickable: true
			},
			navigation: {
				nextEl: ".swiper-button-next",
				prevEl: ".swiper-button-prev"
			},
			on: {
				autoplayTimeLeft(s, time, progress) {
					progressCircle.style.setProperty("--progress", 1 - progress);
					progressContent.textContent = `${Math.ceil(time / 1000)}s`;
				}
			}
		});
	</script>
</body>

</html>