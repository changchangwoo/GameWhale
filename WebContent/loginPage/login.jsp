<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="../style.css?after">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <title>login</title>
</head>

<body>
    <jsp:include page="../module/top.jsp" />
    <div class="contents_login">
        <div class="bg_login"></div>
        <div class="forms_login">
            <div class="forms_login_logo">
                <div class="logofonts">
                    <br>게임 웨일 <img src="../img/img_logo.png" width="100px" height="100px">
                </div>
            </div>
                <c:if test="${ saveCheck eq 'saveON' }">
            <form action="../login.do" method="post">
            	<div class="forms_login_input">
            		<input type="text" name="login_id" id="id" class="form-control input_label" value="${ loginID }">
            		<input type="password" name="login_passwd" id="passwd" class="form-control input_label" value="${ loginPW }">
            		<div class="form-check">
                		<input class="form-check-input" type="checkbox" name="saveIDPW" value="saveON" id="flexCheckDefault" style="width: 30px; height: 30px; margin-right: 10px;" checked="checked">
                		<label class="form-check-label" for="flexCheckDefault" style="font-size: 25px;">
                			아이디/비밀번호 저장
                		</label>
            		</div>
            		<button type="submit" class="btn btn-primary input_label" style="margin-top: 50px;">로그인</button>
            		<button type="button" class="btn btn-iight input_label" onclick="location.href='register.jsp';" style="margin-top: 10px; border: 1px solid;">회원가입</button>
            	</div>
            </form>
            </c:if>
            <c:if test="${ saveCheck == null }">
            <form action="../login.do" method="post">
            	<div class="forms_login_input">
            		<input type="text" name="login_id" id="id" class="form-control input_label" placeholder="아이디">
            		<input type="password" name="login_passwd" id="passwd" class="form-control input_label" placeholder="비밀번호">
            		<div class="form-check">
                		<input class="form-check-input" type="checkbox" name="saveIDPW" value="saveON" id="flexCheckDefault" style="width: 30px; height: 30px; margin-right: 10px;">
                		<label class="form-check-label" for="flexCheckDefault" style="font-size: 25px;">
                			아이디/비밀번호 저장
                		</label>
            		</div>
            		<button type="submit" class="btn btn-primary input_label" style="margin-top: 50px;">로그인</button>
            		<button type="button" class="btn btn-iight input_label" onclick="location.href='register.jsp';" style="margin-top: 10px; border: 1px solid;">회원가입</button>
            	</div>
            </form>
            </c:if>
		</div>
        	
    </div>
   <jsp:include page="../module/footer.jsp" />
</body>

</html>