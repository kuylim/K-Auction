
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

    <link href="${pageContext.request.contextPath }/resources/admin/js/sweetalert/sweetalert.css" rel="stylesheet">

    
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
                                        <li><a href="#"><i class="fa fa-phone"></i> +855 92 391 577</a></li>
                                        <li><a href="#"><i class="fa fa-envelope"></i> kuylim.tith@gmail.com</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="social-icons pull-right">
                                    <ul class="nav navbar-nav">
                                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                        <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                        <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
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
                                    <a href="/home"><img src="${pageContext.request.contextPath }/resources/images/home/logochange.gif" alt="" ></a>
                                </div>
                            </div>
                            <div class="col-sm-8">
                                <div class="shop-menu pull-right">
                                    <ul class="nav navbar-nav">
                                        <security:authorize access="isAuthenticated()">
                                            <li><a href="${pageContext.request.contextPath }/account/<security:authentication property="principal.id" />"><i class="fa fa-user"></i> គណនីយ</a></li>
                                                </security:authorize>

                                                <security:authorize access="isAnonymous()">
                                                    <li><a href="${pageContext.request.contextPath }/login"><i class="fa fa-user"></i> គណនីយ</a></li>
                                                </security:authorize>  
                                        
                                            <security:authorize access="isAuthenticated()">
                                            <li><a href="${pageContext.request.contextPath }/logout"><i class="fa fa-sign-out"></i> ចាកចេញ</a></li>
                                            </security:authorize>
                                            <security:authorize access="isAnonymous()">
                                            <li><a href="${pageContext.request.contextPath }/login"><i class="fa fa-lock"></i> ចូលទៅកាន់</a></li>
                                            </security:authorize>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!--/header-middle-->

                <div class="header-bottom"><!--header-bottom-->
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-5">
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
                                        <li><a href="${pageContext.request.contextPath }/home" class="active">ទំព័រដើម</a></li>

                                        <li><a href="${pageContext.request.contextPath }/contact-us">ទំនាក់ទំនង</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!--/header-bottom-->
            </header><!--/header-->

<script>
    var user_id = '${user_id}';
</script>

<section>
    <div class="container" ng-controller="ctrl">	
        <div class="row">
            <div class="col-sm-3">
                <div class="panel panel-success ">
                    <div class="panel-heading">.</div>
                    <div class="panel-body tabbable tabs-left" id="rootwizard">
                        <ul>
                            <li><a href="#tab1" data-toggle="tab">Contact Information</a></li>
                            <li><a href="#tab2" data-toggle="tab">Change Password</a></li>
                            <li><a href="#tab3" data-toggle="tab">View bid history</a></li>
                            <li><a href="#tab4" data-toggle="tab">Top up balance</a></li>
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
                                <form class="form-horizontal" role="form" ng-submit="updateUserInfo()">
                                    
                                    <div class="form-group">
                                        <label class="control-label col-sm-4">លេខសម្គាល់:</label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control"  ng-model="user.cus_id" readonly>
                                        </div>
                                    </div>
                                    
                                    <div class="form-group">
                                        <label class="control-label col-sm-4">នាម:</label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control"  ng-model="user.firstname">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-4">ត្រកូល:</label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control" ng-model="user.lastname">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-4">អាស័យដ្ធាន :</label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control" ng-model="user.address">
                                        </div>
                                    </div>
                                    
                                    <div class="form-group">
                                        <label class="control-label col-sm-4">លេខទូរស័ព្ទ:</label>
                                        <div class="col-sm-8">
                                            <input type="phone" class="form-control" ng-model="user.phone">
                                        </div>
                                    </div>
                                    
                                    <div class="form-group">
                                        <label class="control-label col-sm-4">អ៊ីមែល:</label>
                                        <div class="col-sm-8">
                                            <input type="email" class="form-control" ng-model="user.email">
                                        </div>
                                    </div>
                                    <div class="form-group"> 
                                        <div class="col-sm-offset-4 col-sm-8">
                                            <button type="submit" class="btn btn-success">ផ្លាស់ប្ដូរ</button>
                                        </div>
                                    </div>
                                    
                                </form>
                            </div>
                            <div class="tab-pane" id="tab2">
                                <!--place ng-submit here-->
                                <form class="form-horizontal" role="form" ng-submit="updatePassword()">
                                    <div class="form-group">
                                        <label class="control-label col-sm-4" for="email">ពាក្យសំងាត់ចាស់:</label>
                                        <div class="col-sm-8">
                                            <input type="password" class="form-control"  placeholder="ពាក្យសំងាត់ចាស់" ng-model="usr.oldpassword">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-4" for="pwd">ពាក្យសំងាត់ថ្មី:</label>
                                        <div class="col-sm-8"> 
                                            <input type="password" class="form-control"  placeholder="ពាក្យសំងាត់ថ្មី" ng-model="usr.password">
                                        </div>
                                    </div>

                                    <div class="form-group"> 
                                        <div class="col-sm-offset-4 col-sm-8">
                                            <button type="submit" class="btn btn-success">ផ្លាស់ប្ដូរ</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div class="tab-pane" id="tab3">
                                <!--place auction hsitory here-->
                            </div>

                            <div class="tab-pane" id="tab4">
                                <form class="form-horizontal" role="form" ng-submit="topup()">
                                    
                                    <div class="form-group">
                                        <label class="control-label col-sm-4" >ចំនួនទឹកប្រាក់បច្ចុប្បន្ន: (Credit)</label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control" readonly ng-model="user.credit" > 
                                        </div>
                                    </div>
                                    
                                    <div class="form-group">
                                        <label class="control-label col-sm-4" >ចំនួនទឹកប្រាក់:</label>
                                        <div class="col-sm-8">
                                            <input type="number" class="form-control" placeholder="ចំនួនទឹកប្រាក់" ng-model="usr.credit">
                                        </div>
                                    </div>
                                    
                                    <div class="form-group"> 
                                        <div class="col-sm-offset-4 col-sm-8">
                                            <button type="submit" class="btn btn-success">បញ្ជូល</button>
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

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
    <script src="${pageContext.request.contextPath }/resources/js/angular.min.js"></script>
     <script src="${pageContext.request.contextPath }/resources/admin/js/sweetalert/sweetalert.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/account_app.js"></script>
   
</body>
</html>