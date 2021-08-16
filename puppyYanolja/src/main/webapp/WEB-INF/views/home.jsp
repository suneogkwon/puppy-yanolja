<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<link rel="stylesheet" href="/assets/css/bootstrap.min.css">
<script src="/assets/js/bootstrap.bundle.js"></script>
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
		<div class="swiper-button-prev"></div>
		<div class="swiper-button-next"></div>
		<script>
			$(function() {
				const swiper = new Swiper('#mainCarousel', {
					// Optional parameters
					loop : true,
					slidesPerView : 3,
					centeredSlides : true,
					spaceBetween : 30,

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
<div class="py-5"></div>
<div class="container">
	<div class="text-center">
		<h2 class="fw-bold">Best Hotel</h2>
	</div>
	<div class="row gy-3 py-3 justify-content-center align-items-center text-center">
		<div class="col-auto">
			<button type="button" onclick="" class="btn btn-primary text-white">서울</button>
		</div>
		<div class="col-auto">
			<button type="button" onclick="" class="btn btn-primary text-white">인천</button>
		</div>
		<div class="col-auto">
			<button type="button" onclick="" class="btn btn-primary text-white">부산</button>
		</div>
		<div class="col-auto">
			<button type="button" onclick="" class="btn btn-primary text-white">대구</button>
		</div>
		<div class="col-auto">
			<button type="button" onclick="" class="btn btn-primary text-white">제주</button>
		</div>
		<div class="col-auto">
			<button type="button" onclick="" class="btn btn-primary text-white">전주</button>
		</div>
	</div>
	<div class="py-4"></div>
	<div class="row gy-5 row-cols-2 row-cols-lg-4">
		<div class="col">
			<div class="border">
				<img class="img-fluid" src="assets/img/main-best-hotel-temp-img.jpg" alt="">
				<div>
					<p>호텔 이름들어갈 곳</p>
					<p>별점 및 후기</p>
					<p class="text-end">가격</p>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="border">
				<img class="img-fluid" src="assets/img/main-best-hotel-temp-img.jpg" alt="">
				<div>
					<p>호텔 이름들어갈 곳</p>
					<p>별점 및 후기</p>
					<p class="text-end">가격</p>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="border">
				<img class="img-fluid" src="assets/img/main-best-hotel-temp-img.jpg" alt="">
				<div>
					<p>호텔 이름들어갈 곳</p>
					<p>별점 및 후기</p>
					<p class="text-end">가격</p>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="border">
				<img class="img-fluid" src="assets/img/main-best-hotel-temp-img.jpg" alt="">
				<div>
					<p>호텔 이름들어갈 곳</p>
					<p>별점 및 후기</p>
					<p class="text-end">가격</p>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="border">
				<img class="img-fluid" src="assets/img/main-best-hotel-temp-img.jpg" alt="">
				<div>
					<p>호텔 이름들어갈 곳</p>
					<p>별점 및 후기</p>
					<p class="text-end">가격</p>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="border">
				<img class="img-fluid" src="assets/img/main-best-hotel-temp-img.jpg" alt="">
				<div>
					<p>호텔 이름들어갈 곳</p>
					<p>별점 및 후기</p>
					<p class="text-end">가격</p>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="border">
				<img class="img-fluid" src="assets/img/main-best-hotel-temp-img.jpg" alt="">
				<div>
					<p>호텔 이름들어갈 곳</p>
					<p>별점 및 후기</p>
					<p class="text-end">가격</p>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="border">
				<img class="img-fluid" src="assets/img/main-best-hotel-temp-img.jpg" alt="">
				<div>
					<p>호텔 이름들어갈 곳</p>
					<p>별점 및 후기</p>
					<p class="text-end">가격</p>
				</div>
			</div>
		</div>
	</div>
</div>