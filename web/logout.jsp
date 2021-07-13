<%-- 
    Document   : logout
    Created on : May 29, 2021, 4:52:44 PM
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
    <title>Netflix</title>
    <meta name="description" content="Watch Netflix movies & TV shows online or stream right to your smart TV, game console, PC, Mac, mobile, tablet and more.">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="assets/css/global.css">
    <link rel="stylesheet" href="assets/css/landing-pages.css">
</head>

<body>
    <style>
        body::before{
            background-image: linear-gradient(to bottom, rgba(0, 0, 0, 0.8) 0%, rgba(0, 0, 0, 0.2) 60%, rgba(0, 0, 0, 0.9) 100%),url('images/logout.jpg');

        }
    </style>
    <!--[if lt IE 7]>
            <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="#">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->


    <!-- index page block start | main landing page home | -->

    <main style="padding: 0px 10px;">
        <header class="d-flex space-between middle-align">
            <img src="images/logo.PNG" height="50px" width="170px" alt="site logo main"></img>
            <button class="button"><a href="signin"> Sign In</a></button>
        </header>
        <section id="logout-section d-flex flex-center">
            <div class="logoutContainer f-s-20 d-flex flex-center direction-column">
                <h2 class="signOutHeader f-s-28 f-w-4" style="margin: 0;">
                    Signed Out
                </h2>
                <p class="logoutMessage">
                    Only members using a shared or public computer need to end each visit to Netflix by using the Sign Out link.
                </p>
                <p class="logoutMessage">
                    This computer will be redirected to the Netflix home page in 30 seconds.
                </p>
                <button class="button logoutButton">
                    <a href="/">Continue</a>
                </button>
            </div>
        </section>
    </main>
</body>

</html>
