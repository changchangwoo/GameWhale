<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
        <c:if test="${userid == null}">
    	<jsp:forward page="restrict.jsp" />
    </c:if>
</head>

<body>
    <%@ include file="../module/top.jsp" %>
    <div class="contents_research">
        <section id="main" style="display: block;">
            <div class="logofonts" style="margin-top: 30px;">
                <br><img src="img/img_logo.png" width="0" height="0">
                나는 어떤 장르의 게임과 <br>
                어울릴까요?
                <br>
                <div class="text_form_small"> 간단한 설문조사를 통해<br>
                    내 취향에 맞는 인생게임을 찾아보세요
                </div>
                <br><img src="img/icon_think.png" width="300px" height="300px">
                <br>
                <button type="button" class="btn btn-primary register_label" onclick="js:begin();"
                    style="margin-top: 150px; width: 250px!important;">시작하기</button>
            </div>
        </section>

        <section id="qna" style="display: none;">
            <div class="qBox">
            </div>
            <div class="answerBox">
            </div>
        </section>

        <section id="result" class="mx-auto my-5 py-5 px-3">
            <h1>게임 성향을 추측해보면..</h1>
            <div class="resultname">
            </div>
            <div id="resultImg" style="width: 800px !important; height: 650px !important; object-fit: fill !important; margin: auto;">
            </div>
            <div class="result_game">

            </div>
            <div class="resultDesc">

            </div>
            <button type="submit" class="btn btn-secondary middle_button_label" style="margin-top: 30px;"
             onclick="location.href='research.jsp';">다시하기</button>
             <form action='add_type.do' name='ex_form" method='get'>
	             <input type="hidden" id="type_id" name="type_name" value=""> 
	            <button type="submit" class="btn btn-primary middle_button_label" style="margin-top: 30px;">저장하고 더 보기</button>
            </form>
        </section>
    </div>
    <%@ include file="../module/footer.jsp" %>
    <script src="data.js" charset="utf-8"></script>
    <script src="start.js" charset="utf-8"></script>
</body>

</html>