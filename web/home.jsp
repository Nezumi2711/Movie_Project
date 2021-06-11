<%-- 
    Document   : home
    Created on : May 30, 2021, 4:39:24 PM
    Author     : phanh
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
    <!--<![endif]-->

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Netflix world- Frontend Clone – Watch TV Shows Online, Watch Movies Online</title>
        <meta name="description" content="Video streaming website Netflix clone. Frontend - HTML5, Pure CSS3 [flexbox], JS, OWL Carousel, JQuery |" />
        <meta name="robots" content="index, follow" />

        <!-- og properties -->

        <meta property="og:site_name" content="Rajesh Royal" />
        <meta property="article:publisher" content="https://www.facebook.com/Rajesh.royal.896/" />

        <meta property="og:image" content="images/site-image-description.PNG" />

        <!-- -->

        <link rel="stylesheet" href="assets/lib/owl.carousel.css" />
        <script src="assets/lib/jquery 3.5.0.js"></script>
        <script src="assets/lib/owl.carousel.js"></script>


        <!--main script file-->
        <script src="assets/js/main-script.js"></script>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.1.0/css/font-awesome.min.css" integrity="sha256-t2kyTgkh+fZJYRET5l9Sjrrl4UDain5jxdbqe8ejO8A=" crossorigin="anonymous" />

        <link rel="stylesheet" href="assets/css/global.css">
        <link rel="stylesheet" href="assets/css/browse.css">

        <script>

        </script>
    </head>

    <body>
        <!--[if lt IE 7]>
                <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="#">upgrade your browser</a> to improve your experience.</p>
            <![endif]-->


        <!-- dashboard/browse page block start | home page after login | -->

        <main id="mainContainer" class="p-b-40">
            <div>
                <jsp:include page="menu.jsp"></jsp:include>
                    <!-- hero section -->
                    <div class="">
                        <section id="browse-dashboard" class=" d-flex direction-column flex-start middle-align">
                            <div>
                                <!--trailer video-->
                                <video class="hero-background-image" id="hero-video"
                                       poster="${last.poster_path}">
                                <source src="Resource/Phim/Phim Giang Hồ 2019 Cao Thủ Ẩn Danh - FULL Bảo Liêm, La Thành, Hiếu Hiền, Ốc Thanh Vân, Khả Ngân.mp4"
                                        type="video/mp4">
                                Your browser does not support the video tag.
                            </video>

                            <!--left shadow-->
                            <div class="shadow-layer"></div>
                        </div>

                        <div class="container text-container" style="z-index: 5;">
                            <h1 style="font-size: 50px">${last.name}</h1>

                            <div class="synopsis m-t-20" style="max-width: 500px;">
                                <p>
                                    ${last.title}
                                </p>
                            </div>
                            <div class="buttons-container m-t-20">
                                <button class="play-button"><span>
                                        <svg viewBox="0 0 24 24">
                                        <path d="M6 4l15 8-15 8z" fill="currentColor"></path>
                                        </svg>
                                    </span> <a href="single.html">Play</a></button>

                                <button class="more-info-button m-t-20"><span>
                                        <svg viewBox="0 0 24 24">
                                        <path
                                            d="M22 12c0 5.523-4.477 10-10 10S2 17.523 2 12 6.477 2 12 2s10 4.477 10 10zm-2 0a8 8 0 0 0-8-8 8 8 0 0 0-8 8 8 8 0 0 0 8 8 8 8 0 0 0 8-8zm-9 6v-7h2v7h-2zm1-8.75a1.21 1.21 0 0 1-.877-.364A1.188 1.188 0 0 1 10.75 8c0-.348.123-.644.372-.886.247-.242.54-.364.878-.364.337 0 .63.122.877.364.248.242.373.538.373.886s-.124.644-.373.886A1.21 1.21 0 0 1 12 9.25z"
                                            fill="currentColor"></path>
                                        </svg>
                                    </span> More Info</button>
                            </div>
                        </div>
                    </section>
                </div>

                <!--paretn div with black bg after main hero section-->
                <div class="black-background">


                    <!--my list -->
                    <section id="mylist" class="container">

                        <h4 class="mylist-heading">
                            My List
                        </h4>
                        <div class="mylist-container d-flex flex-start flex-middle flex-no-wrap owl-carousel">
                            <div class="video">
                                <video class="mylist-img p-r-10 p-t-10 video-item"
                                       poster="images/tv-show/poster/never-have-ever-short poster.jpg">
                                    <source
                                        src="images/tv-show/videos/Never Have I Ever - Official Trailer - Netflix_2.mp4"
                                        type="video/mp4">
                                    Your browser does not support the video tag.
                                </video>

                                <div class="video-description d-flex flex-end direction-column">
                                    <div class="play-button">
                                        <svg viewBox="0 0 24 24">
                                        <path d="M6 4l15 8-15 8z" fill="black"></path>
                                        </svg>
                                    </div>
                                    <div>
                                        <h4 class="heading f-w-8 text-shadow">
                                            Never Have I Ever
                                        </h4>
                                    </div>
                                    <div class="info d-flex flex-middle flex-no-wrap">
                                        <p class="rated text-shadow"><strong>18+</strong></p>
                                        <p class="season-count text-shadow"> 1 Season</p>
                                    </div>
                                    <div class="genere d-flex flex-no-wrap text-shadow">
                                        <p>#Nudeity</p>
                                        <p>#Romance</p>
                                        <p>#Love</p>
                                    </div>
                                </div>
                            </div>

                            <div class="video">
                                <video class="mylist-img p-r-10 p-t-10 video-item"
                                       poster="images/movies/we-are-the-milers-poster-little.webp">
                                    <source
                                        src="images/movies/videos/We're the Millers - Official Trailer [HD].mp4"
                                        type="video/mp4">
                                    Your browser does not support the video tag.
                                </video>

                                <div class="video-description d-flex flex-end direction-column">
                                    <div class="play-button">
                                        <svg viewBox="0 0 24 24">
                                        <path d="M6 4l15 8-15 8z" fill="black"></path>
                                        </svg>
                                    </div>
                                    <div>
                                        <h4 class="heading f-w-8 text-shadow">
                                            WE'RE THE MILERS
                                        </h4>
                                    </div>
                                    <div class="info d-flex flex-middle flex-no-wrap">
                                        <p class="rated text-shadow"><strong>18+</strong></p>
                                        <p class="season-count text-shadow">Movie</p>
                                    </div>
                                    <div class="genere d-flex flex-no-wrap text-shadow">
                                        <p>#Nudeity</p>
                                        <p>#fiction</p>
                                        <p>#Comedy</p>
                                    </div>
                                </div>
                            </div>

                            <div class="video">
                                <video class="mylist-img p-r-10 p-t-10 video-item"
                                       poster="images/movies/extraction-poster.jpg">
                                    <source
                                        src="images/movies/videos/Murder Mystery - Trailer - Netflix.mp4"
                                        type="video/mp4">
                                    Your browser does not support the video tag.
                                </video>

                                <div class="video-description d-flex flex-end direction-column">
                                    <div class="play-button">
                                        <svg viewBox="0 0 24 24">
                                        <path d="M6 4l15 8-15 8z" fill="black"></path>
                                        </svg>
                                    </div>
                                    <div>
                                        <h4 class="heading f-w-8 text-shadow">
                                            Extraction
                                        </h4>
                                    </div>
                                    <div class="info d-flex flex-middle flex-no-wrap">
                                        <p class="rated text-shadow"><strong>18+</strong></p>
                                        <p class="season-count text-shadow">Movie</p>
                                    </div>
                                    <div class="genere d-flex flex-no-wrap text-shadow">
                                        <p>#Adrenalin</p>
                                        <p>#Wild</p>
                                        <p>#Action</p>
                                    </div>
                                </div>
                            </div>

                        </div>

                    </section>



                    <!--Movie-->
                    <section id="continue-watching" class="container p-t-40">
                        <h4 class="continue-watching-heading">
                            Movie
                        </h4>
                        <div class="continue-watching-container d-flex flex-start flex-middle flex-no-wrap owl-carousel">
                            <c:forEach items="${listM}" var = "o">
                                <div class="video">
                                    <video class="mylist-img p-r-10 p-t-10 video-item"
                                           poster="${o.poster_path}">
                                    </video>

                                    <div class="video-description d-flex flex-end direction-column">
                                        <a href="detail?pid=${o.ID}">
                                            <div class="play-button">
                                                <svg viewBox="0 0 24 24">
                                                <path d="M6 4l15 8-15 8z" fill="black"></path>
                                                </svg>
                                            </div>
                                            <div>
                                                <h4 class="heading f-w-8 text-shadow">
                                                    ${o.name}
                                                </h4>
                                            </div>
                                            <div class="info d-flex flex-middle flex-no-wrap">
                                                <p class="season-count text-shadow">Movie</p>
                                            </div>  
                                        </a>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </section>

                    <!--Tv Shows-->
                    <section id="romantic" class="container p-t-40">
                        <h4 class="romantic-heading">
                            TV Shows
                        </h4>
                        <div class="romantic-container d-flex flex-start flex-middle flex-no-wrap owl-carousel">
                            <c:forEach items="${listTV}" var = "o">
                                <div class="video">
                                    <video class="mylist-img p-r-10 p-t-10 video-item"
                                           poster="${o.poster_path}">
                                    </video>

                                    <div class="video-description d-flex flex-end direction-column">
                                        <a href="detail?pid=${o.ID}">
                                            <div class="play-button">
                                                <svg viewBox="0 0 24 24">
                                                <path d="M6 4l15 8-15 8z" fill="black"></path>
                                                </svg>
                                            </div>
                                            <div>
                                                <h4 class="heading f-w-8 text-shadow">
                                                    ${o.name}
                                                </h4>
                                            </div>
                                            <div class="info d-flex flex-middle flex-no-wrap">
                                                <p class="season-count text-shadow">TV Shows</p>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </section>
                    <jsp:include page="footer.jsp"></jsp:include>
                </div>
        </main>
    </body>

</html>