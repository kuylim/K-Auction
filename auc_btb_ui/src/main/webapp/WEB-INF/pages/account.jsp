
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en" ng-app="app">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Product Details | K-Auction</title>
    <link href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/css/font-awesome.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/css/prettyPhoto.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/css/price-range.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/css/animate.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/css/main.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/css/responsive.css" rel="stylesheet">


    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="${pageContext.request.contextPath }/resources/images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="${pageContext.request.contextPath }/resources/images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="${pageContext.request.contextPath }/resources/images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath }/resources/images/ico/apple-touch-icon-57-precomposed.png">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/mystyle.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/auction.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/account.css">

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/fonts/font/khmer/auction.css">



    
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    
    <style>
        ul li{
            list-style: none;
            padding-top:20px;
            text-decoration: none;

        }
        .panel{

            margin-top: 50px;
        }
        .tab-content{

            width: 400px;
            margin-top: 50px;
        }
        .panel-success>.panel-heading{
            background: rgb(78, 156, 80);
            color:white;
        }
        body{
            font-family: khmer Os;
        }
    </style>

</head><!--/head-->

<body>
<header id="header"><!--header-->
    <div class="header_top"><!--header_top-->
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="contactinfo">
                        <ul class="nav nav-pills">
                            <li><a href=""><i class="fa fa-phone"></i> +855 92 391 577</a></li>
                            <li><a href=""><i class="fa fa-envelope"></i> kuylim.tith@gmail.com</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="social-icons pull-right">
                        <ul class="nav navbar-nav">
                            <li><a href=""><i class="fa fa-facebook"></i></a></li>
                            <li><a href=""><i class="fa fa-twitter"></i></a></li>
                            <li><a href=""><i class="fa fa-linkedin"></i></a></li>
                            <li><a href=""><i class="fa fa-google-plus"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div><!--/header_top-->

    <div class="header-middle"><!--header-middle-->
        <div class="container">

            <div class="row">
                <div class="col-sm-4">
                    <div class="logo pull-left">
                        <a href="index.html"><img src="${pageContext.request.contextPath }/resources/images/home/logochange.gif" alt="" /></a>
                    </div>
                </div>
                <div class="col-sm-8">
                    <div class="shop-menu pull-right">
                        <ul class="nav navbar-nav">
                            <li><a href="account.html"><i class="fa fa-user"></i> គណនីយ</a></li>
                            <li><a href="wishlist.html"><i class="fa fa-star"></i> របស់ដែលអ្នកប្រាថ្នា</a></li>
                            <li><a href="cart.html"><i class="fa fa-shopping-cart"></i> កន្រ្តក</a></li>
                            <li><a href="login.html"><i class="fa fa-lock"></i> ចូលទៅកាន់</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div><!--/header-middle-->

    <div class="header-bottom"><!--header-bottom-->
        <div class="container">
            <div class="row">
                <div class="col-sm-9">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>
                    <div class="mainmenu pull-left">
                        <ul class="nav navbar-nav collapse navbar-collapse">
                            <li><a href="index.html" class="active">ទំព័រដើម</a></li>
                            <li class="dropdown"><a href="#">K-Auction<i class="fa fa-angle-down"></i></a>
                                <ul role="menu" class="sub-menu">
                                    <li><a href="shop.html">ផលិតផល</a></li> 
                                    <li><a href="login.html">ចូលទៅកាន់</a></li> 
                                </ul>
                            </li> 
                            <li><a href="contact-us.html">ទំនាក់ទំនង</a></li>
                        </ul>
                    </div>
                </div>
                <!-- <div class="col-sm-3">
                        <div class="search_box pull-right">
                                <input type="text" placeholder="Search"/>
                        </div>
                </div> -->
            </div>
        </div>
    </div><!--/header-bottom-->
</header><!--/header-->

<script>
    var user_id = '${user_id}';
</script>

