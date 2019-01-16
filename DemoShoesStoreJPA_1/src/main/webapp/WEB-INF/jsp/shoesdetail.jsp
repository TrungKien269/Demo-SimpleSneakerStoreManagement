<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Chi Tiết</title>
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
    <link href="../../static/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="screen"/>
    <link href="../../static/assets/css/pe-icon-7-stroke.css" rel="stylesheet" type="text/css" media="screen"/>
    <link href="../../static/assets/css/animate.min.css" rel="stylesheet" type="text/css" media="screen"/>
    <link href="../../static/assets/css/light-bootstrap-dashboard.css" rel='stylesheet prefetch' type="text/css" media="screen"/>
    <link rel="stylesheet" href='https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css'>
</head>

<body>
<div class="wrapper">
    <div class="sidebar" data-color="black" data-image="../../static/assets/img/sidebar-5.jpg">
        <div class="sidebar-wrapper">
            <div class="logo">
                <a class="simple-text">
                    Sneaker Float
                </a>
            </div>

            <ul class="nav">
                <li class="active">
                    <a href="/dashboard">
                        <i class="pe-7s-graph"></i>
                        <p>Dashboard</p>
                    </a>
                </li>
                <li class="active">
                    <a href="/account">
                        <i class="pe-7s-user"></i>
                        <p>Create Account</p>
                    </a>
                </li>
                <li class="active">
                    <a href="/usermanager">
                        <i class="pe-7s-id"></i>
                        <p>Account List</p>
                    </a>
                </li>
                <li class="active">
                    <a href="/insertshoes">
                        <i class="pe-7s-upload"></i>
                        <p>Create Shoes</p>
                    </a>
                </li>
                <li class="active">
                    <a href="/shoesdetail">
                        <i class="pe-7s-news-paper"></i>
                        <p>Edit Shoes</p>
                    </a>
                </li>
                <li class="active">
                    <a href="/listbills">
                        <i class="pe-7s-user"></i>
                        <p>Bill List</p>
                    </a>
                </li>
                <li class="active">
                    <a href="/insertbillpage">
                        <i class="pe-7s-user"></i>
                        <p>Insert Bill</p>
                    </a>
                </li>

            </ul>
        </div>
    </div>


    <div class="main-panel" style="background-color: white">
        <nav class="navbar navbar-default navbar-fixed">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Shoes</a>
                </div>
                <li class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-left">
                        <li>
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-dashboard"></i>
                                <p class="hidden-lg hidden-md">Dashboard</p>
                            </a>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-globe"></i>
                                <b class="caret hidden-lg hidden-md"></b>
                                <p class="hidden-lg hidden-md">
                                    5 Notifications
                                    <b class="caret"></b>
                                </p>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Notification 1</a></li>
                                <li><a href="#">Notification 2</a></li>
                                <li><a href="#">Notification 3</a></li>
                                <li><a href="#">Notification 4</a></li>
                                <li><a href="#">Another notification</a></li>
                            </ul>
                        </li>

                        <li>
                            <a href="">
                                <i class="fa fa-search"></i>
                                <p class="hidden-lg hidden-md">Search</p>
                            </a>
                        </li>


                    </ul>

                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="#">
                                <p>Account</p>
                            </a>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <p>
                                    Dropdown
                                    <b class="caret"></b>
                                </p>

                            </a>
                        </li>
                        <ul class="dropdown-menu">
                            <li><a href="#">Action</a></li>
                            <li><a href="#">Another action</a></li>
                            <li><a href="#">Something</a></li>
                            <li><a href="#">Another action</a></li>
                            <li><a href="#">Something</a></li>
                            <li class="divider"></li>
                            <li><a href="#">Separated link</a></li>
                        </ul>
                        </li>
                        <li>
                            <a href="/logout">
                                <p>Log out</p>
                            </a>
                        </li>
                        <li class="separator hidden-lg"></li>
                    </ul>
            </div>

        </nav>
        <div class="flex full-width border-box relative column align-center justify-start hide-scroll">
            <div class="flex full-width border-box relative column align-center justify-center hide-scroll">
                <div class="flex full-width border-box relative align-center justify-center hide-scroll goat-width" style="height: calc(100vh - 180px); min-height: 500px; border: 1px solid black; max-height: 700px;">
                    <div class="flex full-width border-box relative hide-scroll full-height" style="width: 50%; border-right: 1px solid black;">
                        <div class="full-width border-box relative goat-scroll">
                            <div class="flex full-width border-box relative fixed-container hide-scroll lightbox-container hidden has-min-height" style="z-index: 9000;">
                                <div class="flex full-width border-box relative column align-center justify-center hide-scroll" style="width: 90px; z-index: 1;"><p class="plain-medium-10-caps" style="margin-bottom: 3px;"> 1 </p>
                                    <div style="height: 1px; border-bottom: 1px solid black; width: 10px;"></div><p class="plain-medium-10-caps" style="margin-top: 3px;">7</p></div>
                                <div class="flex full-width border-box absolute-container hide-scroll lightbox-overlay"></div>
                                <div class="flex full-width border-box absolute-container hide-scroll lightbox">
                                    <div class="flex full-width border-box relative hide-scroll full-height"><svg width="35px" height="35px" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 30 30" class="pointer lightbox-x" data-dismiss-on-click="true" style="position: absolute; top: -1px; right: -1px; z-index: 1; stroke: transparent; vertical-align: middle;">
                                        <path d="M29,1V29H1V1H29m1-1H0V30H30V0Z"></path>
                                        <line x1="18.08" y1="11.92" x2="11.92" y2="18.08" fill="none" stroke="black" stroke-miterlimit="10" stroke-width="1" style="stroke: black;"></line>
                                        <line x1="18.08" y1="18.08" x2="11.92" y2="11.92" fill="none" stroke="black" stroke-miterlimit="10" stroke-width="1" style="stroke: black;"></line></svg>
                                        <svg width="35px" height="35px" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 30 30" class="pointer lightbox-caret" style="transform: rotate(-180deg) translateY(50%); z-index: 1; position: absolute; top: 50%; left: -1px; opacity: 0.3;">
                                            <path d="M29,1V29H1V1H29m1-1H0V30H30V0Z"></path>
                                            <polyline points="14.02 11.79 17.23 15 14.02 18.21" fill="none" stroke="#000" stroke-miterlimit="10" stroke-width="1.5"></polyline></svg>
                                        <svg width="35px" height="35px" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 30 30" class="pointer lightbox-caret" style="transform: rotate(-360deg) translateY(-50%); z-index: 1; position: absolute; top: 50%; right: -1px;">
                                            <path d="M29,1V29H1V1H29m1-1H0V30H30V0Z"></path>
                                            <polyline points="14.02 11.79 17.23 15 14.02 18.21" fill="none" stroke="#000" stroke-miterlimit="10" stroke-width="1.5"></polyline></svg>
                                    </div>
                                </div>
                            </div>
                            <div class="flex full-width border-box relative align-center justify-center hide-scroll full-height">
                                <img alt="shoes img" class="hardware-accelerate align-self-center align-center-justify-center pointer" src="${anhgiay}" style="max-width: 65%; overflow: hidden; max-height: 90%;"></div>
                        </div>
                        <div class="flex full-width border-box absolute-container align-end justify-center hide-scroll" style="z-index: 2; pointer-events: none;">
                            <div class="flex full-width border-box relative align-center justify-center hide-scroll" style="padding: 30px;">
                                <p>${giay.getHanggiay().getTenhang()}</p>/<p>${giay.getLoaigiay().getTenloai()}</p></div></div></div>
                    <div class="flex full-width border-box relative align-center justify-center hide-scroll full-height" style="width: 50%;">
                        <div class="flex full-width border-box relative column hide-scroll full-height">
                            <div class="flex full-width border-box relative column align-center justify-center hide-scroll grow" style="position: relative;">
                                <div>
                                    <h1 class="ProductDisplayDesktopProductTemplateTitle__ProductNameText-jgh66d-1 hVNHDt">${giay.getTengiay()}</h1>
                                    <p class="ProductDisplayDesktopProductTemplateTitle__SKUText-jgh66d-2 gFBRQe">${giay.getNguongoc().getTennuoc()}</p>
                                </div>
                            </div>
                            <div class="flex full-width border-box relative hide-scroll" style="margin-top: auto;">
                                <div class="goat-button-group flex full-width" style="z-index: 1; position: relative; border-bottom: none; border-left: none; border-right: none; min-height: 45px;">
                                    <button class="goat-button secondary align-center-justify-center undefined" type="button"style="display: block; width: 50%; border-right: 1px solid black;"><a href="<c:url value="/chosenshoes/${giay.getMagiay()}" />">Detail</a></button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="flex full-width border-box relative align-center justify-center hide-scroll" style="height: 90px;">
                    <p class="plain-bold-10-caps pointer" style="margin-right: 6px;">DETAILS</p>
                    <svg data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 8.33 5" width="10px" height="10px" class="arrow pointer " style="transform: rotate(-180deg);"><polyline points="1.17 4.25 4.17 1.25 7.17 4.25" fill="none" stroke="#0b0b0b" stroke-miterlimit="10" stroke-width="1.5"></polyline></svg></div>
                <div class="flex column" style="margin-top: 45px; margin-bottom: 0px; border-width: 1px; width: 100%;">
                    <div data-qa="product_display_story_module" class="flex full-width border-box relative hide-scroll goat-width mlr-auto" style="display: block; text-align: center; margin-bottom: 65px; width: 50%;">
                        <p class="plain-regular-10-caps" style="line-height: 1.5; margin-left: auto; margin-right: auto; margin-top: 24px;">THONG TIN CHI TIET</p>
                    </div>
                </div>
            </div>
        </div>


        <footer class="footer">
            <div class="container-fluid">

                <p class="copyright pull-right">
                    &copy; <script>document.write(new Date().getFullYear())</script> <a>SneakerFloat</a>, made with love for a better service
                </p>
            </div>
        </footer>
    </div>
</div>

<script src="../../static/assets/js/jquery.3.2.1.min.js" type="text/javascript"></script>
<script src="../../static/assets/js/bootstrap.min.js" type="text/javascript"></script>

<!--  Charts Plugin -->
<script src="../../static/assets/js/chartist.min.js"></script>

<!--  Notifications Plugin    -->
<script src="../../static/assets/js/bootstrap-notify.js"  rel="script" type="text/javascript"></script>

<!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
<script src="../../static/assets/js/light-bootstrap-dashboard.js?v=1.4.0"  rel="script" type="text/javascript"></script>


</body>
</html>