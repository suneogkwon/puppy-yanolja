<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<div class="container">
	<div class="my-5 text-center">
		<h2 class="text-primary fw-bold">${member.name }님!</h2>
		<h4>회원가입을 진심으로 축하합니다.</h4>
		<div class="mt-4">
			<a href="#" class="btn btn-lg btn-outline-primary me-3">
                <c:if test="${member.role == 'BUYER'}">반려동물</c:if>
                <c:if test="${member.role == 'PARTNER'}">상점</c:if>
                 등록
            </a>
			<a href="home.do" class="btn btn-lg btn-outline-dark ms-3">홈으로</a>
		</div>
	</div>
</div>