<section>
    <div class="container" ng-controller="ctrl">	
        <div class="row" ng-init="test()">
            <h1>${user_id}</h1>
            <div class="col-sm-3">

                <div class="panel panel-success ">
                    <div class="panel-heading">.</div>
                    <div class="panel-body tabbable tabs-left" id="rootwizard">

                        <ul>
                            <li><a href="#tab1" data-toggle="tab">Contact Information</a></li>
                            <li><a href="#tab2" data-toggle="tab">Change Password</a></li>
                            <li><a href="#tab3" data-toggle="tab">Form</a></li>
                            <li><a href="#tab4" data-toggle="tab">Topup Account</a></li>

                        </ul>
                    </div>
                </div>

            </div>

            <div class="col-sm-9">
                <div class="panel panel-success">
                    <div class="panel-heading">Information</div>
                    <div class="panel-body">

                        <div class="tab-content  ">
                            <div class="tab-pane" id="tab1">
                                <form class="form-horizontal" role="form">
                                    <div class="form-group">
                                        <label class="control-label col-sm-4" for="email">នាម:</label>
                                        <div class="col-sm-8">
                                            <input type="email" class="form-control" id="email" ng-model="user.firstname">
                                        </div><br>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-4" for="pwd">ត្រកូល:</label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control" id="pwd" value="1234567">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-4" for="pwd">អាស័យដ្ធាន :</label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control" id="pwd" value="1234567">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label col-sm-4" for="pwd">ប្រទេស:</label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-4" for="pwd">ទីក្រង:</label>
                                        <div class="col-sm-8">
                                            <input type="email" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-4" for="email">Zip Code / Postal Code:</label>
                                        <div class="col-sm-8">
                                            <input type="email" class="form-control" id="email" value="nganthanak@gmail.com">
                                        </div><br>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-4" for="pwd">លេខទូរស័ព្ទ:</label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control" id="pwd" value="1234567">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-4" for="pwd">អីុមែល:</label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control" id="pwd" value="1234567">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label col-sm-4" for="pwd">ខេត្ត:</label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control">
                                        </div>
                                    </div>

                                </form>
                            </div>
                            <div class="tab-pane" id="tab2">
                                <form class="form-horizontal" role="form">
                                    <div class="form-group">
                                        <label class="control-label col-sm-4" for="email">លេខសំងាត់ចាស់:</label>
                                        <div class="col-sm-8">
                                            <input type="email" class="form-control" id="email" placeholder="Old Password">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-4" for="pwd">លេខសំងាត់ថ្មី:</label>
                                        <div class="col-sm-8"> 
                                            <input type="password" class="form-control" id="pwd" placeholder="New password">
                                        </div>
                                    </div>

                                    <div class="form-group"> 
                                        <div class="col-sm-offset-4 col-sm-8">
                                            <button type="submit" class="btn btn-success">Change</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div class="tab-pane" id="tab3">
                                <form class="form-horizontal" role="form">
                                    <div class="form-group">
                                        <label class="control-label col-sm-4" for="email">ឈ្មោះអ្នកប្រើប្រាស់<sup>*</sup>:</label>
                                        <div class="col-sm-8">
                                            <input type="email" class="form-control" id="email" value="nganthanak@gmail.com">
                                        </div><br>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-4" for="pwd">អ៊ីមែល<sup>*</sup>:</label>
                                        <div class="col-sm-8">
                                            <input type="password" class="form-control" id="pwd" value="1234567">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-4 " for="pwd">នាយកដ្ឋាន<sup>*</sup>:</label>
                                        <div class="col-sm-8">
                                            <select class="form-control" id="sel1">
                                                <option>Computer Science</option>
                                                <option>Administrator</option>
                                                <option>IFL</option>
                                                <option>NORTON</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-4 " for="pwd">សាកលវិទ្យាល័យ*<sup>*</sup>:</label>
                                        <div class="col-sm-8">
                                            <select class="form-control" id="sel1">
                                                <option>RUPP</option>
                                                <option>SETEC</option>
                                                <option>IFL</option>
                                                <option>NORTON</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="from-group">
                                        <label class="control-label col-sm-4" for="pwd">ភេទ:</label>
                                        <div class="col-sm-8">
                                            <div class="radio​​ "​>
                                                <label><input type="radio" name="optradio">ប្រុស</label> &nbsp;&nbsp;&nbsp;
                                                <label><input type="radio" name="optradio">ស្រី</label>
                                            </div>


                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-4" for="pwd">ថ្ងៃខែឆ្នាំកំណើត<sup>*</sup>:</label>
                                        <div class="col-sm-8">
                                            <input type="password" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-4" for="pwd">លេខទូរស័ព្ទ<sup>*</sup>:</label>
                                        <div class="col-sm-8">
                                            <input type="email" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-offset-2 col-sm-10">
                                            <button type="submit" class="btn btn-primary"​ style="background:rgb(78, 156, 80)">កែប្រែ</button>
                                        </div>
                                    </div>
                                </form>

                            </div>

                            <div class="tab-pane" id="tab4">
                                <form class="form-horizontal" role="form">
                                    <div class="form-group">
                                        <label class="control-label col-sm-4" >ចំនួនទឹកប្រាក់:</label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control" placeholder="Type your balance">
                                        </div>
                                    </div>


                                    <div class="form-group"> 
                                        <div class="col-sm-offset-4 col-sm-8">
                                            <button type="submit" class="btn btn-success">Topup</button>
                                        </div>
                                    </div>
                                </form>
                            </div>

                        </div>	
                    </div>
                </div>

            </div>


        </div>
    </div>

    <footer id="footer"><!--Footer-->
        <div class="footer-bottom">
            <div class="container">
                <div class="row">
                    <p class="pull-left">Copyright © 2016 K-Auction. All rights reserved.</p>        
                </div>
            </div>
        </div>

    </footer><!--/Footer-->
</section>




<!--<script>
    $(document).ready(function () {
        $('#rootwizard').bootstrapWizard({'tabClass': 'nav nav-tabs'});
    });
</script>-->





<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
    <script src="${pageContext.request.contextPath }/resources/js/angular.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/account_app.js"></script>

</body>
</html>