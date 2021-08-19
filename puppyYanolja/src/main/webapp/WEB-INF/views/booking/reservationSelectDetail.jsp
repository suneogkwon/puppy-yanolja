<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
.review_star {
	width: 20px;
	height: 20px;
}

.gps_img {
	height: 20px;
}

.room_imgBox {
	height: 250px;
	overflow: hidden;
	margin: 0 auto;
}

.room_img {
	width: 100%;
	height: 100%;
	object-fit: cover;
}

.btn-primary {
	color: #fff;
}

.carousel-item>img {
	width: 100%;
	height: 100%;
	object-fit: cover;
}

.review_Number {
	font-size: 3rem;
}

.review_starTop {
	width: 50px;
	height: 50px;
	clear: both;
}

.smile_icon01 {
	height: 50px;
}

.review_id {
	color: #d79b70;
	font-weight: 800em;
}

.review_contents {
	color: #7c7c7c;
}

.swiper-slide>img {
	opacity: 0.4;
}

.swiper-slide>img:hover {
	opacity: 1.0;
}
</style>
<div class="container">
	<!-- 호텔 이미지 사진 -->
	<div class="row">
		<div id="carouselExampleIndicators" class="carousel slide col-12"
			data-bs-ride="carousel">
			<div class="carousel-indicators">
				<button type="button" data-bs-target="#carouselExampleIndicators"
					data-bs-slide-to="0" class="active" aria-current="true"
					aria-label="Slide 1"></button>
				<button type="button" data-bs-target="#carouselExampleIndicators"
					data-bs-slide-to="1" aria-label="Slide 2"></button>
				<button type="button" data-bs-target="#carouselExampleIndicators"
					data-bs-slide-to="2" aria-label="Slide 3"></button>
			</div>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="assets/img/booking/room01.jpg" class="d-block w-100"
						alt="...">
				</div>
				<div class="carousel-item">
					<img src="assets/img/booking/room02.jpg" class="d-block w-100"
						alt="...">
				</div>
				<div class="carousel-item">
					<img src="assets/img/booking/room03.jpg" class="d-block w-100"
						alt="...">
				</div>
			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
	</div>

	<!-- 호텔 이름-->
	<div class="row g-2">
		<div class="col-6 p-4">
			<h3 class="fw-bold">신라스테이 역삼점</h3>
			&nbsp;&nbsp;<img src="assets/img/booking/review_star.png"
				class="review_star">&nbsp;&nbsp;<b>4.0</b><small>/5</small>
			&nbsp;&nbsp;공덕역 1번출구 도보 3분 &nbsp;&nbsp;
			<button type="button" class="btn btn-dark position-relative">
				review <span
					class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
					99+ </span>
			</button>
		</div>
		<div class="col-6 p-4 text-end">
			<span class="badge rounded-pill bg-dark">Fackbook</span> <span
				class="badge rounded-pill bg-dark">Twitter</span> <span
				class="badge rounded-pill bg-dark">Instargram</span>
		</div>
	</div>
	<!-- 체크인,체크아웃 -->
	<div class="row">
		<div class="col-12">
			<div class="row g-2 border">
				<div class="col-12 p-3 text-center">
					체크인 날짜&emsp;&emsp;<input type="date">&emsp;&emsp; 체크아웃
					날짜&emsp;&emsp;<input type="date">
				</div>
			</div>
		</div>
	</div>
	<br>

	<!-- 상세정보 -->
	<div class="row">
		<div class="col-12">
			<h4>
				<b>숙소 정보</b>
			</h4>
		</div>
		<div class="col-12">
			<div class="row p-4 border">
				<table>
					<tr>
						<th>업체명</th>
						<td>신라스테이 역산점</td>
					</tr>
					<tr>
						<th>예약 및 문의</th>
						<td>054-123-1234</td>
					</tr>
					<tr>
						<th>소개</th>
						<td>스타몽의 호텔링 서비스는 특별한 경험을 제공합니다. <br> 스타몽만의 호텔링 매뉴얼과
							노하우.<br> 클린 하우스로 꼼꼼한 위생관리는 기본,<br> 차별화된 서비스를 누려 보십시오.<br>
							또한 스타몽내의 다양한 서비스를 함께 받을 수 있습니다.<br> 안심하고 맡길수 있는 스타몽 호텔링 서비스를
							받아보세요.<br>
						</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
	<br> <br>
	<!-- 편의시설 테마 -->
	<div class="row" id="review">
		<div class="col-12">
			<h4 class="fw-bold">편의시설 및 테마</h4>
		</div>
		<br> <br>
		<div class="pb-5">
			<div id="mainCarousel" class="swiper-container">
				<div class="swiper-wrapper">
					<div class="swiper-slide p-3">
						<img src="assets/img/booking/ball-game.png" class="img-fluid"
							alt="...">
					</div>
					<div class="swiper-slide p-3">
						<img src="assets/img/booking/beauty-saloon.png" class="img-fluid"
							alt="...">
					</div>
					<div class="swiper-slide p-3">
						<img src="assets/img/booking/dog.png" class="img-fluid" alt="...">
					</div>
					<div class="swiper-slide p-3">
						<img src="assets/img/booking/dog-food.png" class="img-fluid"
							alt="...">
					</div>
					<div class="swiper-slide p-3">
						<img src="assets/img/booking/medical-report.png" class="img-fluid"
							alt="...">
					</div>
					<div class="swiper-slide p-3">
						<img src="assets/img/booking/pet-shampoo.png" class="img-fluid"
							alt="...">
					</div>
					<div class="swiper-slide p-3">
						<img src="assets/img/booking/play-with-pet.png" class="img-fluid"
							alt="...">
					</div>
				</div>
				<div class="swiper-button-prev"></div>
				<div class="swiper-button-next"></div>
				<script>
					$(function() {
						const swiper = new Swiper('#mainCarousel', {
							// Optional parameters
							loop : true,
							slidesPerView : 7,
							centeredSlides : true,
							spaceBetween : 10,

							// Navigation arrows
							navigation : {
								nextEl : '.swiper-button-next',
								prevEl : '.swiper-button-prev',
							},

						});
					})
				</script>
			</div>

		</div>
	</div>
	<br> <br>
	<!-- 지도 -->
	<div class="row">
		<div class="col-12 p-2">
			<h4 class="fw-bold">위치</h4>
			&emsp;<img src="assets/img/booking/gps_img.jpg" class="gps_img">&emsp;서울특별시
			마포구 마포대로 83
		</div>
	</div>
	<div class="row">
		<iframe
			src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3165.121353343341!2d127.04359230266677!3d37.50505588406573!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca4079846d83b%3A0xe33c0e22646edf36!2z7Iug65287Iqk7YWM7J20IOyXreyCvA!5e0!3m2!1sko!2skr!4v1629183992744!5m2!1sko!2skr"
			width="600" height="450" style="border: 0;" loading="lazy"></iframe>
	</div>
	<br> <br>

	<!-- 후기 -->
	<div class="row" id="review">
		<div class="col-12">
			<h4 class="fw-bold">후기 (4,263개)</h4>
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-1 text-end">
			<img src="assets/img/booking/review_star.png" class="review_starTop">
		</div>

		<div class="col-4">
			<b class="review_Number">4.6</b>/5
		</div>
		<div class="col-7 row text-end">
			<div class="col-12"></div>
			<div class="col-12"></div>
			<div class="col-12">
				<small>최근 12개월 누적 평점 기준 안내</small>
			</div>
		</div>
	</div>

	<hr>

	<!-- 리뷰 후기 -->
	<div class="row row-cols-1 row-cols-md-4 g-4">
		<div class="col">
			<div class="card h-100">
				<div>
					<img src="assets/img/booking/room01.jpg" class="card-img-top "
						alt="...">
				</div>
				<div class="card-body">
					<h5 class="card-title">좋아요</h5>
					<div class="row">
						<div class="col-8">
							<img src='assets/img/booking/review_star.png' class="review_star">
							<img src='assets/img/booking/review_star.png' class="review_star">
							<img src='assets/img/booking/review_star.png' class="review_star">
							<img src='assets/img/booking/review_star.png' class="review_star">
							<img src='assets/img/booking/review_star.png' class="review_star">
						</div>
						<div class="col-4 text-end">5.0</div>
					</div>
					<p class="card-text p-2">이것은 추가 콘텐츠에 대한 자연스러운 도입으로 아래에 지원 텍스트가
						있는 더 긴 카드입니다. 이 내용은 조금 더 깁니다.</p>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="card h-100">
				<div>
					<img src="assets/img/booking/room01.jpg" class="card-img-top "
						alt="...">
				</div>
				<div class="card-body">
					<h5 class="card-title">좋아요</h5>
					<div class="row">
						<div class="col-8">
							<img src='assets/img/booking/review_star.png' class="review_star">
							<img src='assets/img/booking/review_star.png' class="review_star">
							<img src='assets/img/booking/review_star.png' class="review_star">
							<img src='assets/img/booking/review_star.png' class="review_star">
							<img src='assets/img/booking/review_star.png' class="review_star">
						</div>
						<div class="col-4 text-end">5.0</div>
					</div>
					<p class="card-text p-2">이것은 추가 콘텐츠에 대한 자연스러운 도입으로 아래에 지원 텍스트가
						있는 더 긴 카드입니다. 이 내용은 조금 더 깁니다.</p>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="card h-100">
				<div>
					<img src="assets/img/booking/room01.jpg" class="card-img-top "
						alt="...">
				</div>
				<div class="card-body">
					<h5 class="card-title">좋아요</h5>
					<div class="row">
						<div class="col-8">
							<img src='assets/img/booking/review_star.png' class="review_star">
							<img src='assets/img/booking/review_star.png' class="review_star">
							<img src='assets/img/booking/review_star.png' class="review_star">
							<img src='assets/img/booking/review_star.png' class="review_star">
							<img src='assets/img/booking/review_star.png' class="review_star">
						</div>
						<div class="col-4 text-end">5.0</div>
					</div>
					<p class="card-text p-2">이것은 추가 콘텐츠에 대한 자연스러운 도입으로 아래에 지원 텍스트가
						있는 더 긴 카드입니다. 이 내용은 조금 더 깁니다.</p>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="card h-100">
				<div>
					<img src="assets/img/booking/room01.jpg" class="card-img-top "
						alt="...">
				</div>
				<div class="card-body">
					<h5 class="card-title">좋아요</h5>
					<div class="row">
						<div class="col-8">
							<img src='assets/img/booking/review_star.png' class="review_star">
							<img src='assets/img/booking/review_star.png' class="review_star">
							<img src='assets/img/booking/review_star.png' class="review_star">
							<img src='assets/img/booking/review_star.png' class="review_star">
							<img src='assets/img/booking/review_star.png' class="review_star">
						</div>
						<div class="col-4 text-end">5.0</div>
					</div>
					<p class="card-text p-2">이것은 추가 콘텐츠에 대한 자연스러운 도입으로 아래에 지원 텍스트가
						있는 더 긴 카드입니다. 이 내용은 조금 더 깁니다.</p>
				</div>
			</div>
		</div>
	</div>
	<br><br>
	<div class="d-grid gap-2">
 		 <button class="btn btn-primary" type="button">예약하기</button>
	</div>
		
</div>