<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="container">
	<div class="row">
		<div class="col-12 text-center">
			<br>
			<h3>상품 등록</h3>
		</div>
	</div>
	<hr>
	<!-- 상품 등록 폼 -->
	<form id="itemInsert" name="itemInsert" action="itemUpload.do" method="post" enctype="multipart/form-data">
		<input type="hidden" id="shopNo" name="shopNo" value="1">
		<!-- 상품명 -->
		<div class="row">
			<div class="col-2">상품명</div>
			<div class="col-10">
				<input type="text" id="itName" name="itName" value="" size="40"
					placeholder="상품명을 입력하세요">
			</div>
		</div>
		<br>
		<!-- 브랜드명 -->
		<div class="row">
			<div class="col-2">브랜드명</div>
			<div class="col-10">
				<input type="text" id="itBrand" name="itBrand" value="" size="40"
					placeholder="브랜드명을 입력하세요">
			</div>
		</div>
		<br>
		<!-- 상품 카테고리 -->
		<div class="row">
			<div class="col-2">상품 카테고리</div>
			<div class="col-10">
				<select id="itCategory" name='itCategory'>
					<option value='' selected>-- 선택 --</option>
					<option value="사료">사료</option>
					<option value="간식">간식</option>
					<option value="용품">용품</option>
				</select>
			</div>
		</div>
		<br>
		<!-- 간단 설명 -->
		<div class="row">
			<div class="col-2">홍보 문구</div>
			<div class="col-10">
				<input type="text" id="itExplanText" name="itExplanText" value=""
					size="60" placeholder="간단한 홍보 문구를 입력하세요(50자 이하)">
			</div>
		</div>
		<br>
		<!-- 가격 -->
		<div class="row">
			<div class="col-12">
				<div class="row">
					<div class="col-2">가격</div>
					<div class="col-4">
						<input type="text" id="custPrice" name="custPrice" value=""
							size="20" placeholder="가격">
					</div>
					<div class="col-2">판매가격</div>
					<div class="col-4">
						<input type="text" id="price" name="price" value="" size="20"
							placeholder="실제 판매가격">
					</div>
				</div>
			</div>
			<div class="col-12">
				<div class="row">
					<div class="col-2"></div>
					<div class="col-4">
						<small class="text-black-50"> * 판매금액 ex) 10,000원 -> 10000 입력</small>
					</div>
					<div class="col-2"></div>
					<div class="col-4">
						<small class="text-black-50"> * 실제 판매할 금액 ex) 8,000원 -> 8000 입력</small>
					</div>
				</div>
			</div>
		</div><br>
		<!-- 적립금 & 배송비 -->
		<div class="row">
			<div class="col-12">
				<div class="row">
					<div class="col-2">적립금</div>
					<div class="col-4">
						<input type="text" id="saveMoney" name="saveMoney" value=""
							size="20" placeholder="적립금 입력">
					</div>
					<div class="col-2">배송비</div>
					<div class="col-4">
						<input type="text" id="shippingCharge" name="shippingCharge" value=""
							size="20" placeholder="배송비 입력">
					</div>
				</div>
			</div>
			<div class="col-12">
				<div class="row">
					<div class="col-2"></div>
					<div class="col-4">
						<small class="text-black-50"> * 적립금 ex) 판매금액의 0.1%, 100원 -> 100 입력</small>
					</div>
					<div class="col-2"></div>
					<div class="col-4">
						<small class="text-black-50"> * 배송비 금액 ex) 3,000원 -> 3000 입력</small>
					</div>
				</div>
			</div>
		</div><br>
		<!-- 메인 이미지 -->
		<div class="row">
			<div class="col-12">
				<div class="row">
					<div class="col-3">대표 이미지(상품 썸네일)</div>
					<div class="col-9">
						<input type="file" id="mainFile" name="mainFile" size="60">
					</div>	
				</div>
			</div>
			<div class="col-12"	>
				<div class="row">
					<div class="col-3"></div>
					<div class="col-9">
						<small class="text-black-50"> * 최대 파일 사이즈 100MB</small>
					</div>	
				</div>
			</div>
		</div><br>
		<!-- 상세 이미지 -->
		<div class="row">
			<div class="col-12">
				<div class="row">
					<div class="col-3">상세 이미지</div>
					<div class="col-9">
						<input type="file" id="subFile" name="subFile" size="60">
					</div>	
				</div>
			</div>
			<div class="col-12"	>
				<div class="row">
					<div class="col-3"></div>
					<div class="col-9">
						<small class="text-black-50"> * 최대 파일 사이즈 100MB</small>
					</div>	
				</div>
			</div>
		</div>
		<br><br>
		<div class="row">
			<div class="col-12 text-center">
				<input id="itemInsert" name="itemInsert" class="btn btn-primary" type="submit" value="등록">
				<input id="itemInsert" name="itemInsert" class="btn btn-primary" type="reset" value="취소">
			</div>
		</div>
	</form>
</div>