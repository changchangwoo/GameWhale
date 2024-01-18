<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="style.css?after">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <title>main</title>
</head>

<body>
	<div class="bg">
	<jsp:include page="module/top.jsp" />
        <!-- end_header -->
        <div class="logofonts">게임 찾기 어려울 땐,<br> 고민 없이 게임 웨일</div>
        <div class="sublogofonts"> 나만의 인생게임 쉽게 찾기 </div>
    </div>
    <!-- end_bg, -->
    <div class="contents_01">
        <div class="contents_title"> 내 플레이 방식을 체크해 <br> 취향에 맞는 장르를 확인하세요 </div>
        <div class="contents_subtitle"> RPG, FPS, AOS등 어느게임이 나랑 잘 맞을까요?</div>
        <div class="bg_button button_zoom">
            <button>지금 추천받기</button>
        </div>
        <ul class="c01_icons">
            <li>
                <div class="c01_icon icon_zoom">
                    <img src="img/icon_search.png" style="width: 200px; height: 200px;">
                    <div class="text_form01"> 설문조사</div>
                    <div class="text_form02"> 내가 선호하는 게임 방식을 <br> 간단한 설문을 통해 알아보세요</div>
                </div>
            </li>
            <li>
                <div class="c01_icon icon_zoom">
                    <img src="img/icon_check.png" style="width: 200px; height: 200px;">
                    <div class="text_form01"> 게임추천</div>
                    <div class="text_form02"> 선호하는 장르를 확인하고 <br> 다양한 게임을 만나보세요 </div>
                </div>
            </li>
            <li>
                <div class="c01_icon icon_zoom">
                    <img src="img/icon_cash.png" style="width: 200px; height: 200px;">
                    <div class="text_form01"> 가격비교</div>
                    <div class="text_form02"> 찾은 나만의 게임을 <br> 합리적인 가격으로 즐겨보세요</div>
                </div>
            </li>
        </ul>
    </div>
    <!-- end_contents_01 -->
    <div class="contents_02">
        <div class="contents_title"> 장르별 인기 게임의 <br> 정보와 할인 비교를 한눈에 파악하세요</div>
        <div class="contents_subtitle"> 회원들의 평가와 유통사의 할인비교를 통해 게임을 현명하게 구매하세요</div>
        <div class="bg_button button_zoom">
            <button>더 많은 게임 확인하기</button>
        </div>
         <ul class="c02_games">
            <li>
                <div class="box-wrap">
                    <div class="box">
                        <div class="box_img">
                            <img src="img/game_cyberpunk.png" alt="Hover Effect">
                        </div>
                        <div class="info">
                            <h3>사이버 펑크 2077</h3>
                            <p> 스팀 할인가격</p>
                            <p> 에픽게임즈 할인가격</p>
                            <p> 오리진 할인가격</p>
                        </div>
                    </div>
                </div>
            </li>
            <li>
                <div class="box-wrap">
                    <div class="box">
                        <div class="box_img">
                            <img src="img/game_eldenring.png" alt="Hover Effect">
                        </div>
                        <div class="info">
                            <h3>엘든링</h3>
                            <p> 스팀 할인가격</p>
                            <p> 에픽게임즈 할인가격</p>
                            <p> 오리진 할인가격</p>
                        </div>
                    </div>
                </div>
            </li>
            <li>
                <div class="box-wrap">
                    <div class="box">
                        <div class="box_img">
                            <img src="img/game_godofwar.png" alt="Hover Effect">
                        </div>
                        <div class="info">
                            <h3>갓 오브 워</h3>
                            <p> 스팀 할인가격</p>
                            <p> 에픽게임즈 할인가격</p>
                            <p> 오리진 할인가격</p>
                        </div>
                    </div>
                </div>
            </li>
        </ul>
    </div>
    <!-- end_contents_02 -->
    <div class="contents_03">
        <div class="c03_text">
            <div class="contents_title"> 커뮤니티를 통해 <br> 다양한 정보를 공유하세요 </div>
            <div class="contents_subtitle"> 서로 다른 유저들과 서로 다른 추억을 만드는건 어떨까요?</div>
        </div>
        <div class="c03_icon">
            <img src="img/icon_chat.png" style="width: 180px; height: 180px;">
            <div class="bg_button button_zoom">
                <button>지금 소통하기</button>
            </div>
        </div>
    </div>
        <jsp:include page="module/footer.jsp" />
    <!-- end_footer -->
</body>

</html>