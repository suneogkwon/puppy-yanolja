<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="container">

    <div id="loginWrapper" class="w-50 my-5 mx-auto border bg-white shadow border-primary">
        <div class="p-3">
            <h3 class="text-primary text-center fw-bold my-3">로그인</h3>
            <div class="mx-2 my-4">
                <form id="loginForm" name="loginForm" action="login.do" method="post">
                    <div class="row mx-2">
                        <label class="mb-3 col-3 col-form-label" for="m-id">ID</label>
                        <div class="col-9">
                            <input class="form-control" id="m-id" name="m-id" type="text" required>
                        </div>
                        <label class="mb-3 col-3 col-form-label" for="m-pwd">PASSWORD</label>
                        <div class="col-9">
                            <input class="form-control" id="m-pwd" name="m-pwd" type="password" required>
                        </div>
                    </div>
                    <div class="row mx-2">
                        <div class="col-12">
                            <button type="submit" class=" btn btn-lg btn-primary text-white w-100"><h5 class="m-0">로그인</h5></button>
                            <hr class="w-100">
                        </div>
                        <div class="col-6"><a href="memberSignUpForm.do" class="btn btn-outline-secondary text-dark w-100">일반<br/>회원가입</a></div>
                        <div class="col-6"><a href="partnerSignUpForm.do" class="btn btn-outline-info text-dark w-100">파트너<br/>회원가입</a></div>
                    </div>
                </form>
            </div>
        </div>
    </div>

</div>
