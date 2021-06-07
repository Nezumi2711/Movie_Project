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
                        Register Account
                    </h2>
                    <form action="signup" id="loginForm" class="d-flex direction-column" method="post"
                          name="loginForm" onsubmit="return submitUserForm()">
                        <c:if test="${exist == 1}">
                            <div style="color: red;font-size:15px; margin-bottom: 10px">
                                Email has been use. Please try another email.
                            </div>
                        </c:if>

                        <input type="text" name="email" id="email" class="email" value="${email}" placeholder="Your email"
                               onchange="validateEmail()" required />
                        <p id="errorEmail">Please enter a valid email.</p>

                        <input type="text" name="fullName" id="fullName" class="name" placeholder="Full Name"
                               onchange="checkInputName()" />
                        <p id="emptyName">You must input name.</p>

                        <input type="text" name="phone" id="phone" class="phone" placeholder="Phone number"
                               onchange="checkPhone()" required />
                        <p id="phoneInvalid">Your number phone is not valid.</p>
                        <p id="phoneEmpty">You must enter your phone.</p>

                        <input type="password" name="password" id="password" placeholder="Password"
                               onchange="validatePassword()" required />
                        <p id="errorPassword">Your password must contain between 7 and 20 characters and have uppercase
                            letter.</p>

                        <input type="password" name="repeat-password" id="repeat-password" placeholder="Repeat Password"
                               onchange="checkPasswordSame()" required />
                        <p id="errorPassword-Repeat">Your password does not same.</p> <br>

                        <div class="g-recaptcha" data-sitekey="6LdKnhMbAAAAANMdlXj-UAiuR8WMl7UELn8qv2IN" data-callback="verifyCaptcha" data-theme="dark"></div>
                        <div id="g-recaptcha-error"></div>
                        <button type="submit" class="button submitButton" id="signInButton" disabled="disabled" name="submit" value="Submit">
                            Register
                        </button>

                        <!--  <div class="rememberMe">
                                <input type="checkbox" name="rememberMe" id="rememberMe" class="rememberMe">
                                <label for="rememberMe"><span class="login-remember-me-label-text">Remember me</span></label>
                            </div>-->

                        <p class="signUpText para">
                            Have an account? <span class="signUp"><a href="signin">Sign In</a></span>
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
                                   document.getElementById('errorPassword-Repeat').style.display = "none";
                                   document.getElementById('phoneInvalid').style.display = "none";
                                   document.getElementById('phoneEmpty').style.display = "none";
                                   document.getElementById('emptyName').style.display = "none";
                                   document.getElementById('recaptcha-error').style.display = "none";

                                   function submitUserForm() {
                                       var response = grecaptcha.getResponse();
                                       if (response.length === 0) {
                                           document.getElementById('g-recaptcha-error').innerHTML = '<span style="color:red;">This field is required.</span>';
                                           return false;
                                       }
                                       return true;
                                   }

                                   function verifyCaptcha() {
                                       document.getElementById('g-recaptcha-error').innerHTML = '';
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
                                       let passw = /^[A-Za-z]\w{7,20}$/;
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
                                   function checkPhone() {
                                       let phone = document.getElementById('phone').value;
                                       let vnf_regex = /((09|03|07|08|05)+([0-9]{8})\b)/g;
                                       if (phone !== '') {
                                           if (vnf_regex.test(phone) === false) {
                                               document.getElementById('phoneInvalid').style.display = "block";
                                               document.getElementById('phoneEmpty').style.display = "none";
                                               document.getElementById('signInButton').disabled = true;
                                           } else {
                                               document.getElementById('phoneInvalid').style.display = "none";
                                               document.getElementById('signInButton').disabled = false;
                                           }
                                       } else {
                                           document.getElementById('phoneEmpty').style.display = "blocked";
                                           document.getElementById('signInButton').disabled = true;
                                       }
                                   }
                                   function checkInputName() {
                                       let name = document.getElementById('fullName');
                                       if (name === '') {
                                           document.getElementById('emptyName').style.display = "block";
                                           document.getElementById('signInButton').disabled = true;
                                       } else {
                                           document.getElementById('emptyName').style.display = "none";
                                           document.getElementById('signInButton').disabled = false;
                                       }
                                   }
        </script>
    </body>

</html>
