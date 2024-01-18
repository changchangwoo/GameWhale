<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="style.css?after">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <title>register_succeess</title>
</head>

<body>
    <%@ include file="../module/top.jsp" %>
    <div class="contents_registersuccess">
        <div class="contents_register">
            <div id="carouselExampleControlsNoTouching" class="carousel slide" data-bs-touch="false"
                style="background-color: black; width: 1920px; margin: auto; height: 600px;">
                <div class="carousel-inner">
                    <c:if test="${type_desc ne '아직 성향파악이 안된'}">
                	<c:forEach items="${relist}" var="recommendList">
                    <div class="carousel-item active">
                        <div class="cbox" style="background-image: url(${recommendList.img_url});">
                            <div class="info">
                                <h3>${recommendList.game_name}</h3>
                                <p>${recommendList.game_desc}</p>
                            </div>
                        </div>
                    </div>
                    </c:forEach>
                    </c:if>
                   	<c:if test="${type_desc eq '아직 성향파악이 안된'}">
                   		<div class="non_type_box"> 설문조사를 하고 내 성향에 맞는 게임을 추천받으세요 </div>
					</c:if>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControlsNoTouching"
                    data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControlsNoTouching"
                    data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            <div class="logofonts" style="margin-top: 30px;">
            <br>
             ${ type_desc } ${ userid } 님
            </div>
        </div>
     </div>
    </div>
     <div class="game_list_contents">
     <c:set var="i" value="0" />
     <c:set var="j" value="3" />
     <c:forEach items="${gamelist}" var="gamelist">
     <c:if test="${i%j == 0 }">
        <ul class="game_list">
     </c:if>
            <li>
                <div class="box-wrap">
                    <div class="gbox">
                        <div class="gbox_img">
                            <img src="${gamelist.img}" alt="Hover Effect" style="width:100%; height:100%;">
                        </div>
                        <div class="info">
                            <h3> ${gamelist.title} </h3>
                            <p> 현재 가격 : ${gamelist.price} </p>
                            <p> 할인 가격 : ${gamelist.discount} </p>
                            <p> 할인율 : ${gamelist.rate}</p>
                        </div>
                    </div>
                </div>
            </li>
            <c:if test="${i%j == j-1 }">
       	</ul>
       	</c:if>
       	<c:set var="i" value="${i+1}"/>
       	</c:forEach>
     </div> 
        <%@ include file="../module/footer.jsp" %>
</body>

</html>