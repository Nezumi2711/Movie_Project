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
        <title>Netflix login – Watch TV Shows Online, Watch Movies Online</title>
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
                        Sign In
                    </h2>
                    <c:if test="${mess == 1}">
                        <div style="color: red;font-size:15px">
                            User name or password is incorrect. Please try again. <a href="signup.jsp" style="color: yellow; text-decoration: underline">New user? Create account now.</a>
                        </div>
                    </c:if>
                    <form action="signin" id="loginForm" class="d-flex direction-column" method="post" name="loginForm" onsubmit="return submitUserForm()">
                        <input type="text" name="email" id="email" value="${email}" class="email" placeholder="Email or phone number" onchange="validateEmail()" required/>
                        <p id="errorEmail">Please enter a valid email address or phone number.</p>

                        <input type="password" name="password" id="password" placeholder="Password" onchange ="validatePassword()" required/>
                        <p id="errorPassword">Your password must contain between 4 and 60 characters.</p> <br>

                        <div class="g-recaptcha" data-sitekey="6LdKnhMbAAAAANMdlXj-UAiuR8WMl7UELn8qv2IN" data-callback="verifyCaptcha" data-theme="dark"></div>
                        <div id="g-recaptcha-error"></div>
                        <button type="submit" class="button submitButton" id="signInButton" disabled="disabled">
                            Sign In
                        </button>

                        <div class="rememberMe">
                            <input type="checkbox" name="rememberMe" id="rememberMe" class="rememberMe" value="yes" ${rememberMe == "1" ? "checked":""}>
                            <label for="rememberMe"><span class="login-remember-me-label-text">Remember me</span></label>
                        </div>
                        <p class="signUpText para">
                            New to Netflix? <span class="signUp"><a href="signup">Sign up Now</a></span>
                        </p>
                        <p class="bottomMessage para">
                            This page is protected by Google reCAPTCHA to ensure you're not a bot
                        </p>
                    </form>
                </div>

                <!--Login form End-->
            </section>
        </main>
        <script src='https://www.google.com/recaptcha/api.js'></script>
        <script>
                            //function to validate email address on input text change and enable submit button if it's true
                            document.getElementById('errorEmail').style.display = "none";
                            document.getElementById('errorPassword').style.display = "none";

                            function submitUserForm() {
                                var response = grecaptcha.getResponse();
                                if (response.length === 0) {
                                    document.getElementById('g-recaptcha-error').innerHTML = '<span style="color:red;">This field is required.</span>';
                                    return false;
                                }
                                return true;
                            }

                            function validateEmail() {
                                let email = document.getElementById('email').value;
                                let re = /\S+@\S+\.\S+/;
                                let result = re.test(email);
                                if (result) {
                                    document.getElementById('errorEmail').style.display = "none";
                                    document.getElementById('signInButton').disabled = false;
                                    // document.getElementById("email-form").submit();
                                } else {
                                    document.getElementById('errorEmail').style.display = "block";
                                    document.getElementById('signInButton').disabled = true;
                                }
                            }
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
        </script>
    </body>

</html>