<%-- 
    Document   : detail
    Created on : Jun 7, 2021, 3:39:54 PM
    Author     : phanh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <title>${detail.name} - Netflix</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">


        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.1.0/css/font-awesome.min.css"
              integrity="sha256-t2kyTgkh+fZJYRET5l9Sjrrl4UDain5jxdbqe8ejO8A=" crossorigin="anonymous" />

        <link rel="stylesheet" href="../assets/css/global.css">
        <link rel="stylesheet" href="../assets/css/browse.css">
        <link rel="stylesheet" href="../assets/css/single.css">

        <!--html 5 video player-->
        <link rel="stylesheet" href="https://cdn.plyr.io/3.6.2/plyr.css" />
        <script src="https://cdn.plyr.io/3.6.2/plyr.polyfilled.js"></script>

    </head>

    <body>
        <!--[if lt IE 7]>
                <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="#">upgrade your browser</a> to improve your experience.</p>
            <![endif]-->


        <!-- dashboard/browse page block start | home page after login | -->

        <main id="mainContainer" class="p-b-40">

            <jsp:include page="menu.jsp"></jsp:include>

                <!-- hero section video-->
                <div class="videocontainer">
                    <video controls crossorigin playsinline
                           poster="" id="player">
                        <!-- Video files -->
                        <source src="${detail.path}"
                            >

                    <!-- Caption files -->
                </video>
            </div>

            <script>
                document.addEventListener('DOMContentLoaded', () => {
                    // This is the bare minimum JavaScript. You can opt to pass no arguments to setup.
                    const player = new Plyr('#player');

                    // Expose
                    window.player = player;

                    // Bind event listener
                    function on(selector, type, callback) {
                        document.querySelector(selector).addEventListener(type, callback, false);
                    }
                });
            </script>


            <section class="movieinformation container">
                <div class="movielogo">
                    <h1 style="font-size: 30px">${detail.name}</h1>
                </div>
                <div class="description">
                    ${detail.discription}
                </div>
                <div class="castinformation">
                    <p><span class="name">Director:</span>  ${detail.director} </p>
                </div>
                <div class="actions d-flex flex-start flex-middle">
                    <a href="#" class="link-item">
                        <i class="fa fa-plus"></i></br>
                        My List
                    </a>
                    <a href="${detail.path}" class="link-item">
                        <i class="fa fa-download"></i></br>
                        Download
                    </a>
                </div>
            </section>




            <!--Hollywood Action movies-->
            <section id="similar" class="container p-t-40">
                <h4 class="romantic-heading">
                    More Like This
                </h4>
                <div class="romantic-container d-flex flex-start flex-middle">
                    <c:if test="${detail.cate == 'TV Shows'}">
                        <c:forEach items="${listT}" var = "o">
                            <a href="detail?pid=${o.ID}">
                                <img src="${o.poster_path}" alt=""
                                     class="mylist-img p-r-10 p-t-10 image-size item" style="height: 200px; width: 400px"></a>
                            </c:forEach>
                        </c:if>
                    <c:if test="${detail.cate == 'Phim'}">
                        <c:forEach items="${listM}" var = "o">
                            <a href="detail?pid=${o.ID}">
                                <img src="${o.poster_path}" alt=""
                                     class="mylist-img p-r-10 p-t-10 image-size item" style="height: 200px; width: 400px"></a>
                            </c:forEach>
                        </c:if>
                </div>
            </section>

        </div>


        <jsp:include page="footer.jsp"></jsp:include>

    </div>


</main>

<div class="footer-navigation d-flex space-between">
    <a href="browse.html" class="nav-item active">
        <i class="fa fa-home" aria-hidden="true"></i> </br>
        <span>Home</span>
    </a>
    <a href="search.html" class="nav-item">
        <i class="fa fa-search" aria-hidden="true"></i></br>
        Search
    </a>
    <a href="latest.html" class="nav-item">
        <i class="fa fa-film" aria-hidden="true"></i></br>
        Latest
    </a>
    <a href="user-profile/home.html" class="nav-item">
        <i class="fa fa-user" aria-hidden="true"></i></br>
        Account
    </a>
</div>


</body>

</html>
