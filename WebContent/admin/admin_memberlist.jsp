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
                <li><button type="submit" class="btn btn-primary admin_nav_button">회원목록</button></li>
                <li><button type="submit" class="btn btn-primary admin_nav_button">게시글목록</button></li>
                <li><button type="submit" class="btn btn-primary admin_nav_button">게임정보</button></li>
                <li><button type="submit" class="btn btn-primary admin_nav_button">댓글목록</button></li>
            </ul>
        </div>
        <div class="admin_page_logo"> 회원목록 </div>
        <div class="admin_member_list">
            <table class="table table-striped table-hover" style="text-align: center;">
            <thead>
                <tr class="table_info" style="font-size: 25px; border: 1px solid; border-color: rgba(0, 0, 0, .2);">
                    <th scope="col">아이디</th>
                    <th scope="col">비밀번호</th>
                    <th scope="col">닉네임</th>
                    <th scope="col">이름</th>
                    <th scope="col">이메일주소</th>
                    <th scope="col">전화번호</th>
                    <th scope="col">성별</th>
                    <th scope="col">수정</th>
                </tr>
            </thead>
            <tbody>
            	<c:forEach items="${vlist}" var="memberList">
            		<tr>
            			<td>${memberList.memberid}</td>
            			<td>${memberList.password}</td>
            			<td>${memberList.nickname}</td>
            			<td>${memberList.membername}</td>
            			<td>${memberList.email}</td>
            			<td>${memberList.phonenumber}</td>
            			<td>${memberList.gender}</td>
            			<td><form action="../update.do" method="get">
            			<button type="submit" name="update_id" value="${ memberList.memberid }" class="btn btn-primary modify_button" style="height: 40px !important;" >수정</button>
            			</form></td>
            		</tr>
            	</c:forEach>
            </tbody>
        	</table>
    	</div>
        <jsp:include page="../module/footer.jsp" />
	</body>
</html>