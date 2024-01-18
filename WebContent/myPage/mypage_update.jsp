<%@page import="com.webpro.common.RegisterMemberDTO"%>
<%@page import="java.util.ArrayList"%>
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
    <title>register_succeess</title>
</head>

<body>
    <jsp:include page="../module/top.jsp" />
    <div class="contents_registersuccess">
        <div class="view_top">
            <div class="logofonts" style="margin-top: 30px;">
                <br>
                ${ type_desc } ${ userid }님의 마이페이지
            </div>
        </div>
        <div class="admin_page_logo"> ${ id_list.memberid }님의 정보</div>
        <form action="../update_mypage.do2" method="get">
        <div class="contents_register" style="height: 1000px;">
                <div class="text_form_middle" style="margin-top: 30px;">계정 정보 </div><br>
                <input type="text" name="password"  class="form-control register_label" value="${ id_list.password }"><br>
         <div class="register_form_privacy">
                <div class="text_form_middle" style="margin-top: 30px;">개인 정보 </div><br>
                <input type="text" name="nickname" class="form-control register_label" value="${ id_list.nickname }"><br>
                <input type="text" name="membername" class="form-control register_label" value="${ id_list.membername }"><br>
                <div class="input-group register_label">
                <input type="text" name="email1" class="form-control" value="${ em1 }">
                <span class="input-group-text">@</span>
                <input type="text" name="email2" class="form-control " value="${ em2 }">
            </div>
            <br>
            <input type="text" name="phonenumber" class="form-control register_label" value="${ id_list.phonenumber }"><br>
            <c:if test="${ gender eq 'M' }">
            	<input type="radio" class="btn-check " name="options-outlined" id="success-outlined" value="M" checked="checked">
            	<label class="btn btn-outline-primary register_label_gender" for="success-outlined"> 남성 </label>
            	<input type="radio" class="btn-check" name="options-outlined" id="danger-outlined" value="F">
            	<label class="btn btn-outline-danger register_label_gender" for="danger-outlined"> 여성 </label>
            	</c:if>
            	<c:if test="${ gender eq 'F' }">
            	<input type="radio" class="btn-check " name="options-outlined" id="success-outlined" value="M">
            	<label class="btn btn-outline-primary register_label_gender" for="success-outlined"> 남성 </label>
            	<input type="radio" class="btn-check" name="options-outlined" id="danger-outlined" value="F" checked="checked">
            	<label class="btn btn-outline-danger register_label_gender" for="danger-outlined"> 여성 </label>
            	</c:if>
            <br>
            <button type="submit" class="btn btn-primary register_label" style="margin-top: 50px;">수정하기</button>
            </div>
         </form>
        </div>
        <jsp:include page="../module/footer.jsp" />
</body>
</html>