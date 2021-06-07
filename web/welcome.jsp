<%-- 
    Document   : home
    Created on : May 30, 2021, 4:24:14 PM
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
        <meta name="description" content="Netflix world – Watch TV Shows Online, Watch Movies Online">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="assets/css/landing-pages.css">
    </head>

    <body>
        <!--[if lt IE 7]>
                <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="#">upgrade your browser</a> to improve your experience.</p>
            <![endif]-->


        <!-- index page block start | main landing page home | -->

        <main style="padding: 0px 10px;">
            <header class="d-flex space-between middle-align">
                <img src="images/logo.PNG" height="50px" width="170px" alt="site logo main"></img>
                <button class="button"><a href="signin"> Sign In</a></button>
            </header>
            <section id="landing-hero-section" class=" d-flex direction-column flex-center middle-align">

                <h1>Unlimited movies, TV shows, and more.</h1>
                <h2>Watch anywhere. Cancel anytime.</h2>

                <!-- landing page form start -->
                <form class="email-form d-flex" id="email-form" method="POST" action="/check-user">

                    <h3 class="email-form-title">Ready to watch? Enter your email to create or access your account.</h3>
                    <p id="email-error" style="color: #e50914; font-weight: 600; display: none;">Enter correct email</p>

                    <div class="email-form-lockup d-flex">

                        <div>
                            <input type="email" name="email" class="emailField" id="id_email" value="" tabindex="0"
                                   autocomplete="email" maxlength="50" minlength="5" placeholder="Email address"
                                   onchange="validateEmail()" />

                        </div>
                        <button class="button submit" type="submit" id="submitbutton" tabindex="0" disabled="disabled">
                            <span class="hero-cta-btn-txt">TRY FOR FREE
                            </span>
                            <!-- right arrow icon-->
                            <span>
                                <svg version="1.1" id="right-icon" xmlns="http://www.w3.org/2000/svg"
                                     xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 477.175 477.175"
                                     style="enable-background:new 0 0 477.175 477.175;" xml:space="preserve">
                                <g>
                                <path
                                    d="M360.731,229.075l-225.1-225.1c-5.3-5.3-13.8-5.3-19.1,0s-5.3,13.8,0,19.1l215.5,215.5l-215.5,215.5
                                    c-5.3,5.3-5.3,13.8,0,19.1c2.6,2.6,6.1,4,9.5,4c3.4,0,6.9-1.3,9.5-4l225.1-225.1C365.931,242.875,365.931,234.275,360.731,229.075z"
                                    fill="white" />

                                </g>
                                </svg>
                            </span>
                        </button>


                    </div>

                </form>
                <!--form container end-->
            </section>
        </main>

        <script>
            //function to validate email address on input text change and enable submit button if it's true
            function validateEmail() {
                let email = document.getElementById('id_email').value;
                let re = /\S+@\S+\.\S+/;
                let result = re.test(email);
                if (result) {
                    document.getElementById('email-error').style.display = "none";
                    document.getElementById('submitbutton').disabled = false;
                    // document.getElementById("email-form").submit();
                } else {
                    document.getElementById('email-error').style.display = "block";
                    document.getElementById('submitbutton').disabled = true;
                }
            }
        </script>
    </body>

</html>
