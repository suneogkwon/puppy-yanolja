<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
        .review_star{
            width: 20px;
            height: 20px;
        }
        .gps_img {
            height: 20px;
        }
        .room_imgBox {
            height: 250px;
            overflow:hidden;
            margin:0 auto;
        }
        .room_img {
            width:100%;
            height:100%;
            object-fit:cover;
        }
        .btn-primary {
            color : #fff;
        }
        #carouselExampleIndicators {
            height: 700px;
            overflow:hidden;
            margin:0 auto;
        }
        .carousel-item > img {
            width:100%;
            height:100%;
            object-fit:cover;
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
            color: #ff6435;
            font-weight: 500em;
        }
        .review_contents{
            color: #7c7c7c;
        }
    </style>
    <div class="container">
        <!-- 호텔 이미지 사진 -->
        <div class="row">
            <div id="carouselExampleIndicators" class="carousel slide col-12" data-bs-ride="carousel">
                <div class="carousel-indicators">
                  <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                  <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                  <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                </div>
                <div class="carousel-inner">
                  <div class="carousel-item active">
                    <img src="assets/img/hotel06.jpg" class="d-block w-100" alt="...">
                  </div>
                  <div class="carousel-item">
                    <img src="assets/img/hotel05.jpg" class="d-block w-100" alt="...">
                  </div>
                  <div class="carousel-item">
                    <img src="assets/img/hotel04.jpg" class="d-block w-100" alt="...">
                  </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Next</span>
                </button>
              </div>
        </div>
        
        <!-- 호텔 이름-->
        <div class="row g-2">
            <div class="col-6 p-4"><h3 class="fw-bold">신라스테이 역삼점</h3>
            &nbsp;&nbsp;<img src="assets/img/review_star.jpg" class="review_star">&nbsp;&nbsp;<b>4.0</b><small>/5</small>
            &nbsp;&nbsp;공덕역 1번출구 도보 3분 
            &nbsp;&nbsp;<button type="button" class="btn btn-dark position-relative" >review
                <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
                  99+
                </span>
              </button>
            </div>
            <div class="col-6 p-4 text-end">
                <span class="badge rounded-pill bg-dark">Fackbook</span>
                <span class="badge rounded-pill bg-dark">Twitter</span>
                <span class="badge rounded-pill bg-dark">Instargram</span>
            </div>
         </div>
         <!-- 체크인,체크아웃 -->
         <div class="row">
             <div class="col-12">
               <div class="row g-2 border">
                   <div class="col-12 p-3 text-center">
                    체크인 날짜&emsp;&emsp;<input type="date">&emsp;&emsp;
                    체크아웃 날짜&emsp;&emsp;<input type="date">
                </div>
               </div>  
             </div>
         </div>
         <br>
         <!-- 방 -->
         <div class="row g-2 border">
             <div class="col-sm-12 col-md-4 p-2">
                 <div class="room_imgBox">
                     <img src="assets/img/room01.jpg" alt="room01.jpg" class="room_img">
                 </div>
             </div>
             <div class="col-sm-12 col-md-8 p-3">
                <h4><b>스탠다드 ROOM</b></h4>
                <p>기준 1명/ 최대 2명</p>
                <p><small>체크인 15:00 부터 / 체크아웃 12:00 까지</small></p>
                <br>
                <div class="row">
                    <div class="col-12 text-end">
                        판매가 <p><del>250,000원</del>&nbsp;&nbsp;<strong>115,000원</strong></p>
                        <button type="button" class="btn btn-primary">객실 예약하기</button>
                    </div>
                </div>
            </div>
         </div>
         <!-- 방 -->
         <div class="row g-2 border">
            <div class="col-sm-12 col-md-4 p-2">
                <div class="room_imgBox">
                    <img src="assets/img/room01.jpg" alt="room01.jpg" class="room_img">
                </div>
            </div>
            <div class="col-sm-12 col-md-8 p-3">
               <h4><b>스탠다드 ROOM 1</b></h4>
               <p>기준 1명/ 최대 2명</p>
               <p><small>체크인 15:00 부터 / 체크아웃 12:00 까지</small></p>
               <br>
               <div class="row">
                   <div class="col-12 text-end">
                       판매가 <p><del>250,000원</del>&nbsp;&nbsp;<strong>115,000원</strong></p>
                       <button type="button" class="btn btn-primary">객실 예약하기</button>
                   </div>
               </div>
           </div>
        </div>
        <!-- 방 -->
        <div class="row g-2 border">
            <div class="col-sm-12 col-md-4 p-2">
                <div class="room_imgBox">
                    <img src="assets/img/room01.jpg" alt="room01.jpg" class="room_img">
                </div>
            </div>
            <div class="col-sm-12 col-md-8 p-3">
               <h4><b>스탠다드 ROOM 2</b></h4>
               <p>기준 1명/ 최대 2명</p>
               <p><small>체크인 15:00 부터 / 체크아웃 12:00 까지</small></p>
               <br>
               <div class="row">
                   <div class="col-12 text-end">
                       판매가 <p><del>250,000원</del>&nbsp;&nbsp;<strong>115,000원</strong></p>
                       <button type="button" class="btn btn-primary">객실 예약하기</button>
                   </div>
               </div>
           </div>
        </div>
        <!-- 방 -->
        <div class="row g-2 border">
            <div class="col-sm-12 col-md-4 p-2">
                <div class="room_imgBox">
                    <img src="assets/img/room01.jpg" alt="room01.jpg" class="room_img">
                </div>
            </div>
            <div class="col-sm-12 col-md-8 p-3">
               <h4><b>스탠다드 ROOM 3</b></h4>
               <p>기준 1명/ 최대 2명</p>
               <p><small>체크인 15:00 부터 / 체크아웃 12:00 까지</small></p>
               <br>
               <div class="row">
                   <div class="col-12 text-end">
                       판매가 <p><del>250,000원</del>&nbsp;&nbsp;<strong>115,000원</strong></p>
                       <button type="button" class="btn btn-primary">객실 예약하기</button>
                   </div>
               </div>
           </div>
        </div><br><br>
        <!-- 상세정보 -->
        <div class="row">
            <div class="col-12"><h4><b>기본정보</b></h4></div>
            <div class="col-12">
                <div class="row p-2">
                    <div class="col-12 border p-3">
                        딜라이브 셋톱박스 대여 (TV에 연결하여 넷플릭스, 유튜브 등 다양한 OTT (온라인 동영상 스트리밍)서비스를 즐길 수 있는 OTT 연동 기기 대여)
            <br><b>[이용 안내]</b><br>
            파우치 구성 : 딜라이브 셋톱박스 1개, HDMI 선 1개, 전원연결선 1개, 안내 리플렛
            체크인 시 딜라이브 셋톱박스 파우치를 대여하여 드리며, 리플렛에 게재된 안내에 따라 TV와 셋톱박스를 직접 연결해주시기 바랍니다.
            파우치에 동봉된 안내 리플렛에 따라 셋톱박스와 TV 연결 후 원하시는 OTT 서비스를 시청하실 수 있습니다.
            넷플릭스, 유튜브 등 OTT 서비스 채널은 개인 계정 로그인이 필요하며 체크아웃 전 반드시 로그아웃하여 주시기 바랍니다.
            체크아웃 시 프런트 데스크에 셋톱박스 파우치를 반납하여 주시기 바랍니다.
            고객 부주의로 인한 기기 손상 또는 분실 시 그에 상응하는 금액이 부과될 수 있습니다.
            더블 침대 1개
            2인 기준 / 인원 추가 불가
            체크인 15:00 이후, 체크아웃 12:00 이전
            TV, 에어컨, 개별 난방, 책상
            샤워 시설 혹은 욕조, 비데, 아베다 욕실 용품, 가운
            냉장고, 커피포트, 무료 생수 2병
            유니버셜 어댑터(110V & 220V)
            무료 Wi-Fi
            내국인만 예약, 투숙 가능합니다.
            3~16층
                    </div>
                </div>
            </div>
        </div><br><br>
        <!-- 지도 -->
        <div class="row">
            <div class="col-12 p-2">
                <h4 class="fw-bold">위치</h4>                
                &emsp;<img src="assets/img/gps_img.jpg" class="gps_img" >&emsp;서울특별시 마포구 마포대로 83</div>            
        </div>
        <div class="row">            
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3165.121353343341!2d127.04359230266677!3d37.50505588406573!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca4079846d83b%3A0xe33c0e22646edf36!2z7Iug65287Iqk7YWM7J20IOyXreyCvA!5e0!3m2!1sko!2skr!4v1629183992744!5m2!1sko!2skr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
        </div><br><br>
        <!-- 후기 -->
        <div class="row" id="review">
            <div class="col-12"><h4 class="fw-bold">후기 (4,263개)</h4></div>
        </div><br>
        <div class="row">
            <div class="col-1 text-end">
                <img src="assets/img/review_star.jpg" class="review_starTop">
            </div>
            
            <div class="col-4">
                <b class="review_Number">4.6</b>/5
            </div>
            <div class="col-7 row text-end">
                <div class="col-12"> </div>
                <div class="col-12"> </div>
                <div class="col-12"><small>최근 12개월 누적 평점 기준 안내</small></div>
            </div>
        </div>
        <hr>
        <div class="row">
            <div class="col-12">
                <div class="row">
                    <div class="col-12 ">
                        <img src="assets/img/review_star.jpg" class="review_star"> 
                        <img src="assets/img/review_star.jpg" class="review_star"> 
                        <img src="assets/img/review_star.jpg" class="review_star"> 
                        <img src="assets/img/review_star.jpg" class="review_star"> 
                        <img src="assets/img/review_halfstar.jpg" class="review_star"> 
                        &emsp;<span class="review_id">abcd12345</span></div><br><br>
                    <div class="col-12 "><p class="review_contents">차량이 suv라 주차에 대해 걱정이 있었으나, 큰 차도 가능한 기계주차가 마련되어 있어 상당히 놀랐습니다. 같은 업종 사원으로써, 기계주차 시스템이 잘 되어 있어 좋았습니다. 
                        객실도 상당히 깨끗했고 같이 간 일행도 만족해 하였습니다. 덕분에 푹 쉬다가 갑니다. 항상 화이팅 하세요~ 감사합니다</p></div>
                </div>
            </div>
        </div>
        <hr>
        <div class="row">
            <div class="col-12">
                <div class="row">
                    <div class="col-12 ">
                        <img src="assets/img/review_star.jpg" class="review_star"> 
                        <img src="assets/img/review_star.jpg" class="review_star"> 
                        <img src="assets/img/review_halfstar.jpg" class="review_star"> 
                        <img src="assets/img/review_emptystar.jpg" class="review_star"> 
                        <img src="assets/img/review_emptystar.jpg" class="review_star"> 
                        &emsp;<span class="review_id">abcd12345</span></div><br><br>
                    <div class="col-12 "><p class="review_contents">차량이 suv라 주차에 대해 걱정이 있었으나, 큰 차도 가능한 기계주차가 마련되어 있어 상당히 놀랐습니다. 같은 업종 사원으로써, 기계주차 시스템이 잘 되어 있어 좋았습니다. 
                        객실도 상당히 깨끗했고 같이 간 일행도 만족해 하였습니다. 덕분에 푹 쉬다가 갑니다. 항상 화이팅 하세요~ 감사합니다</p></div>
                </div>
            </div>
        </div>
        <hr>
        <div class="row">
            <div class="col-12">
                <div class="row">
                    <div class="col-12 ">
                        <img src="assets/img/review_star.jpg" class="review_star"> 
                        <img src="assets/img/review_star.jpg" class="review_star"> 
                        <img src="assets/img/review_star.jpg" class="review_star"> 
                        <img src="assets/img/review_star.jpg" class="review_star"> 
                        <img src="assets/img/review_emptystar.jpg" class="review_star"> 
                        &emsp;<span class="review_id">abcd12345</span></div><br><br>
                    <div class="col-12 "><p class="review_contents">차량이 suv라 주차에 대해 걱정이 있었으나, 큰 차도 가능한 기계주차가 마련되어 있어 상당히 놀랐습니다. 같은 업종 사원으로써, 기계주차 시스템이 잘 되어 있어 좋았습니다. 
                        객실도 상당히 깨끗했고 같이 간 일행도 만족해 하였습니다. 덕분에 푹 쉬다가 갑니다. 항상 화이팅 하세요~ 감사합니다</p></div>
                </div>
            </div>
        </div>
        
        <br><br><br><br><br>
    </div>
