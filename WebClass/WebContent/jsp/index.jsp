<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "org.dimigo.vo.UserVo" %>

<!DOCTYPE HTML>
<html lang="ko">
    <head>
        <title>김수민의 블로그</title>
        <meta charset="utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <link rel="stylesheet" href="../css/main.css"/>
        <link
            rel="stylesheet"
            href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
            integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M"
            crossorigin="anonymous">
        <link rel="stylesheet" href="/WebClass/css/normalize.css"/>
    </head>
    <body>
        <!-- Header -->
        <div id="header">
            <div class="top">
                <div id="logo">
                    <span class="image avatar48"><img src="../image/avatar.jpg" alt=""/></span>
                    <h1 id="title">Su Min Kim</h1>
                    <p>
                        Korea Digital Media Highschool student
                    </p>
                </div>
                <nav id="nav">
                    <ul>
                        <li>
                            <a href="#top" id="top-link" class="skel-layers-ignoreHref">
                                <span class="icon fa-home">Intro</span></a>
                        </li>
                        <li>
                            <a href="#Favorite" id="portfolio-link" class="skel-layers-ignoreHref">
                                <span class="icon fa-th">Favortie</span></a>
                        </li>
                        <li>
                            <a href="#Hobby" id="about-link" class="skel-layers-ignoreHref">
                                <span class="icon fa-user">Hobby</span></a>
                        </li>
                        <li>
                            <a href="#BucketList" id="BucketList-link" class="skel-layers-ignoreHref">
                                <span class="icon fa-user">BucketList</span></a>
                        </li>
                    </ul>
                </nav>
            </div>
            <div class="bottom">
                <ul class="icons">
                    <li>
                        <a
                            href="https://www.facebook.com/profile.php?id=100005496273809"
                            class="icon fa-facebook"
                            target="_blank">
                            <span class="label">Facebook</span></a>
                    </li>
                    <li>
                        <a href="https://github.com/WP152308" class="icon fa-github" target="_blank">
                            <span class="label">Github</span></a>
                    </li>
                </ul>
            </div>
        </div>
        <!--로그인 && 회원가입 모달-->
        <!-- Main -->
        <div id="main">
            <!-- Intro -->
            <section id="top" class="one dark cover">
                <div class="container">
                    <header>
                        <h2 class="alt">Hi! My name is
                            <strong>KimSuMin</strong>!<br>
                            Welcome to My blog.<br/></h2>
                        <p>
                            이 블로그는 한국 디지털 미디어 고등학교 학생의 블로그입니다.<br/>좋아하는 것과 취미, 버킷리스트에 대해 적어놓았습니다.<br>
                            <p></header>
                        </div>
					    <%-- 세션에 사용자 정보가 없는 경우--%>
					    <%
					    	UserVo user = (UserVo)session.getAttribute("user");
					    	if(user == null){
					    %>
                        <div class="container">
                            <button
                                type="button"
                                class="btn btn-primary"
                                data-toggle="modal"
                                data-target="#myModal">
                                LOGIN
                            </button>
                            <button
                                type="button"
                                class="btn btn-primary"
                                data-toggle="modal"
                                data-target="#myModal1">
                                REGISTER
                            </button>
                         <% } else { %>
                         	<a> <%= user.getName() %>님</a>
						    <form action="/WebClass/bloglogout" method="post">
						    	<button type="submit" class="dropdown-item">Sign out</button>
						    </form>     
						 <%} %>
                            <!-- 로그인 모달 팝업 -->
                            <div
                                class="modal"
                                id="myModal"
                                tabindex="-1"
                                role="dialog"
                                aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h4 class="modal-title" id="loginModalTitle">로그인</h4>
                                        </div>
                                        <div class="modal-body" id="inner">
                                            <form class="form-inline my-2 my-lg-0" id="LoginForm">
                                                <input
                                                    class="form-control mr-sm-2"
                                                    type="text"
                                                    placeholder="ID"
                                                    aria-label="ID"
                                                    id="id"
                                                    required="required">
                                                <input
                                                    class="form-control mr-sm-2"
                                                    type="password"
                                                    placeholder="PWD"
                                                    aria-label="PWD"
                                                    id="pwd"
                                                    required="required">
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button><input type="submit" class="btn btn-success" value="Login">
                                                </div>
                                            </form>
                                        </div>
                                        <!--로그인 창 모달-->
                                        <div class="modal" id="Login">
                                            <div class="modal-dialog" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="exampleModalLabel">로그인 결과</h5>
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>
                                                    <div class="modal-body"></div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <!-- 회원가입 모달 -->
                        <div
                            class="modal"
                            id="myModal1"
                            tabindex="-1"
                            role="dialog"
                            aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h4 class="modal-title" id="registerModalTitle">회원가입</h4>
                                    </div>
                                    <div class="modal-body" id="inner2">
                                        <!-- 회원가입 항목 : 학년(라디오버튼), 반(드롭다운 리스트박스), 번호, 이름 -->
                                        <form id="RegisterForm">
                                            <h3>Grade</h3>
                                            <input type="radio" name="grade" value="1" checked="checked">1학년<br>
                                            <input type="radio" name="grade" value="2">2학년<br>
                                            <input type="radio" name="grade" value="3">3학년<br>
                                            <br>
                                            <h3>Class</h3>
                                            <select>
                                                <option value="one" selected="selected">1반</option>
                                                <option value="two">2반</option>
                                                <option value="three">3반</option>
                                                <option value="four">4반</option>
                                                <option value="five">5반</option>
                                                <option value="six">6반</option>
                                            </select>
                                            <br>
                                            <h3>Number</h3>
                                            <input
                                                type="text"
                                                placeholder="number"
                                                aria-label="number"
                                                id="number"
                                                required="required">
                                            <h3>Name</h3>
                                            <input
                                                type="text"
                                                placeholder="name"
                                                aria-label="name"
                                                name="name"
                                                id="name"
                                                required="required">
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button><input type="submit" class="btn btn-success" value="Register">
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>

                            <div class="modal" id="register">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="registerTest">회원가입 결과</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body"></div>
                                        <div class="modal-fooster">
                                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <!-- Portfolio -->
                    <section id="Favorite" class="two">
                        <div class="container">
                            <header>
                                <h2>Favortie</h2>
                            </header>
                            <p>
                                이미지 클릭 시에 관련 페이지로 이동합니다.
                                <br>
                                이미지에 커서를 가지고 가면 설명이 나옵니다.
                            </p>
                            <div class="row">
                                <div class="4u 12u$(mobile)">
                                    <article class="item">
                                        <a
                                            href="https://www.google.co.kr/search?q=%ED%85%8C%EB%8B%88%EC%8A%A4&rlz=1C1PRFE_enKR719KR735&source=lnms&tbm=isch&sa=X&ved=0ahUKEwi4gZXAiZDWAhWBTrwKHUtqDZIQ_AUICigB&biw=1920&bih=960"
                                            target="_blank"
                                            class="image fit"><img src="../image/pic02.jpg" alt="운동" title="주인장이 하고싶은 운동"/></a>
                                        <header>
                                            <h3>Exercise</h3>
                                        </header>
                                    </article>
                                    <article class="item">
                                        <a
                                            href="https://www.instagram.com/adam.eve.love/?hl=ko"
                                            target="_blank"
                                            class="image fit"><img
                                            src="../image/pic03.jpg"
                                            alt="동물"
                                            title="주인장의 어머니의 인스타그램이 나온다. <- 고양이 사진이 많다."/></a>
                                        <header>
                                            <h3>Animals (especially, Cats)</h3>
                                        </header>
                                    </article>
                                </div>
                                <div class="4u 12u$(mobile)">
                                    <article class="item">
                                        <a href="http://dimigo.in/" target="_blank" class="image fit"><img src="../image/pic04.jpg" alt="" title="디미고인이라면 컴퓨터를 좋아해야 합니다"/></a>
                                        <header>
                                            <h3>Computer</h3>
                                        </header>
                                    </article>
                                    <article class="item">
                                        <a
                                            href="http://steamcommunity.com/profiles/76561198058233329/"
                                            target="_blank"
                                            class="image fit"><img src="../image/pic05.jpg" alt="" title="주인장의 스팀페이지"/></a>
                                        <header>
                                            <h3>Game</h3>
                                        </header>
                                    </article>
                                </div>
                                <div class="4u$ 12u$(mobile)">
                                    <article class="item">
                                        <a
                                            href="http://paxnet.moneta.co.kr/stock/analysis/financialAffair?type=higlight&abbrSymbol=023430"
                                            target="_blank"
                                            class="image fit"><img src="../image/pic06.jpg" alt="" title="거래 재개 '될' 주식"/></a>
                                        <header>
                                            <h3>Stock</h3>
                                        </header>
                                    </article>
                                    <article class="item">
                                        <a
                                            href="https://www.youtube.com/watch?v=zo0wPRlmWAc"
                                            target="_blank"
                                            class="image fit"><img src="../image/pic07.jpg" alt="" title="주인장 최애 캐릭터곡"/></a>
                                        <header>
                                            <h3>Animation</h3>
                                        </header>
                                    </article>
                                </div>
                            </div>
                        </div>
                    </section>
                    <!-- hobby -->
                    <section id="Hobby" class="three">
                        <div class="container">
                            <header>
                                <h2>Hobby</h2>
                            </header>
                            <h4>1. Stock</h4>
                            <a href="#" class="image featured"><img src="../image/pic08.jpg" alt=""/></a>
                            <p>
                                혼자서 돈을 벌고 싶어서 시작하게 된 주식투자. 중학교 3학년 초부터 시작하게 되었습니다.<br>
                                하루종일 하지는 않기 때문에 현재까지 약 30만원의 수익만 올렸습니다. <br>
                                최근 '아이이'라는 회사에 투자를 했다가 거래정지로 자본이 묶인 상태였지만, <br>
                                다행히 상장폐지는 되지않고 9월 중순에 거래재개 될 예정입니다. <br>
                            </p>
                            <br>
                            <h4>2. Window Shopping(online)</h4>
                            <a href="#" class="image featured"><img src="../image/pic09.jpg" alt=""/></a>
                            <p>
                                한국에서보다 싸고 다양한 물건을 사고 싶어서 외국 온라인 구매 사이트를 자주 들어갑니다. <br>
                                요즘은 ebay 경매를 통해 ipad를 구입하려 계획중입니다. <br>
                            </p>
                            <br>
                            <h4>3. Go to Bookstore</h4>
                            <a href="#" class="image featured"><img src="../image/pic10.jpg" alt=""/></a>
                            <p>
                                한달에 3-4번 안산 중앙동점 대동서적을 들려 책을 보거나 책을 구입합니다.<br>
                                평소 도서관에도 잘 들리지 않지만 서점을 가면 모든 책들을 보고 싶어지는 욕구가 있습니다. <br>
                                주로 사회학, 심리학, 교양, 과학 등을 주로 읽으며 로맨스, 추리소설은 좋아하지 않습니다. <br>
                            </p>
                            <br>
                        </div>
                    </section>
                    <section id="BucketList" class="three">
                        <div class="container">
                            <header>
                                <h2>BucketList</h2>
                            </header>

                            <h4>1. Skydiving</h4>
                            <a href="#" class="image featured"><img src="../image/pic11.jpg" alt=""/></a>
                            <p>
                                익스트림 스포츠를 좋아합니다. 그래서 어려서 부터 스카이다이빙이 하고 싶었습니다.<br>
                                국내 스카이 다이빙 가격을 알아보니, 헬기를 이용한다면 약 50~60만원,<br>
                                비행기를 이용하면 45~55만원 정도 합니다. <br>
                                기왕 할 거 자격증을 따서 해외에서 하는 것이 제 꿈입니다.
                            </p>
                            <br>
                            <h4>2. Trip</h4>
                            <a href="#" class="image featured"><img src="../image/pic12.jpg" alt=""/></a>
                            <p>
                               혼자나 친구랑 둘이서 배낭여행을 다니고 싶습니다. 유럽쪽부터 시작하고 싶습니다. <br>
                               내년 2월에 수능전에 마지막으로 친구들 4명과 함께 일본 여행을 가는데 이 준비를 하면서 여행 준비에 대한 대비를 배울 생각입니다.
                            </p>
                            <br>
                            <h4>3. Living in seoul</h4>
                            <a href="#" class="image featured"><img src="../image/pic13.jpg" alt=""/></a>
                            <p>
                                한강 주변의 높은 아파트에서 고양이와 사는 것이 꿈입니다. <br>
                                조사 해보니 33평에 10~15억 정도 합니다 ㅎㅎㅎ<br>
                                열심히 살아야 하겠군요
                            </p>
                            <br>
                        </div>
                    </section>
                </div>
                <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
                <script src="../js/jquery.min.js"></script>
                <script src="../js/jquery.scrolly.min.js"></script>
                <script src="../js/jquery.scrollzer.min.js"></script>
                <script
                    src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
                    integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
                    crossorigin="anonymous"></script>
                <script
                    src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"
                    integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1"
                    crossorigin="anonymous"></script>
                <script src="../js/skel.min.js"></script>
                <script src="../js/util.js"></script>
                <script src="../js/main.js"></script>
                <script src="../js/login.js"></script>
                <script src="../js/register.js"></script>
            </body>
        </html>
