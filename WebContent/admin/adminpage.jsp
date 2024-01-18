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

<body style="background-color:rgb(193,243,253);">
        <jsp:include page="../module/top.jsp" />
    <div class="contents_registersuccess">
        <div class="view_top">
            <div class="logofonts" style="margin-top: 30px;">
                <br><img src="../img/img_logo.png" width="100px" height="100px">
                &nbsp;&nbsp; 관리자페이지
            </div>
        </div>
        <div class="admin_nav">
            <ul>
                <li><form action="../list.do" method="post"><button type="submit" class="btn btn-primary admin_nav_button">회원목록</button></form></li>
                <li><button type="submit" class="btn btn-primary admin_nav_button">게시글목록</button></li>
                <li><button type="submit" class="btn btn-primary admin_nav_button">게임정보</button></li>
                <li><button type="submit" class="btn btn-primary admin_nav_button">댓글목록</button></li>
            </ul>
        </div>
        <div class="registersuccess_text logofonts">
            <br>

        </div>
    </div>
        <jsp:include page="../module/footer.jsp" />
</body>

</html>