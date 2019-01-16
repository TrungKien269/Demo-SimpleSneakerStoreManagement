<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="icon" type="image/png" href="../../static/assets/img/favicon.ico">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>Add Shoes</title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />
    <link href="../../static/assets/css/light-bootstrap-dashboard.css" rel="stylesheet" type="text/css"/>
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
    <link href="../../static/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="screen"/>
    <link href="../../static/assets/css/pe-icon-7-stroke.css" rel="stylesheet" type="text/css" media="screen"/>
    <link href="../../static/assets/css/animate.min.css" rel="stylesheet" type="text/css" media="screen"/>
    <link href="../../static/assets/css/style.css" rel="stylesheet" type="text/css" media="screen"/>
	<%--<link href="../../static/assets/css/style.css" rel="stylesheet" type="text/css" media="screen"/>--%>
    <link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css'>

    <script type="text/javascript">
        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#blah')
                        .attr('src', e.target.result);
                };
                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>
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
                    <a class="navbar-brand" href="#">Shoes</a>
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
                    <div class="col-md-6">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">Add Shoes</h4>
                            </div>
                            <div class="content">
                                <form:form action="/addgiay" enctype="multipart/form-data" method="post">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Shoes Name</label>
                                                <input type="text" class="form-control" name="tengiay" required>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Shoes ID</label>
                                                <input type="text" class="form-control" name="magiay" value="<c:out value="${shoesID}"/>" required>
                                            </div>
                                        </div>
                                       
                                    </div>
									<div class="row">
										 <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Manufacturer</label>
													
														<div class="select_mate" data-mate-select="active" >
                                                            <select name="mahang">
                                                                <c:forEach items="${hanggiayList}" var="item">
                                                                    <option value="<c:out value="${item.getMahang()}"/>"><c:out value="${item.getTenhang()}"/></option>
                                                                </c:forEach>
                                                            </select>
															<p class="selecionado_opcion"  onclick="open_select(this)" ></p>
															<span onclick="open_select(this)" class="icon_select_mate" >
																<svg fill="#000000" height="24" viewBox="0 0 24 24" width="24" xmlns="http://www.w3.org/2000/svg">
																	<path d="M7.41 7.84L12 12.42l4.59-4.58L18 9.25l-6 6-6-6z"/>			
																	<path d="M0-.75h24v24H0z" fill="none"/>
																</svg>
															</span>
															<div class="cont_list_select_mate">
																<ul class="cont_select_int"> </ul> 	
															</div>	
														</div>
													
                                            </div>
                                        </div>
									</div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Type</label>

                                                <div class="select_mate" data-mate-select="active" >
                                                    <select name="maloai">
                                                        <c:forEach items="${loaigiayList}" var="item">
                                                            <option value="<c:out value="${item.getMaloai()}"/>"><c:out value="${item.getTenloai()}"/></option>
                                                        </c:forEach>
                                                    </select>
                                                    <p class="selecionado_opcion"  onclick="open_select(this)" ></p>
                                                    <span onclick="open_select(this)" class="icon_select_mate" >
																<svg fill="#000000" height="24" viewBox="0 0 24 24" width="24" xmlns="http://www.w3.org/2000/svg">
																	<path d="M7.41 7.84L12 12.42l4.59-4.58L18 9.25l-6 6-6-6z"/>
																	<path d="M0-.75h24v24H0z" fill="none"/>
																</svg>
															</span>
                                                    <div class="cont_list_select_mate">
                                                        <ul class="cont_select_int"> </ul>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Original Country</label>
													
														<div class="select_mate" data-mate-select="active" >
                                                            <select name="manuoc">
                                                                <c:forEach items="${nguongocList}" var="item">
                                                                    <option value="<c:out value="${item.getManuoc()}"/>"><c:out value="${item.getTennuoc()}"/></option>
                                                                </c:forEach>
                                                            </select>
															<p class="selecionado_opcion"  onclick="open_select(this)" ></p>
															<span onclick="open_select(this)" class="icon_select_mate" >
																<svg fill="#000000" height="24" viewBox="0 0 24 24" width="24" xmlns="http://www.w3.org/2000/svg">
																	<path d="M7.41 7.84L12 12.42l4.59-4.58L18 9.25l-6 6-6-6z"/>			
																	<path d="M0-.75h24v24H0z" fill="none"/>
																</svg>
															</span>
															<div class="cont_list_select_mate">
																<ul class="cont_select_int"> </ul> 	
															</div>	
														</div>
												
                                            </div>
                                        </div>                                        
                                    </div>
									<div class="row">
										<div class="col-md-6">
                                            <div class="form-group">
                                                <label>Size</label>													
														<div class="select_mate" data-mate-select="active" >
                                                            <select name="vnsize">
                                                                <c:forEach items="${sizeList}" var="item">
                                                                    <option value="<c:out value="${item.getVnsize()}"/>"><c:out value="${item.getVnsize()}"/></option>
                                                                </c:forEach>
                                                            </select>
															<p class="selecionado_opcion"  onclick="open_select(this)" ></p>
															<span onclick="open_select(this)" class="icon_select_mate" >
																<svg fill="#000000" height="24" viewBox="0 0 24 24" width="24" xmlns="http://www.w3.org/2000/svg">
																	<path d="M7.41 7.84L12 12.42l4.59-4.58L18 9.25l-6 6-6-6z"/>			
																	<path d="M0-.75h24v24H0z" fill="none"/>
																</svg>
															</span>
															<div class="cont_list_select_mate">
																<ul class="cont_select_int"> </ul> 	
															</div>	
														</div>												
                                            </div>
                                        </div>
									</div>
                                    <div class="row">
                                        <div class="col-md-8">
                                            <div class="form-group">
                                                <label>Color</label>
                                                <input type="text" class="form-control" name="maugiay" required>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-8">
                                            <div class="form-group">
                                                <label>Price</label>
                                                <input type="text" class="form-control" name="giagiay" required>
                                            </div>
                                        </div>
                                    </div>


                                    <div class="col-md-4">
                                        <div class="card card-user">
                                            <div class="content" style="border: 1px solid black;border-radius: 4px;width: 300px; height:300px ">
                                                <img id="blah" src="../../static/assets/img/default-avatar.png" alt="your image" style="border:2px solid white; width: 300px;height:290px;padding: 0px " />
                                            </div>
                                            <div class="content" style="border: 1px solid black;border-radius: 4px;height: 50px;background-color: #1DC7EA">
                                                <i class="pe-7s-angle-down-circle">
                                                    <label>Click to add image</label>
                                                </i>
                                                <input type="file" name = "hinh" accept="image/*" onchange="readURL(this)" style="opacity: 0;width: 100%;height: 50px">
                                            </div>

                                        </div>


                                        <div class="row">
                                            <div class="col-md-8">
                                                <button type="submit" class="btn btn-info btn-fill">Add</button>
                                            </div>
                                        </div>
                                    </div>


                                    <div class="clearfix"></div>
                                </form:form>
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
<script src="../../static/assets/js/cbox.js"  rel="script" type="text/javascript"></script>
<!--  Charts Plugin -->
<script src="../../static/assets/js/chartist.min.js"></script>

<!--  Notifications Plugin    -->
<script src="../../static/assets/js/bootstrap-notify.js"  rel="script" type="text/javascript"></script>

<!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
<script src="../../static/assets/js/light-bootstrap-dashboard.js?v=1.4.0"  rel="script" type="text/javascript"></script>



</body>
</html>