<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="style.css">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <title>register_succeess</title>
</head>

<body>
	<%@ include file="../module/top.jsp" %>
    <div class="contents_research">
            <div class="logofonts" style="margin-top: 30px;">
                <br><img src="img/img_logo.png" width="0" height="0">
                로그인이 필요한 서비스입니다
                <br>
                <div class="text_form_small"> 지금 로그인하시고 <br>
                    게임 웨일의 모든 컨텐츠를 자유롭게 이용하세요!
                </div>
                <br><img src="img/icon_sad.png" width="300px" height="300px">
                <br>
                <button type="button" class="btn btn-primary register_label"
                style="margin-top: 150px; width: 250px!important;"
                onclick="location.href='${pageContext.request.contextPath}/loginPage/login.jsp';">로그인하기</button><br>
                <button type="button" class="btn btn-secondary register_label"
                style="margin-top: 10px; margin-bottom: 50px; width: 250px!important;"
                onclick="location.href='${pageContext.request.contextPath}/loginPage/register.jsp';">회원가입</button>
            </div>
     <%@ include file="../module/footer.jsp" %>
</body>

</html>