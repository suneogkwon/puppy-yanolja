<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="container">
        <br>
        <div><h6><b>상품번호 123456789</b></h6></div>
        <hr>
        <!-- 상품이미지 & 구매 -->
        <div class="row p-4">
            <div class="col-4">
                <div class="border text-center">
                    <img class="img-fluid" src="assets/img/booking/product01.jpg" alt="상품이미지">
                </div>
            </div>
            <div class="col-7" style="margin-left: 30px;">
                </p>
                <div class="row">
                    <div class="col-3">
                       <h4><b>상품명</b></h4>
                    </div>
                    <div class="col-9">
                        <h2><b>피부모질 닥터독 사료2kg</b></h2>
                        <h6 class="text-black-50">맛있는 우리 아이 간식 NO.1 ! 최다구매율 제품 순위 1위 </h6>
                    </div>
                </div>
                </p>
                <div class="row text-danger">
                    <div class="col-3">
                        <h4><b>판매가</b></h4>
                    </div>
                    <div class="col-9">
                        <h4><del class="text-black-50">20,000원</del>&emsp;18,500원</h4>
                    </div>
                </div>
                </p>
                <div class="row">
                    <div class="col-3">
                        <h6>적립금</h6>
                    </div>
                    <div class="col-9">
                        <h6>150원(1%)</h6>
                    </div>
                </div>
                </p>
                <div class="row">
                    <div class="col-3">
                        <h6>배송비</h6>
                    </div>
                    <div class="col-9">
                        <h6>2,500 원 (결제금액 3만원 이상 무료 배송)</h6>
                    </div>
                </div>
                </p>
                <div class="row">
                    <div class="col-3">
                        <h6>최대구매수량</h6>
                    </div>
                    <div class="col-9">
                        <h6>5개</h6>
                    </div>
                </div>
                </p>
                <div class="row">
                    <div class="col-3">
                        <h6>수량</h6>
                    </div>
                    <div class="col-9">
                        <select>
                            <option >1개</option>
                            <option >2개</option>
                            <option >3개</option>
                            <option >4개</option>
                            <option >5개</option>
                        </select>
                    </div>
                </div>
                </p>
                <div class="row">
                    <div class="col-12">
                        <hr>
                    </div>
                </div>
                
                <div class="row">
                    <div class="col-6">
                        <div class="d-grid gap-2">
                            <button class="btn btn-dark p-3" type="button">장바구니</button>
                          </div>
                    </div>
                    <div class="col-6">
                        <div class="d-grid gap-2">
                            <button class="btn btn-danger p-3" type="button">구매하기</button>
                          </div>
                    </div>
                </div>
                
                
            </div>
        </div>
        <!--상품 상세페이지 & 후기-->
        <br>
        <div>
            <ul class="nav nav-tabs" id="myTab" role="tablist">
                <li class="nav-item" role="presentation">
                  <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home" type="button" role="tab" aria-controls="home" aria-selected="true">상세정보</button>
                </li>
                <li class="nav-item" role="presentation">
                  <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile" type="button" role="tab" aria-controls="profile" aria-selected="false">후기</button>
                </li>
              </ul>
              <div class="tab-content" id="myTabContent"><br>
                <div class="tab-pane fade show active text-center" id="home" role="tabpanel" aria-labelledby="home-tab">
                    <img class="img-fluid" src="assets/img/booking/details_skin_01.jpg" alt="상품상세페이지">
                </div>
                <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                                    
                </div>
              </div>
        </div>
    </div>