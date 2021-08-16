<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" href="/assets/css/app.css">
<script src="/assets/js/app.js"></script>
<div class="container-fluid border-bottom shadow-sm bg-white">
    <div class="container">
        <div class="row align-items-center justify-content-center">
            <div class="col">
                <nav class="nav justify-content-end">
                    <a href="#" class="nav-link">Login</a>
                    <a href="#" class="nav-link">Register</a>
                    <a href="#" class="nav-link">My page</a>
                    <a href="#" class="nav-link">Wishlist</a>
                </nav>
            </div>
            <div class="col-12 text-center position-relative">
                <img id="headerLogo" class="img-fluid" src="assets/img/logo.jpg" alt="Logo" style="height:150px;">
            </div>
            <div class="col-12 col-lg-6">
                <form id="searchForm" name="searchForm" action="" method="GET">
                    <div class="input-group mb-3">
                        <input type="text" class="form-control" placeholder="호텔명을 입력해주세요." aria-describedby="button-addon2">
                        <button class="btn btn-dark" type="button" id="button-addon2"><i class="xi-search"></i></button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>