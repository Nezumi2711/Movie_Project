<%-- 
    Document   : user
    Created on : Jul 13, 2021, 8:58:12 AM
    Author     : phanh
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

    <!-- Mirrored from iqonic.design/themes/streamitnew/dashboard/html/theme/user.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 05 Sep 2020 07:05:30 GMT -->

    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Streamit - Responsive Bootstrap 4 Admin Dashboard Template</title>
        <!-- Favicon -->
        <link rel="shortcut icon"
              href="https://iqonic.design/themes/streamitnew/dashboard/html/assets/images//favicon.ico" />
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
        <!--datatable CSS -->
        <link rel="stylesheet" href="../assets/css/dataTables.bootstrap4.min.css">
        <!-- Typography CSS -->
        <link rel="stylesheet" href="../assets/css/typography.css">
        <!-- Style CSS -->
        <link rel="stylesheet" href="../assets/css/style.css">
        <!-- Responsive CSS -->
        <link rel="stylesheet" href="../assets/css/responsive.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
              integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
    </head>

    <body>
        <!-- loader Start -->
        <div id="loading">
            <div id="loading-center">
            </div>
        </div>
        <!-- loader END -->
        <!-- Wrapper Start -->
        <div class="wrapper">
            <!-- Sidebar-->
            <div class="iq-sidebar">
                <div class="iq-sidebar-logo d-flex justify-content-between">
                    <a href="/home" class="header-logo">
                        <img src="../assets/images/logo.png" class="img-fluid rounded-normal" alt="">
                        <div class="logo-title">
                            <span class="text-primary text-uppercase">Netflix</span>
                        </div>
                    </a>
                    <div class="iq-menu-bt-sidebar">
                        <div class="iq-menu-bt align-self-center">
                            <div class="wrapper-menu">
                                <div class="main-circle"><i class="fas fa-bars"></i></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="sidebar-scrollbar">
                    <nav class="iq-sidebar-menu">
                        <ul id="iq-sidebar-toggle" class="iq-menu">
                            <li>
                                <a href="/admin/user.jsp" class="iq-waves-effect"><i class="fas fa-user"></i><span>User</span></a>
                            </li>
                            <li class="active active-menu">
                                <a href="#movie" class="iq-waves-effect collapsed" data-toggle="collapse" aria-expanded="true"><i
                                        class="fas fa-film"></i><span>Movie</span><i
                                        class="fas fa-angle-right iq-arrow-right"></i></a>
                                <ul id="movie" class="iq-submenu collapse show" data-parent="#iq-sidebar-toggle">
                                    <li><a href="/admin/add-movie.jsp"><i class="fas fa-plus"></i>Add Movie</a></li>
                                    <li class="active"><a href="/listMovie"><i class="far fa-list-alt"></i>Movie List</a></li>
                                </ul>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
            <!-- TOP Nav Bar -->
            <div class="iq-top-navbar">
                <div class="iq-navbar-custom">
                    <nav class="navbar navbar-expand-lg navbar-light p-0">
                        <div class="iq-menu-bt d-flex align-items-center">
                            <div class="wrapper-menu">
                                <div class="main-circle"><i class="fas fa-bars"></i></div>
                            </div>
                            <div class="iq-navbar-logo d-flex justify-content-between">
                                <a href="index-2.html" class="header-logo">
                                    <img src="../assets/images/logo.png" class="img-fluid rounded-normal" alt="">
                                    <div class="logo-title">
                                        <span class="text-primary text-uppercase">Streamit</span>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                                aria-controls="navbarSupportedContent" aria-label="Toggle navigation">
                            <i class="ri-menu-3-line"></i>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent" style="width: 100%">
                            <ul class="navbar-nav ml-auto navbar-list">
                                <li class="nav-item nav-icon search-content">
                                    <a href="#" class="search-toggle iq-waves-effect text-gray rounded">
                                        <i class="ri-search-line"></i>
                                    </a>
                                    <form action="#" class="search-box p-0">
                                        <input type="text" class="text search-input" placeholder="Type here to search...">
                                        <a class="search-link" href="#"><i class="ri-search-line"></i></a>
                                    </form>
                                </li>

                                <li class="line-height pt-3">
                                    <a href="#" class="search-toggle iq-waves-effect d-flex align-items-center">
                                        <img src="../assets/images/user/1.jpg" class="img-fluid rounded-circle mr-3" alt="user">
                                    </a>
                                    <div class="iq-sub-dropdown iq-user-dropdown">
                                        <div class="iq-card shadow-none m-0">
                                            <div class="iq-card-body p-0 ">
                                                <div class="bg-primary p-3">
                                                    <h5 class="mb-0 text-white line-height">Hello Barry Tech</h5>
                                                    <span class="text-white font-size-12">Available</span>
                                                </div>
                                                <a href="profile.html" class="iq-sub-card iq-bg-primary-hover">
                                                    <div class="media align-items-center">
                                                        <div class="rounded iq-card-icon iq-bg-primary">
                                                            <i class="fas fa-id-card"></i>
                                                        </div>
                                                        <div class="media-body ml-3">
                                                            <h6 class="mb-0 ">My Profile</h6>
                                                            <p class="mb-0 font-size-12">View personal profile details.</p>
                                                        </div>
                                                    </div>
                                                </a>
                                                <a href="profile-edit.html" class="iq-sub-card iq-bg-primary-hover">
                                                    <div class="media align-items-center">
                                                        <div class="rounded iq-card-icon iq-bg-primary">
                                                            <i class="fas fa-id-card-alt"></i>
                                                        </div>
                                                        <div class="media-body ml-3">
                                                            <h6 class="mb-0 ">Edit Profile</h6>
                                                            <p class="mb-0 font-size-12">Modify your personal details.</p>
                                                        </div>
                                                    </div>
                                                </a>
                                                <div class="d-inline-block w-100 text-center p-3">
                                                    <a class="bg-primary iq-sign-btn" href="sign-in.html" role="button">Sign out<i
                                                            class="fas fa-sign-out-alt" style="margin-left: 6px;"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
            <!-- TOP Nav Bar END -->
            <!-- Page Content  -->
            <div id="content-page" class="content-page">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="iq-card">
                                <div class="iq-card-header d-flex justify-content-between">
                                    <div class="iq-header-title">
                                        <h4 class="card-title">User Lists</h4>
                                    </div>
                                </div>
                                <div class="iq-card-body">
                                    <div class="table-view">
                                        <table class="data-tables table movie_table" style="width:100%">
                                            <thead>
                                                <tr>
                                                    <th style="width: 10%;">Profile</th>
                                                    <th style="width: 10%;">Name</th>
                                                    <th style="width: 20%;">Phone Number</th>
                                                    <th style="width: 20%;">Email</th>
                                                    <th style="width: 10%;">Password</th>
                                                    <th style="width: 10%;">Role</th>
                                                    <th style="width: 10%;">Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach items="${account}" var="u">
                                                    <tr>
                                                        <td>
                                                            <img src="../assets/images/user/01.jpg" class="img-fluid avatar-50"
                                                                 alt="author-profile">
                                                        </td>
                                                        <td>${u.fullName}</td>
                                                        <td>${u.phone}</td>
                                                        <td><a href="#" class="__cf_email__"
                                                               data-cfemail="e2838c8c83a2858f838b8ecc818d8f">${u.email}</a></td>
                                                        <td>**********</td>
                                                        <td><c:choose>
                                                                <c:when test="${u.isAdmin == 1}">
                                                                    Admin 
                                                                    <br />
                                                                </c:when>    
                                                                <c:otherwise>
                                                                    User
                                                                    <br />
                                                                </c:otherwise>
                                                            </c:choose></td>
                                                        <td>
                                                            <div class="flex align-items-center list-user-action">
                                                                <a class="iq-bg-success" data-toggle="tooltip" data-placement="top" title=""
                                                                   data-original-title="Edit" href="#"><i class="fas fa-edit"></i></a>
                                                                <a class="iq-bg-primary" data-toggle="tooltip" data-placement="top" title=""
                                                                   data-original-title="Delete" href="#"><i class="fas fa-trash"></i></a>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Wrapper END -->
        <!-- Footer -->
        <footer class="iq-footer">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-6">
                        <ul class="list-inline mb-0">
                            <li class="list-inline-item"><a href="privacy-policy.html">Privacy Policy</a></li>
                            <li class="list-inline-item"><a href="terms-of-service.html">Terms of Use</a></li>
                        </ul>
                    </div>
                    <div class="col-lg-6 text-right">
                        Copyright 2020 <a href="#">Streamit</a> All Rights Reserved.
                    </div>
                </div>
            </div>
        </footer>
        <!-- Footer END -->
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script data-cfasync="false"
        src="../../../../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
        <script src="../assets/js/jquery.min.js"></script>
        <script src="../assets/js/popper.min.js"></script>
        <script src="../assets/js/bootstrap.min.js"></script>
        <script src="../assets/js/jquery.dataTables.min.js"></script>
        <script src="../assets/js/dataTables.bootstrap4.min.js"></script>
        <!-- Appear JavaScript -->
        <script src="../assets/js/jquery.appear.js"></script>
        <!-- Countdown JavaScript -->
        <script src="../assets/js/countdown.min.js"></script>
        <!-- Counterup JavaScript -->
        <script src="../assets/js/waypoints.min.js"></script>
        <script src="../assets/js/jquery.counterup.min.js"></script>
        <!-- Wow JavaScript -->
        <script src="../assets/js/wow.min.js"></script>
        <!-- Slick JavaScript -->
        <script src="../assets/js/slick.min.js"></script>
        <!-- Owl Carousel JavaScript -->
        <script src="../assets/js/owl.carousel.min.js"></script>
        <!-- Magnific Popup JavaScript -->
        <script src="../assets/js/jquery.magnific-popup.min.js"></script>
        <!-- Smooth Scrollbar JavaScript -->
        <script src="../assets/js/smooth-scrollbar.js"></script>
        <!-- Chart Custom JavaScript -->
        <script src="../assets/js/chart-custom.js"></script>
        <!-- Custom JavaScript -->
        <script src="../assets/js/custom.js"></script>
        <script>
            let navList = document.getElementById('iq-sidebar-toggle');
            let navUser = navList.querySelector('li:first-child');
            let navMovie = navList.querySelector('li:nth-child(2)');
            if (window.location.href.includes('movie')) {
                navMovie.classList.add('active')
                navMovie.classList.add('active-menu')
                navUser.classList.remove('active')
            } else {
                navMovie.classList.remove('active')
                navMovie.classList.remove('active-menu')
                navUser.classList.add('active')
                navMovie.querySelector('a').style.color = 'var(--iq-body-text)'

            }
        </script>
    </body>

    <!-- Mirrored from iqonic.design/themes/streamitnew/dashboard/html/theme/user.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 05 Sep 2020 07:05:33 GMT -->

</html>
