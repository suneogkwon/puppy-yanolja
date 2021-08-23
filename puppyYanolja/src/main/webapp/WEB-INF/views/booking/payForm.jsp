<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript"
	src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>

<style>
.css-1pfv6fx {
	width: 100%;
	padding: 0 2.4rem 5px 0;
	margin-left: 5px;
	margin-top: 5px;
	border: 0;
	border-bottom: 1px solid lightgrey;
	text-align: left;
	font-size: 1.4rem;
	color: #1a1a1a;
	background-color: transparent;
}

.red {
	color: red;
}

.size {
	font-size: 1.4rem;
}

.small-font {
	margin-left: 5px;
	margin-top: 5px;
	font-size: 0.8rem;
	color: gray;
}

.notice {
	font-weight: bold;
	color: #e67000;
}

ul.fit {
	list-style-image:
		url( "data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIxNiI+PHBhdGggZD0iTTguNjY3IDcuMzMzdjRINy4zMzN2LTRoMS4zMzR6bTAtMi42NjZWNkg3LjMzM1Y0LjY2N2gxLjMzNHpNOCAxLjMzM0E2LjY3IDYuNjcgMCAwMDEuMzMzIDggNi42NyA2LjY3IDAgMDA4IDE0LjY2NyA2LjY3IDYuNjcgMCAwMDE0LjY2NyA4IDYuNjcgNi42NyAwIDAwOCAxLjMzM3oiIGZpbGw9IiNFNjcwMDAiIGZpbGwtcnVsZT0iZXZlbm9kZCIvPjwvc3ZnPg==" );
}
</style>




