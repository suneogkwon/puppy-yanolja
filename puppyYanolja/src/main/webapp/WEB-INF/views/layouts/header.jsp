<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="container-fluid border-bottom shadow-sm bg-white">
    <div class="container">
        <div class="row align-items-center justify-content-center">
            <div class="col-12 col-md-9">
                <nav class="nav justify-content-end fw-bold">
                    <c:if test="${not empty member}">
                        <a href="logout.do" class="nav-link px-2">Logout</a>
                        <a href="mypage.do" class="nav-link px-2">My page</a>
                        <a href="wishlist.do" class="nav-link px-2">Wishlist</a>
                    </c:if>
                    <c:if test="${empty member}">
                        <a href="login.do" class="nav-link px-2">Login</a>
                        <a href="registerForm.do" class="nav-link px-2">Register</a>
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
                    <a href="reservationSelectForm.do" class="col"><img src="assets/img/category/hotel.png" width="40"><span class="d-block text-dark">애견호텔</span></a>
                    <a href="#" class="col"><img src="assets/img/category/hotel.png" width="40"><span class="d-block text-dark">애견유치원</span></a>
                    <a href="#" class="col"><img src="assets/img/category/hotel.png" width="40"><span class="d-block text-dark">애견카페</span></a>
                    <a href="#" class="col"><img src="assets/img/category/hotel.png" width="40"><span class="d-block text-dark">애견샵</span></a>
                    <a href="petShopList.do" class="col"><img src="assets/img/category/hotel.png" width="40"><span class="d-block text-dark">애견용품샵</span></a>
                    <a href="#" class="col"><img src="assets/img/category/hotel.png" width="40"><span class="d-block text-dark">산책/공원</span></a>
                    <a href="#" class="col"><img src="assets/img/category/hotel.png" width="40"><span class="d-block text-dark">동물병원</span></a>
                </nav>
            </div>
        </div>
    </div>
</div>
