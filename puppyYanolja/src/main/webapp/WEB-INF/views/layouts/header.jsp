<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="container-fluid border-bottom shadow-sm bg-white">
    <div class="container">
        <div class="row align-items-center justify-content-center">
            <div class="col-12 col-md-9">
                <nav class="nav justify-content-end fw-bold">

                    <c:if test="${not empty member}">
                        <c:if test="${member.role == 'ADMIN'}">
                            <a href="admin.do" class="nav-link">관리페이지</a>
                        </c:if>
                        <c:if test="${member.role == 'PARTNER'}">
                            <a href="partner.do" class="nav-link">상점페이지</a>
                        </c:if>
                        <a href="logout.do" class="nav-link">로그아웃</a>
                        <a href="myPage.do" class="nav-link">마이페이지</a>
                        <a href="wishlist.do" class="nav-link">위시리스트</a>
                    </c:if>
                    <c:if test="${empty member}">
                        <a href="loginForm.do" class="nav-link">로그인</a>
                        <a href="#signUpModal" class="nav-link" data-bs-toggle="modal">회원가입</a>
                        <div class="modal fade" id="signUpModal" tabindex="-1" aria-labelledby="signUpModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="signUpModalLabel">회원가입</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <div class="row g-0 justify-content-center text-center">
                                            <div class="col-5">
                                                <ul class="list-unstyled">
                                                    <li>일반 이용 고객</li>
                                                    <li>반려동물 등록 필수</li>
                                                </ul>
                                                <a href="memberSignUpForm.do?signUpSort=BUYER" class="btn btn-primary text-white w-75 py-4 shadow-sm">
                                                    <span class="h5 fw-bold m-0">일반</span>
                                                </a>
                                            </div>
                                            <div class="col-5">
                                                <ul class="list-unstyled">
                                                    <li>상점 등록 고객</li>
                                                    <li>관리자 승인 필요</li>
                                                </ul>
                                                <a href="memberSignUpForm.do?signUpSort=PARTNER" class="btn btn-info text-white w-75 py-4 shadow-sm">
                                                    <span class="h5 fw-bold m-0">파트너</span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:if>
                </nav>
            </div>
            <div class="col-12 text-center position-relative">
            	<a href="home.do">
	               <img id="headerLogo" class="img-fluid" src="assets/img/logo/logo_text.jpg" alt="Logo">
	            </a>
            </div>
            <div class="col-12 col-lg-8 col-xl-6">
                <form id="searchForm" name="searchForm" action="" method="GET">
                    <div class="input-group mb-3">
                        <input type="text" class="form-control form-control-lg" placeholder="찾으시는 호텔 이름을 입력해주세요." aria-describedby="button-addon2">
                        <button class="btn btn-dark" type="submit" id="button-addon2"><i class="xi-search"></i></button>
                    </div>
                </form>
            </div>
            <div class="w-100"></div>
            <div class="col-12 col-lg-8 col-xl-6">
                <nav class="row gy-3 row-cols-auto align-items-center justify-content-center text-center py-3">
                    <a href="shopList.do?sort=hotel" class="col"><img src="assets/img/category/hotel.png" width="40"><span class="d-block text-dark">애견호텔</span></a>
                    <a href="shopList.do?sort=school" class="col"><img src="assets/img/category/hotel.png" width="40"><span class="d-block text-dark">애견유치원</span></a>
                    <a href="shopList.do?sort=cafe" class="col"><img src="assets/img/category/hotel.png" width="40"><span class="d-block text-dark">애견카페</span></a>
                    <a href="petShopList.do" class="col"><img src="assets/img/category/hotel.png" width="40"><span class="d-block text-dark">애견용품샵</span></a>
                    <a href="shopList.do?sort=park" class="col"><img src="assets/img/category/hotel.png" width="40"><span class="d-block text-dark">산책/공원</span></a>
                    <a href="shopList.do?sort=hospital" class="col"><img src="assets/img/category/hotel.png" width="40"><span class="d-block text-dark">동물병원</span></a>
                </nav>
            </div>
        </div>
    </div>
</div>
