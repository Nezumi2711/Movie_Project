<%-- 
    Document   : login
    Created on : May 29, 2021, 4:51:09 PM
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
        <title>Netflix login – Watch TV Shows Online, Watch Movies Online</title>
        <meta name="description" content="Watch Netflix movies & TV shows online or stream right to your smart TV, game console, PC, Mac, mobile, tablet and more.">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="assets/css/global.css">
        <link rel="stylesheet" href="assets/css/landing-pages.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>

    <body>
        <style>
            body::before{
                background-image: linear-gradient(to bottom, rgba(0, 0, 0, 0.8) 0%, rgba(0, 0, 0, 0.2) 60%, rgba(0, 0, 0, 0.9) 100%),url('images/home-page-background-login.jpg');

            }
        </style>
        <!--[if lt IE 7]>
                <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="#">upgrade your browser</a> to improve your experience.</p>
            <![endif]-->


        <!-- index page block start | main landing page home | -->

        <main style="padding: 0px 10px;">
            <header class="d-flex space-between middle-align">
                <a href="/">
                    <img src="images/logo.PNG" height="50px" width="170px" alt="site logo main" style="margin: auto;"></img>
                </a> 
            </header>
            <section id="login-form-section">
                <!--Login form start-->

                <div class="loginContainer d-flex direction-column">
                    <h2 class="formtitle">
                        Success
                    </h2>
                        <div style="background-color: #95ff85;font-size:15px; margin-bottom: 10px; color: #1bcc00; padding: 10px; text-align: center">
                            <i class="fa fa-check" aria-hidden="true"></i>   Change password success.
                        </div>
                    <button type="submit" class="button submitButton" id="signInButton" style="padding: 20px">
                            <a href="/signin">BACK TO SIGN IN PAGE</a>
                        </button>
                </div>

                <!--Login form End-->
            </section>
        </main>
    </body>

</html>
