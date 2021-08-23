<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="container">
    <div id="signUpFormWapper" class="w-50 mx-auto border border-primary my-5 bg-white shadow-sm">
        <form class="p-3" id="signUpForm" name="signUpForm" action="memberSignUp.do" method="post" onsubmit="return frmCheck(this)">
            <h3 class="text-center py-4 fw-bold text-primary border-bottom">일반 회원가입</h3>
            <div class="row py-4 px-2 gy-3">
                <input type="hidden" id="idChkFlag" value="0">
                <input type="hidden" id="pwdChkFlag" value="0">
                <div class="col-12">
                    <label for="mId" class="form-label">아이디</label>
                    <div class="input-group">
                        <input type="text" id="mId" name="mId" class="form-control" required>
                        <button type="button" class="btn btn-dark" onclick="idCheck(mId.value)">중복확인</button>
                    </div>
                </div>

                <div class="col-6">
                    <label for="mPwd" class="form-label">비밀번호</label>
                    <input type="password" id="mPwd" name="mPwd" class="form-control" required>
                </div>

                <div class="col-6">
                    <label for="mPwdChk" class="form-label">비밀번호 확인</label>
                    <input type="password" id="mPwdChk" name="mPwdChk" class="form-control" required>
                    <div id="pwdChkText" class="form-text"></div>
                </div>

                <div class="col-6">
                    <label for="mName" class="form-label">이름</label>
                    <input type="text" id="mName" name="mName" class="form-control" required>
                </div>

                <div class="col-6">
                    <label for="mHp" class="form-label">휴대폰번호</label>
                    <input type="text" id="mHp" name="mHp" class="form-control" required>
                </div>

                <div class="col-12">
                    <label for="mEmail" class="form-label">이메일</label>
                    <input type="email" id="mEmail" name="mEmail" class="form-control" required>
                </div>

                <div class="col-12">
                    <div class="form-check">
                        <input type="checkbox" id="registerTerm" name="registerTerm" class="form-check-input" required>
                        <label for="registerTerm" class="form-check-label h5 fw-bold">회원가입약관</label>
                    </div>
                    <textarea class="w-100 p-2 overflow-auto" style="height:150px;" readonly>1. 개인정보 수집목적 및 이용목적

가. 서비스 제공에 관한 계약 이행 및 서비스 제공에 따른 요금정산
콘텐츠 제공 , 구매 및 요금 결제 , 물품배송 또는 청구지 등 발송 , 금융거래 본인 인증 및 금융 서비스

나. 회원 관리
회원제 서비스 이용에 따른 본인확인 , 개인 식별 , 불량회원의 부정 이용 방지와 비인가 사용 방지 , 가입 의사 확인 , 연령확인 , 만14세 미만 아동 개인정보 수집 시 법정 대리인 동의여부 확인, 불만처리 등 민원처리 , 고지사항 전달

2. 수집하는 개인정보 항목 : 이름 , 생년월일 , 성별 , 로그인ID , 비밀번호 , 자택 전화번호 , 휴대전화번호 , 이메일 , 14세미만 가입자의 경우 법정대리인의 정보

3. 개인정보의 보유기간 및 이용기간
원칙적으로, 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체 없이 파기합니다. 단, 다음의 정보에 대해서는 아래의 이유로 명시한 기간 동안 보존합니다.

가. 회사 내부 방침에 의한 정보 보유 사유
o 부정거래 방지 및 쇼핑몰 운영방침에 따른 보관 : OO년

나. 관련 법령에 의한 정보보유 사유
o 계약 또는 청약철회 등에 관한 기록

-보존이유 : 전자상거래등에서의소비자보호에관한법률
-보존기간 : 5년

o 대금 결제 및 재화 등의 공급에 관한 기록

-보존이유: 전자상거래등에서의소비자보호에관한법률
-보존기간 : 5년

o 소비자 불만 또는 분쟁처리에 관한 기록

-보존이유 : 전자상거래등에서의소비자보호에관한법률
-보존기간 : 3년

o 로그 기록

-보존이유: 통신비밀보호법
-보존기간 : 3개월

※ 동의를 거부할 수 있으나 거부시 회원 가입이 불가능합니다.</textarea>
                </div>
            </div>
            <div class="row mt-3">
                <div class="col-6 text-end">
                    <button type="button" onclick="history.back()" class="w-50 btn btn-lg btn-outline-dark">뒤로</button>
                </div>
                <div class="col-6">
                    <button type="submit" class="w-50 btn btn-lg btn-primary text-white">회원가입</button>
                </div>
            </div>
        </form>
    </div>
</div>
<script>
    $(function () {
        $('#mPwdChk').on('change', pwdChk);
        $('#mPwd').on('change', pwdChk);
        $('#mId').on('change', () => {
            idChkFlag.value = 0;
            $('#mId').removeClass('is-valid');
        })
    });

    function frmCheck(frm) {
        if (frm.idChkFlag.value == 0) {
            alert('아이디 중복확인 해주세요.');
            return false;
        }
        if (frm.pwdChkFlag.value == 0) {
            alert('비밀번호가 다릅니다.');
            return false;
        }

        return true;
    }

    function idCheck(id) {
        if (id == "") {
            alert('아이디를 입력해주세요.');
            return;
        }
        $.ajax({
            url: "memberIdCheck.do",
            method: "post",
            dataType: "json",
            data: {
                id: id
            },
            success: function (result) {
                alert(result['result']);
                idChkFlag.value = result['flag'];

                if (result['flag'] == 1) {
                    $('#mId').addClass('is-valid');
                }
            }

        })
    }

    function pwdChk() {
        let pwd = $('#mPwd');
        let rpwd = $('#mPwdChk');
        let result = $('#pwdChkText');

        if (rpwd.val() != "") {
            if (pwd.val() == rpwd.val()) {
                result.text("비밀번호가 일치합니다.");
                rpwd.addClass('is-valid');
                rpwd.removeClass('is-invalid');
                pwdChkFlag.value = 1;
            } else {
                result.text("비밀번호가 다릅니다.");
                rpwd.addClass('is-invalid');
                rpwd.removeClass('is-valid');
                pwdChkFlag.value = 0;
            }
        }
    }
</script>
