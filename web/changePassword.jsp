<%-- 
    Document   : signin
    Created on : May 31, 2021, 9:33:12 AM
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
        <title>Change Password</title>
        <meta name="description" content="Watch Netflix movies & TV shows online or stream right to your smart TV, game console, PC, Mac, mobile, tablet and more.">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="assets/css/global.css">
        <link rel="stylesheet" href="assets/css/landing-pages.css">
    </head>

    <body>
        <style>
            body::before{
                background-image: linear-gradient(to bottom, rgba(0, 0, 0, 0.8) 0%, rgba(0, 0, 0, 0.2) 60%, rgba(0, 0, 0, 0.9) 100%),url('images/home-page-background-login.jpg');

            }
        </style>

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
                        Change Password
                    </h2>
                    <form action="changePassword" id="loginForm" class="d-flex direction-column" method="post" name="loginForm">

                        <input type="password" name="password" id="password" placeholder="Password" onchange ="validatePassword()" required/>
                        <p id="errorPassword">Your password must contain between 4 and 60 characters.</p> <br>

                        <input type="password" name="repeat-password" id="repeat-password" placeholder="Repeat Password"
                               onchange="checkPasswordSame()" required />
                        <p id="errorPassword-Repeat">Your password does not same.</p> <br>

                        <button type="submit" class="button submitButton" id="signInButton" disabled="disabled">
                            Change Password
                        </button>
                    </form>
                </div>

                <!--Login form End-->
            </section>
        </main>
        <script>
            //function to validate email address on input text change and enable submit button if it's true
            document.getElementById('errorPassword').style.display = "none";
            document.getElementById('errorPassword-Repeat').style.display = "none";

            function validatePassword() {
                let inputtxt = document.getElementById('password').value;
                let passw = /^[A-Za-z]\w{7,60}$/;
                let result = passw.test(inputtxt);
                if (result) {
                    document.getElementById('errorPassword').style.display = "none";
                    document.getElementById('signInButton').disabled = false;
                } else {
                    document.getElementById('errorPassword').style.display = "block";
                    document.getElementById('signInButton').disabled = true;
                }
            }

            function checkPasswordSame() {
                let pass1 = document.getElementById('password').value;
                let pass2 = document.getElementById('repeat-password').value;
                if (pass1 === pass2) {
                    document.getElementById('errorPassword-Repeat').style.display = "none";
                    document.getElementById('signInButton').disabled = false;
                } else {
                    document.getElementById('errorPassword-Repeat').style.display = "block";
                    document.getElementById('signInButton').disabled = true;
                }
            }
        </script>
    </body>

</html>