<div class="container">
	<br>
	<div class="container p-3 my-3 border">
		<form class="row g-3">
			<div class="col-12" style="margin-top: 20px;">
				<h4>
					<b>집사정보 <span class="red">*</span></b>
				</h4>
			</div>

			<div class="css-g9ui5n">
				<div style="width: 100%">
					<div class="css-cssveg">
						<label for="inputName" class="form-label"></label> 성명 <span
							class="red">*</span><input type="text" placeholder="성명을 입력해주세요."
							name="partnerInfo.name_" required value="" autocorrect="off"
							autocapitalize="none" class="css-1pfv6fx">
					</div>
					<input type="hidden" name="partnerInfo.name" value="">
				</div>
			</div>

			<div class="css-g9ui5n">
				<div style="width: 100%">
					<div class="css-cssveg">
						<label for="inputTel" class="form-label"></label> 휴대폰 번호 <span
							class="red">*</span><input type="text"
							placeholder="휴대폰번호를 입력해주세요." name="partnerInfo.tel" required
							value="" autocorrect="off" autocapitalize="none"
							class="css-1pfv6fx">
					</div>
					<input type="hidden" name="partnerInfo.tel" value="">
				</div>
				<div class="col-12 small-font">입력하신 번호는 안심번호로 변경되어 숙소에 전달됩니다.
					단, 안심번호로 처리가 어려운 경우에 한해 제한적으로 개인정보 제공 동의에 근거하여 실제 휴대폰번호가 전달될 수
					있습니다.</div>
			</div>


		</form>
	</div>

	<div class="container p-3 my-3 border">
		<form class="row g-3">
			<div class="col-12" style="margin-top: 20px;">
				<h4>
					<b>강아지 정보 <span class="red">*</span></b>
				</h4>
			</div>

			<div class="css-g9ui5n">
				<div style="width: 100%">
					<div class="css-cssveg">
						<label for="inputName" class="form-label"></label> 강아지 이름 <span
							class="red">*</span><input type="text"
							placeholder="강아지 이름을 입력해주세요." name="petInfo.name" required
							value="" autocorrect="off" autocapitalize="none"
							class="css-1pfv6fx">
					</div>
					<input type="hidden" name="petInfo.name" value="">
				</div>
			</div>

			<div class="css-g9ui5n">
				<div style="width: 100%">
					<div class="css-cssveg">
						<label for="inputBreed" class="form-label"></label> 견종 <span
							class="red">*</span><input type="text" placeholder="견종을 입력해주세요."
							name="petInfo.breed" value="" autocorrect="off"
							autocapitalize="none" class="css-1pfv6fx">
					</div>
					<input type="hidden" name="petInfo.breed" value="">
				</div>
			</div>

			<div class="css-g9ui5n">
				<div style="width: 100%">
					<div class="css-cssveg">
						<label for="inputKG" class="form-label"></label> 몸무게 <span
							class="red">*</span><input type="text"
							placeholder="강아지 몸무게를 입력해주세요." name="petInfo.kg" value=""
							autocorrect="off" autocapitalize="none" class="css-1pfv6fx">
					</div>
					<input type="hidden" name="petInfo.kg" value="">
				</div>
			</div>



			<div class="css-g9ui5n">
				<div style="width: 100%">
					<div class="css-cssveg">
						<label for="inputRef" class="form-label"></label> 참고사항 <input
							type="text" placeholder="강아지에 대해 알아야 할 참고사항을 입력해주세요."
							name="petInfo.ref" value="" autocorrect="off"
							autocapitalize="none" class="css-1pfv6fx">
					</div>
					<input type="hidden" name="petInfo.ref" value="">
				</div>
			</div>
		</form>
	</div>


	<div class="container p-3 my-3 border">
		<form class="row g-3">
			<div class="col-12" style="margin-top: 20px;">
				<h4>
					<b>금액 정보 </b>
				</h4>
			</div>
			<hr
				style="height: 0px; width: 100%; border: none; border-bottom: 0px dashed gray; border-top: 2px dashed lightgray;">

			<div class="col-6 size">결제 금액</div>
			<div class="col-6 text-end size">
				<b>55,000원</b>
			</div>
		</form>
	</div>

	<div class="container p-3 my-3 border">
		<div class="col-12" style="margin-top: 5px">
			<h4>
				<b>결제 수단 선택</b>
			</h4>

			<div class="container p-3 my-3 border" style="font-size: 20px">
				<div class="row">
					<div class="col-6">
						<div class="form-check">
							<input class="form-check-input" style="margin-top: 6px"
								type="radio" name="flexRadioDefault" id="flexRadioDefault2"
								checked> <label class="form-check-label"
								for="flexRadioDefault2"> <img
								src="https://image6.yanolja.com/payment/tPcTwmhcSkNTjk4O"
								alt="실시간계좌이체 아이콘" style="width: 40px;"> 계좌이체
							</label>
						</div>
					</div>
					<div class="col-6">
						<div class="form-check">
							<input class="form-check-input" style="margin-top: 6px"
								type="radio" name="flexRadioDefault" id="flexRadioDefault2"
								checked> <label class="form-check-label"
								for="flexRadioDefault2"> <img
								src="https://image6.yanolja.com/payment/SPAiBJQQVztxhFeq"
								alt="카드 아이콘" style="width: 40px"> 신용카드
							</label>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="container p-3 my-3 border">
		<div class="container p-3" style="background-color: #fef8f2;">
			<ul class="fit">
				<li><div class="notice">현장결제</div>
					<div>추가인원 비용등의 현장결제 발생 상품을 확인하세요.</div>
					<p></li>
				<li><div class="notice">취소불가 및 수수료</div>
					<div>취소 및 환불규정에 따라 취소불가, 수수료가 발생 할 수 있습니다.</div>
					<p></li>
				<li><div class="notice">미성년자 및 법정대리인 필수</div>
					<div>미성년자는 법정대리인 동행 없이 투숙이 불가능합니다.</div></li>
			</ul>
		</div>


		<p>
		<div class="form-check" style="font-size: 16px">
			<input class="form-check-input" type="checkbox" value=""
				id="defaultCheck1"> <label class="form-check-label"
				for="defaultCheck1"> [필수] 만 14세 이상 이용 동의 </label>

		</div>
	</div>

	<div class="d-grid gap-2">

		<button class="btn btn-primary" id="check_module" type="button"
			style="color: white; height: 30pt;">원 결제하기</button>
	</div>

	<script>
		$("#check_module").click(function() {
			var IMP = window.IMP; // 생략가능
			IMP.init('imp06685271');
			IMP.request_pay({
				pg : 'html5_inicis',
				/*
				 'kakao':카카오페이,
				 html5_inicis':이니시스(웹표준결제)
				 'nice':나이스페이
				 'jtnet':제이티넷
				 'uplus':LG유플러스
				 'danal':다날
				 'payco':페이코
				 'syrup':시럽페이
				 'paypal':페이팔
				 */
				pay_method : 'card',
				/*
				 'samsung':삼성페이,
				 'card':신용카드,
				 'trans':실시간계좌이체,
				 'vbank':가상계좌,
				 'phone':휴대폰소액결제
				 */
				merchant_uid : 'merchant_' + new Date().getTime(),
				/*
				 merchant_uid에 경우
				 https://docs.iamport.kr/implementation/payment
				 위에 url에 따라가시면 넣을 수 있는 방법이 있습니다.
				 참고하세요.
				 나중에 포스팅 해볼게요.
				 */
				name : '주문명:결제테스트',
				//결제창에서 보여질 이름
				amount : 1000,
				//가격
				buyer_email : 'iamport@siot.do',
				buyer_name : '홍길동',
				buyer_tel : '010-1111-2222',
				buyer_addr : '서울특별시 강남구 삼성동',
				buyer_postcode : '123-456',
			/*
			 m_redirect_url: 'https://www.yourdomain.com/payments/complete'
			 모바일 결제시,
			 결제가 끝나고 랜딩되는 URL을 지정
			 (카카오페이, 페이코, 다날의 경우는 필요없음. PC와 마찬가지로 callback함수로 결과가 떨어짐)
			 */
			}, function(rsp) {
				console.log(rsp);
				if (rsp.success) {
					var msg = '결제가 완료되었습니다.';
					msg += '고유ID : ' + rsp.imp_uid;
					msg += '상점 거래ID : ' + rsp.merchant_uid;
					msg += '결제 금액 : ' + rsp.paid_amount;
					msg += '카드 승인번호 : ' + rsp.apply_num;
				} else {
					var msg = '결제에 실패하였습니다.';
					msg += '에러내용 : ' + rsp.error_msg;
				}
				alert(msg);
			});
		});
	</script>

	<div class="col-12 small-font">(주)강아지야놀자는 통신판매중개업자로서, 통신판매의 당사자가
		아니라는 사실을 고지하며 상품의 결제, 이용 및 환불 등과관련한 의무와 책임은 각 판매자에게 있습니다.</div>

</div>