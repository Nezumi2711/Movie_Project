<%-- 
    Document   : menu
    Created on : Jun 7, 2021, 3:44:01 PM
    Author     : phanh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<header class="d-flex space-between flex-center flex-middle">
    <div class="nav-links d-flex flex-center flex-middle">
        <a href="home">
            <h2 class="logo logo-text red-color f-s-28 m-r-25">NETFLIX</h2>
            <h2 class="second-logo-text red-color f-s-28">N</h2>
        </a>
        <a href="home" class="nav-item home">Home</a>
        <a href="tvshow" class="nav-item">TV Show</a>
        <a href="movie" class="nav-item">Movies</a>
        <a href="latest.html" class="nav-item latest">Latest</a>
        <a href="mylist.html" class="nav-item">My List</a>
    </div>
    <div class="righticons d-flex flex-end flex-middle">
        <form action="search" method="post">
            <input type="text" name="name"><button id="button" type="submit"><img src="images/icons/search.svg" alt="search icon"></button>
            <!-- Let SearchControl know which page is using this menu.jsp -->
            <input type="text" hidden value="${flag}" name="flag">
        </form>
        <div class="dropdown">
            <img src="images/icons/user-image-green.png" alt="user profile icon" class="user-icon"> <span class="profile-arrow"></span>

            <div class="dropdown-content">
                <div class="profile-links">                       
                    <a href="#" class="profile-item last" >Hello ${sessionScope.acc.fullName}</a>
                </div>
                <div class="line"></div>
                <div class="links d-flex direction-column">
                    <a href="user-profile/home.html">Account</a>
                    <a href="logout">Sign Out of Netflix</a>
                </div>
            </div>
        </div>

    </div>
</header>