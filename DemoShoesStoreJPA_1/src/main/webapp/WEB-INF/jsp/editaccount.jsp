<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="icon" type="image/png" href="../../static/assets/img/favicon.ico">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>Account</title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
    <link href="../../static/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="screen"/>
    <link href="../../static/assets/css/pe-icon-7-stroke.css" rel="stylesheet" type="text/css" media="screen"/>
    <link href="../../static/assets/css/light-bootstrap-dashboard.css" rel="stylesheet" type="text/css" media="screen"/>
    <link href="../../static/assets/css/animate.min.css" rel="stylesheet" type="text/css" media="screen"/>

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
                    <a class="navbar-brand" href="#">Account</a>
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
                            <a href="">
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
        <div class="content">

            <div class="container-fluid" >
                <div class="row">
                    <div class="col-md-8">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">Edit Profile</h4>
                            </div>
                            <div class="content">
                                <form action="/updateaccount" method="post">
                                    <div class="row">
                                        <div class="col-md-5">
                                            <div class="form-group">
                                                <label>Company (disabled)</label>
                                                <input type="text" class="form-control" disabled placeholder="Company" value="Sneaker Float">
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Username</label>
                                                <input type="text" class="form-control" name="username" placeholder="Username" value="${account.getUsername()}" required>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Email address</label>
                                                <input type="email" class="form-control" placeholder="Email" disabled>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>First Name</label>
                                                <input type="text" class="form-control" placeholder="Company" value="" disabled>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Last Name</label>
                                                <input type="text" class="form-control" placeholder="Last Name" value="" disabled>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Password</label>
                                                <input type="password" class="form-control" name="password" placeholder="Password..." value="${account.getPassword()}" required>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="content">
                                        <table class="table-full-width">
                                            <table class="table">
                                                <tbody>
                                                <tr>
                                                    <td>
                                                        <input type="radio" name="position" value="1" required>
                                                    </td>
                                                    <td>Admin</td>

                                                </tr>
                                                <tr>
                                                    <td>
                                                        <input type="radio" name="position" value="0" required>
                                                    </td>
                                                    <td>Staff</td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </table>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-9">
                                            <button type="submit" class="btn btn-info btn-fill" style="margin-left: 50%">Update Profile</button>
                                        </div>
                                    </div>



                                    <div class="clearfix"></div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card card-user">
                            <div class="image">
                                <img src="https://scontent.fsgn4-1.fna.fbcdn.net/v/t31.0-8/23215532_798795750330785_5177492597318781139_o.jpg?_nc_cat=105&_nc_eui2=AeGZn3DzUkg1cC-NjmPlP3QZP3smKbIPFgQe0o8T1H5uvguAMdpQsqKXKZ8XwhvaaxySTc2XBCJuW4-4OU2nYBncHTCtyvuK-qMo88qVQc85GA&_nc_ht=scontent.fsgn4-1.fna&oh=19845d044d0e2dca97b8c987444f314f&oe=5C984887" alt="..."/>
                            </div>
                            <div class="content">
                                <div class="author">
                                    <a href="#">
                                        <img class="avatar border-gray" src="https://scontent.fsgn4-1.fna.fbcdn.net/v/t1.0-9/20294185_757476567796037_8590390526092884953_n.jpg?_nc_cat=101&_nc_eui2=AeEUxFFOc8QJyr4WyHKe8JAkxCdrRG3tXvT396qo6J0GrjA7-hjegmVgyp2025XO1BISJ3DEKlmKBQrtA6QlDz6nyr7asaxmiY22vtX9Tg2jiQ&_nc_ht=scontent.fsgn4-1.fna&oh=32fedbe023472aaffe2dab1376e5f9b5&oe=5C91564F" alt="..."/>

                                        <h4 class="title">Sneaker Store<br/>
                                            <small>Thanh Thế</small>
                                        </h4>
                                    </a>
                                </div>
                                <p class="description text-center">Admin<br>

                                </p>
                            </div>
                            <hr>
                            <div class="text-center">
                                <button href="#" class="btn btn-simple"><i class="fa fa-facebook-square"></i></button>
                                <button href="#" class="btn btn-simple"><i class="fa fa-twitter"></i></button>
                                <button href="#" class="btn btn-simple"><i class="fa fa-google-plus-square"></i></button>

                            </div>
                        </div>
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