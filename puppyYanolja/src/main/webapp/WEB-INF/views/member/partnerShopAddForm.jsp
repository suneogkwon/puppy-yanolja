<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="container">
	<div class="row">
		<div class="col-12 text-center">
			<br>
			<h3>상점 등록</h3>
		</div>
	</div>
	<hr>
	<!-- 상점 등록 폼 -->
	<form id="shopInsert" name="shopInsert" action="partnerShopInsert.do" method="post" enctype="multipart/form-data">
		<input type="hidden" id="memberNo" name="memberNo" value="${member.no }">
		<!-- 운영 카테고리 -->
		<div class="row">
			<div class="col-2">운영 상점 카테고리</div>
			<div class="col-10">
				<select id="categoryNo" name='categoryNo'>
					<option value='' selected>-- 선택 --</option>
					<option value="1">애견호텔</option>
					<option value="2">애견유치원</option>
					<option value="3">애견카페</option>
					<option value="4">애견SHOP</option>
					<option value="5">애견산책/공원</option>
					<option value="6">애견병원</option>
				</select>
			</div>
		</div>
		<br>
		<!-- 상호명 -->
		<div class="row">
			<div class="col-2">상호명</div>
			<div class="col-10">
				<input type="text" id="companyName" name="companyName" value="" size="40"
					placeholder="상호명을 입력하세요">
			</div>
		</div>
		<br>
		<!-- 대표자명 -->
		<div class="row">
			<div class="col-2">대표자명</div>
			<div class="col-10">
				<input type="text" id="companyOwner" name="companyOwner" value="" size="40"
					placeholder="대표자명을 입력하세요">
			</div>
		</div>
		<br>
		<!-- 사업자 -->
		<div class="row">
			<div class="col-2">사업자번호</div>
			<div class="col-10">
				<input type="text" id="saupjaNo" name="saupjaNo" value="" size="40"
					placeholder="사업자번호를 입력 ex)206-86-61496">
			</div>
		</div>
		<br>
		<!-- 전화번호 -->
		<div class="row">
			<div class="col-2">대표 전화번호</div>
			<div class="col-10">
				<input type="text" id="companyTel" name="companyTel" value="" size="40"
					placeholder="전화번호를 입력 ex)070-0000-0000">
			</div>
		</div>
		<br>
		<!-- 사업장 위치 -->
		<div class="row">
			<div class="col-2">소재지 지역</div>
			<div class="col-10">
				<select id="locationNo" name='locationNo'>
					<option value='' selected>-- 선택 --</option>
					<option value="1">강남/역삼/삼성/신사/청담</option>
					<option value="2">서초/교대</option>
					<option value="3">잠실/송파/왕십리/강동</option>
					<option value="4">을지로/시청/명동</option>
					<option value="5">종로/인사동/동대문/강북</option>
					<option value="6">서울역/이태원/용산</option>
					<option value="7">....</option>
				</select>
			</div>
		</div>
		<br>
		<!-- 사업장 주소 -->
		<div class="row">
			<div class="col-2">사업장 실소재지 주소</div>
			<div class="col-10">
				<input type="text" id="companyAddr" name="companyAddr" value="" size="40"
					placeholder="사업장 소재지를 입력해주세요">
			</div>
		</div>
		<br>
		
		<!-- 사업장 우편번호 -->
		<div class="row">
			<div class="col-2">우편번호</div>
			<div class="col-10">
				<input type="text" id="companyZip" name="companyZip" value="" size="40"
					placeholder="소재지 우편번호를 입력해주세요">
			</div>
		</div>
		<br>
		<!-- 은행 -->
		<div class="row">
			<div class="col-2">거래 은행</div>
			<div class="col-10">
				<select id="bankName" name='bankName'>
					<option value='' selected>-- 선택 --</option>
					<option value="농협">농협</option>
					<option value="대구은행">대구</option>
					<option value="국민은행">국민</option>
					<option value="신한은행">신한</option>
					<option value="새마을은행">새마을</option>
					<option value="우리은행">우리</option>
				</select>
			</div>
		</div>
		<br>
		<!-- 계좌번호 -->
		<div class="row">
			<div class="col-2">계좌번호</div>
			<div class="col-10">
				<input type="text" id="bankNumber" name="bankNumber" value=""
					size="60" placeholder="계좌번호를 입력하세요 ex)0100-00100-020003">
			</div>
		</div>
		<br>
		<!-- 예금주 -->
		<div class="row">
			<div class="col-2">예금주</div>
			<div class="col-10">
				<input type="text" id="bankOwnerName" name="bankOwnerName" value=""
					size="60" placeholder="예금주 입력하세요">
			</div>
		</div>
		<br>
		
		<!-- 메인 이미지 -->
		<div class="row">
			<div class="col-12">
				<div class="row">
					<div class="col-3">대표 이미지</div>
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
					<div class="col-3">추가 이미지</div>
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
				<input id="shopInsert" name="shopInsert" class="btn btn-primary" type="submit" value="등록">
				<input id="shopInsert" name="shopInsert" class="btn btn-primary" type="reset" value="취소">
			</div>
		</div>
	</form>
</div>