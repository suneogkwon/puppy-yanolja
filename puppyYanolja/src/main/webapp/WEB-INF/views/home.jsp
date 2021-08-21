<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="pb-5">
	<div id="mainCarousel" class="swiper-container">
		<div class="swiper-wrapper">
			<div class="swiper-slide">
				<img src="assets/img/main-banner/1.jpg" class="d-block w-100" alt="...">
			</div>
			<div class="swiper-slide">
				<img src="assets/img/main-banner/2.jpg" class="d-block w-100" alt="...">
			</div>
			<div class="swiper-slide">
				<img src="assets/img/main-banner/3.jpg" class="d-block w-100" alt="...">
			</div>
			<div class="swiper-slide">
				<img src="assets/img/main-banner/4.jpg" class="d-block w-100" alt="...">
			</div>
		</div>
		<div class="swiper-button-prev text-white"></div>
		<div class="swiper-button-next text-white" ></div>
	</div>

</div>
<div class="container">
	<div class="text-center">
		<h2 class="fw-bold">Best Hotel</h2>
	</div>
	<div class="row gy-3 py-3 justify-content-center align-items-center text-center">
		<div class="col-auto">
			<button type="button" onclick="changeLocation('서울')" class="btn btn-primary text-white">서울</button>
		</div>
		<div class="col-auto">
			<button type="button" onclick="changeLocation('경기')" class="btn btn-primary text-white">경기</button>
		</div>
		<div class="col-auto">
			<button type="button" onclick="changeLocation('인천')" class="btn btn-primary text-white">인천</button>
		</div>
		<div class="col-auto">
			<button type="button" onclick="changeLocation('부산')" class="btn btn-primary text-white">부산</button>
		</div>
		<div class="col-auto">
			<button type="button" onclick="changeLocation('대구')" class="btn btn-primary text-white">대구</button>
		</div>
		<div class="col-auto">
			<button type="button" onclick="changeLocation('제주')" class="btn btn-primary text-white">제주</button>
		</div>
	</div>
	<div class="py-3"></div>
	<div id="bestHotelMainList" class="row gy-5 row-cols-2 row-cols-lg-4">
		<c:forEach begin="1" end="8">
			<div class="col">
				<div class="border shadow-sm">
					<img class="img-fluid" src="assets/img/main-best-hotel-temp-img.jpg" alt="">
					<div class="p-2">
						<h5 class="fw-bold">신라스테이 마포</h5>
						<div class="pb-2">
							<span class="review-score-bg align-middle">
								<span class="review-score"></span>
							</span>
							<span class="small ps-1 text-black-50 fw-bold align-middle">4.0 (2342)</span>
						</div>
						<div class="text-end position-relative">
							<div class="position-absolute bottom-100 end-0 small">
								<span class="text-decoration-line-through text-black-50">300,000원</span>
							</div>
							<span class="text-danger pe-1">
								<span class="h5">70</span>%~
								</span>
							<span class="h4 text-primary">90,000</span> 원
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>
</div>

<div class="py-5"></div>
<div class="container">
	<div class="text-center">
		<h2 class="fw-bold">Recommend Pet Cafe</h2>
	</div>

	<div class="py-3"></div>
	<div id="recCafeMainList" class="row g-2 g-lg-5 row-cols-1 row-cols-lg-2">
		<c:forEach begin="1" end="4">
			<a href="#" class="col link-dark">
				<div class="row shadow-sm">
					<div class="col-4 p-0">
						<img class="img-fluid" src="assets/img/default-pet-cafe-img.jpg" alt="">
					</div>
					<div class="col-8 border">
						<div class="p-2 h-100 position-relative">
							<h5 class="fw-bold">아지공주와 냥집사</h5>
							<div class="pb-2">
								<span class="review-score-bg align-middle">
									<span class="review-score"></span>
								</span>
								<span class="small ps-1 text-black-50 fw-bold align-middle">4.0 (2342)</span>
							</div>
							<div class="position-absolute bottom-0 end-0 p-2">
								<div class="text-end position-relative">
									<div class="position-absolute bottom-100 end-0 small">
										<span class="text-decoration-line-through text-black-50">300,000원</span>
									</div>
									<span class="text-danger pe-1">
									<span class="h5">70</span>%~
								</span>
									<span class="h4 text-primary">90,000</span> 원
								</div>
							</div>
						</div>
					</div>
				</div>
			</a>
		</c:forEach>
	</div>
</div>

<div class="py-5"></div>
<div class="container">
	<div class="text-center">
		<h2 class="fw-bold">Review</h2>
	</div>

	<div class="py-3"></div>
	<div id="reviewCarousel" class="swiper-container">
		<div class="swiper-wrapper">
			<c:forEach begin="1" end="5">
				<div class="swiper-slide border">
					<a class="main-review-content d-block p-3 text-dark" href="#">
						정말 좋아요~정말 좋아요~정말 좋아요~정말 좋아요~정말 좋아요~정말 좋아요~정말 좋아요~
					</a>
					<div class="d-flex align-items-center p-3">
						<a class="main-review-img d-block rounded-circle me-3" href="#">
							<img class="img-fluid h-100" src="assets/img/main-best-hotel-temp-img.jpg">
						</a>
						<div class="flex-grow-1">
							<a class="d-inline-block h5 fw-bold" href="#">테스트 호텔</a>
							<span class="review-score-bg">
								<span class="review-score"></span>
							</span>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
		<div class="swiper-button-prev"></div>
		<div class="swiper-button-next"></div>
	</div>
</div>

<script>
	$(function() {
		new Swiper('#mainCarousel', {
			// Optional parameters
			loop : true,
			slidesPerView : 2,
			centeredSlides : true,
			spaceBetween : 30,
			autoplay: {
				delay:4000,
				pauseOnMouseEnter: true,
				waitForTransition : true,
			},
			speed:3000,

			// Navigation arrows
			navigation : {
				nextEl : '.swiper-button-next',
				prevEl : '.swiper-button-prev',
			},

		});

		new Swiper('#reviewCarousel', {
			// Optional parameters
			loop : true,
			slidesPerView : 1,
			centeredSlides : true,
			spaceBetween : 30,
			autoplay: {
				delay:4000,
				pauseOnMouseEnter: true,
				waitForTransition : true,
			},
			speed:1300,


			// Navigation arrows
			navigation : {
				nextEl : '.swiper-button-next',
				prevEl : '.swiper-button-prev',
			},
			breakpoints : {
				576 : {
					slidesPerView : 2,
					centeredSlides : false,
				},
				992 : {
					slidesPerView : 3,
				}
			},
		});
	})
</script>
