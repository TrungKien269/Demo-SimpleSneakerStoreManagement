<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
    <link href="../../static/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="screen"/>
    <link href="../../static/assets/css/pe-icon-7-stroke.css" rel="stylesheet" type="text/css" media="screen"/>
    <link href="../../static/assets/css/animate.min.css" rel="stylesheet" type="text/css" media="screen"/>
    <link href="../../static/assets/css/light-bootstrap-dashboard.css" rel="stylesheet" type="text/css" media="screen"/>
    <link href="../../static/assets/css/style.css" rel="stylesheet" type="text/css" media="screen"/>
    <link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css'>
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


    <div class="main-panel">
        <nav class="navbar navbar-default navbar-fixed">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Dashboard</a>
                </div>
                <div class="collapse navbar-collapse">
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
                            <a href="/account">
                                <p>${user}</p>
                            </a>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <p>
                                    Dropdown
                                    <b class="caret"></b>
                                </p>

                            </a>
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
            </div>
        </nav>

        <div class="content" style="background-color:#e7e7e7">
            <div class="container-fluid" style="padding-left: 0px;padding-right: 0px">
                <c:forEach items="${list}" var="item">
                    <div class="example-1 card" style="width: 300px;height: 300px; display: contents">
                        <div class="wrapper" style="height: 250px;width: 300px">
                            <img src="../../static/assets/img/shoes/<c:out value="${item.getLinkanh()}"/>" alt="img not available" style="width: 80%"/>
                            <div class="date">
                                <span class="day"><script>12</script></span>
                                <span class="month">NEW</span>
                                <span class="year">2019</span>
                            </div>
                            <div class="data">
                                <div class="content" style="height: 120px;">
                                    <span class="title">$<c:out value="${item.getGiay().getGiagiays().get(0).getGiagiay()}" /></span>
                                    <h4 class="title"><a href="<c:url value="/shoesdetail/${item.getGiay().getMagiay()}" />"><c:out value="${item.getGiay().getTengiay()}" /></a></h4>
                                    <label for="show-menu" class="menu-button"><span></span></label>
                                </div>
                                <input type="checkbox" id="show-menu" />
                            </div>
                        </div>
                    </div>
                </c:forEach>
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