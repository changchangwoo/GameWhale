<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="../style.css?after">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <title>register</title>
</head>

<body>
        <jsp:include page="../module/top.jsp" />
    <div class="contents_register">
        <div class="view_top">
        <div class="logofonts" style="margin-top: 30px;">
            <br><img src="../img/img_logo.png" width="100px" height="100px">
            &nbsp;&nbsp; 회원 가입 </div>
        </div>
        <form action="../signup.do" method="post">
        <div class="register_form_id">
            <div class="text_form_middle" style="margin-top: 30px;">계정 정보 </div><br>
            <input type="text" name="memberid" class="form-control register_label" placeholder="아이디"><br>
            <button type="button" class="btn btn-secondary " style="width: 100px; height: 50px;">중복확인</button>
            <br><br><br>
            <input type="text" name="password" class="form-control register_label" placeholder="비밀번호"><br>
            <input type="text" name="pwcheck" class="form-control register_label" placeholder="비밀번호 확인">
            <br><br><br>
        </div>
        <div class="register_form_privacy">
            <div class="text_form_middle" style="margin-top: 30px;">개인 정보 </div><br>
            <input type="text" name="nickname" class="form-control register_label" placeholder="닉네임"><br>
            <div class="text_form02"> * 닉네임은 커뮤니티에서만 사용합니다</div><br>
            <input type="text" name="membername" class="form-control register_label" placeholder="이름"><br>
            <div class="input-group register_label">
                <input type="text" name="email1" class="form-control" placeholder="이메일주소">
                <span class="input-group-text">@</span>
                <input type="text" name="email2" class="form-control " placeholder="naver.com">
            </div>
            <br>
            <input type="text" name="phonenumber" class="form-control register_label" placeholder="전화번호"><br>
            <input type="radio" class="btn-check " name="options-outlined" id="success-outlined" value="M">
            <label class="btn btn-outline-primary register_label_gender" for="success-outlined"> 남성 </label>
            <input type="radio" class="btn-check" name="options-outlined" id="danger-outlined" value="F">
            <label class="btn btn-outline-danger register_label_gender" for="danger-outlined"> 여성 </label>
            <br>
        </div>
        <button type="submit" class="btn btn-primary register_label" style="margin-top: 50px;">회원가입</button>
        </form>
    </div>
        <jsp:include page="../module/footer.jsp" />
</body>

</html>