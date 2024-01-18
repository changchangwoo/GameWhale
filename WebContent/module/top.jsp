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
    <title>main</title>
</head>

<body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
        <header>
            <ul class="header_menu">
                <li><img src="${pageContext.request.contextPath}/img/img_logo.png" style="width: 70px; height: 70px;"></li>
                <li><a href="${pageContext.request.contextPath}/index.jsp">홈</a></li>
                <li><a href="${pageContext.request.contextPath}/get_type.do">게임목록</a></li>
                <li><a href="${pageContext.request.contextPath}/research.jsp">게임추천</a></li>
                <li><a href="#">커뮤니티</a></li>
            </ul>
           
            <ul class="header_login">
                <li><a href="#"></a></li>
	                 <c:if test="${userid != null }">
	                 	<c:if test="${userid eq 'admin'}">
		                 	<div class="button_1 button_zoom" style="width: 150px; height: 50px;"
			                onclick="location.href='${pageContext.request.contextPath}/admin/adminpage.jsp';" >
			                   관리자페이지
			                </div>
	                 	</c:if>
	                 	<c:if test="${userid ne 'admin'}">
		                 <form action="${pageContext.request.contextPath}/get_mypage.do" method="get">
		                <button type="submit" class="btn-outline-secondary button_1 button_zoom" style="width: 150px; height: 50px;">
		                마이페이지
		                </button>
	                </form>
		                </c:if>
	                <form action="${pageContext.request.contextPath}/logout.do" method="post">
		                <button type="submit" class="btn-outline-primary button_1 button_zoom" style="width: 150px; height: 50px;">
		                로그아웃
		                </button>
	                </form>
	                </c:if>
                <c:if test="${userid == null }">
                <div class="button_1 button_zoom" style="width: 150px; height: 50px;"
                onclick="location.href='${pageContext.request.contextPath}/loginPage/login.jsp';" >
                    로그인
                </div>
                </c:if>
                
            </ul>
        </header>
</body>
</html>