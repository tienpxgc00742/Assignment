<%-- 
    Document   : header
    Created on : May 17, 2015, 1:21:20 AM
    Author     : Administrator
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="./css/css" rel="stylesheet" type="text/css">
        <link rel="icon" type="image/png" href="./assets/_con/images/icon.png">
        <link rel="stylesheet" type="text/css" href="./css/nanoscroller.css">
        <link rel="stylesheet" type="text/css" href="./css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="./css/material-design-icons.min.css">
        <link rel="stylesheet" type="text/css" href="./css/ionicons.min.css">
        <link rel="stylesheet" type="text/css" href="./css/weather-icons.min.css">
        <link rel="stylesheet" type="text/css" href="./css/prettify.css">
        <link rel="stylesheet" type="text/css" href="./css/_con.min.css">
        <link rel="stylesheet" type="text/css" href="./css/editor.css">
        <script type="text/javascript" src="./js/jquery.min.js"></script>
        <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.18/jquery-ui.min.js"></script>
        <script type="text/javascript" src="./js/jquery.ddslick.min.js"></script>
        <script type="text/javascript" src="./js/_demo.js"></script>
        <script type="text/javascript" src="./js/jquery.requestAnimationFrame.min.js"></script>
        <script type="text/javascript" src="./js/jquery.nanoscroller.min.js"></script>
        <script type="text/javascript" src="./js/materialize.min.js"></script>
        <script type="text/javascript" src="./js/jquery.flot.min.js"></script>
        <script type="text/javascript" src="./js/jquery.flot.time.min.js"></script>
        <script type="text/javascript" src="./js/jquery.flot.pie.min.js"></script>
        <script type="text/javascript" src="./js/jquery.flot.tooltip.min.js"></script>
        <script type="text/javascript" src="./js/jquery.flot.categories.min.js"></script>
        <script type="text/javascript" src="./js/Sortable.min.js"></script>
        <script type="text/javascript" src="./js/_con.min.js"></script>
        <script type="text/javascript" src="./js/prettify.js"></script>
        
        <script type="text/javascript" src="./js/ckeditor.js"></script>
        <script type="text/javascript" src="./js/config.js"></script>
        <script type="text/javascript" src="./js/styles.js"></script>
        <script type="text/javascript" src="./js/vi.js"></script>
    </head>
    <nav class="navbar-top">
        <div class="nav-wrapper">
            <!-- Logo -->
            <a href="./dashboard.jsp#!" class="brand-logo">
             <img src="../Assets/images/paypal.png" alt="Con">
            </a>
            <!-- /Logo -->
            <!-- Menu -->
            <ul>
                <li><a href="./dashboard.jsp#!" class="search-bar-toggle"><i class="mdi-action-search"></i></a>
                </li>
                <li class="user">
                    <a class="dropdown-button" href="./dashboard.jsp#!" data-activates="user-dropdown">
                        <img src="../images/image-1.png" alt="John Doe" class="circle">Admin<i class="mdi-navigation-expand-more right"></i>
                    </a><ul id="user-dropdown" class="dropdown-content">
                        <li><a href="./page-profile.html"><i class="fa fa-user"></i> Profile</a>
                        </li>
                        <li><a href="./mail-inbox.html"><i class="fa fa-envelope"></i> Messages <span class="badge new">2</span></a>
                        </li>
                        <li><a href="./dashboard.jsp#!"><i class="fa fa-cogs"></i> Categories</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="./page-sign-in.html"><i class="fa fa-sign-out"></i> Logout</a>
                        </li>
                    </ul>
                </li>
            </ul>
            <!-- /Menu -->
        </div>
    </nav>
</html>
