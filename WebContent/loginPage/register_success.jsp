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
    <title>register_succeess</title>
</head>

<body>
        <jsp:include page="../module/top.jsp" />
    <div class="contents_registersuccess">
        <div class="view_top">
            <div class="logofonts" style="margin-top: 30px;">
                <br><img src="../img/img_logo.png" width="100px" height="100px">
                &nbsp;&nbsp; 회원 가입 
            </div>
        </div>
        <div class="registersuccess_text logofonts">
            가입이 완료되었습니다!<br>
            이제 로그인 할 수 있습니다!<br><br>
            <button type="button" class="btn btn-primary register_label" onclick="location.href='login.jsp';" style="width: 500px; height: 100px;">로그인하기</button>
        </div>
    </div>
        <jsp:include page="../module/footer.jsp" />
</body>

</html>