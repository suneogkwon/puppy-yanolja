<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="container">
	<br>
	<div class="text-center">
		<h1>Pet's Shop</h1>
		<p></p>
		<p>
			항상 깨끗하고 믿을수 제품만을 판매하는 고품격 SHOP<br> 우리 아이 건강과 체질에 맞는 기능별 사료, 간식,
			용품을 지금 '강아지야놀자'에서 만나보세요!
		</p>
	</div>
	<div>
		<nav>
			<div class="nav nav-tabs" id="nav-tab" role="tablist">
				<button class="nav-link active" id="nav-home-tab"
					data-bs-toggle="tab" data-bs-target="#nav-home" type="button"
					role="tab" aria-controls="nav-home" aria-selected="true">전제보기</button>
				<button class="nav-link" id="nav-profile-tab" data-bs-toggle="tab"
					data-bs-target="#nav-profile" type="button" role="tab"
					aria-controls="nav-profile" aria-selected="false">사료</button>
				<button class="nav-link" id="nav-contact-tab" data-bs-toggle="tab"
					data-bs-target="#nav-contact" type="button" role="tab"
					aria-controls="nav-contact" aria-selected="false">간식</button>
				<button class="nav-link" id="nav-contact2-tab" data-bs-toggle="tab"
					data-bs-target="#nav-contact2" type="button" role="tab"
					aria-controls="nav-contact2" aria-selected="false">용품</button>
			</div>
		</nav>
		<div class="tab-content" id="nav-tabContent">
			<br>
			<!--전체보기-->
			<div class="tab-pane fade show active" id="nav-home" role="tabpanel"
				aria-labelledby="nav-home-tab">
				<div class="row gy-5 row-cols-2 row-cols-lg-4">
					<c:forEach var="list" items="${list}">
						<div class="col">
							<div class="border">
								<img class="img-fluid" src="assets/img/booking/${list.mainFile}"
									alt="사료">
								<div class="text-center p-2">
									<h5>
										<b>${list.itName}</b>
									</h5>
									<p>
										<del class="text-black-50">${list.custPrice}</del>
										&emsp;${list.price}
									</p>
									<button type="button" class="btn btn-primary text-white"
										onclick="location.href='petShopProduct.do'">구매하기</button>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
			<!-- 사료 -->
			<div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">...</div>
  			<!-- 간식 -->
  			<div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">...</div>
  			<!-- 용품 -->
  			<div class="tab-pane fade" id="nav-contact2" role="tabpanel" aria-labelledby="nav-contact2-tab">...</div>
		</div>
	</div>

</div>
