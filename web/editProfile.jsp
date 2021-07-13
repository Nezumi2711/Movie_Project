<%-- 
    Document   : editProfile
    Created on : Jul 10, 2021, 5:06:22 PM
    Author     : phanh
--%>

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
        <title>Netflix world – Watch TV Shows Online, Watch Movies Online</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">


        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.1.0/css/font-awesome.min.css"
              integrity="sha256-t2kyTgkh+fZJYRET5l9Sjrrl4UDain5jxdbqe8ejO8A=" crossorigin="anonymous" />

        <!--for global styling-->
        <link rel="stylesheet" href="../../assets/css/global.css">
        <!-- for footer and header-->
        <link rel="stylesheet" href="../../assets/css/browse.css">
        <!--custom styling-->
        <link rel="stylesheet" href="../../assets/css/userprofile.css">

    </head>

    <body>
        <!--[if lt IE 7]>
                <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="#">upgrade your browser</a> to improve your experience.</p>
            <![endif]-->


        <!-- dashboard/browse page block start | home page after login | -->

        <main id="mainContainer" class="p-b-40">
            <jsp:include page="menu.jsp"></jsp:include>
                <!--profile section-->
                <section class="userprofile" id="userprofilecontainer">
                    <div>
                        <h2 class="heading f-s-40">
                            Account
                        </h2>
                    </div>
                    <div class="line"></div>
                    <div class="membership d-flex flex-no-wrap space-between">
                        <div class="left">
                            <h4 class="headline">
                                MEMBERSHIP
                            </h4>
                        </div>
                        <div class="right">
                            <form action="editProfile" method="post">
                                <div class="d-flex space-between">
                                    <div class="fullName">
                                        <input type="text" name="id" value="${sessionScope.acc.uID}" style="background: gray" readonly>
                                </div>
                            </div>

                            <div class="d-flex space-between">
                                <div class="fullName">
                                    <input type="text" id="fullName" name="fullName" style="font-size: medium;" value="${sessionScope.acc.fullName}">
                                </div>
                            </div>

                            <div class="d-flex space-between">
                                <div class="email">
                                    <input type="text" name="email" style="font-size: medium;" value="${sessionScope.acc.email}">
                                </div>
                            </div>

                            <div class="d-flex space-between">
                                <div class="email">
                                    <input type="text" name="phone" style="font-size: medium;" value="${sessionScope.acc.phone}">
                                </div>
                            </div>
                                <br>
                                <button type="submit">Change</button>
                        </form>

                    </div>  
                </div>
                <div class="line"></div>
            </section>

            <!--footer section and footer fixed menu mobile-->
            <jsp:include page="footer.jsp"></jsp:include>


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
