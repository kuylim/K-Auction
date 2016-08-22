

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">


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

        <!-- slide -->

        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/myslide.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/mystyle.css">
        <link href="${pageContext.request.contextPath }/resources/admin/js/sweetalert/sweetalert.css" rel="stylesheet">

        <style>

            .cart,.view-product h3,.item-control i ,a#scrollUp,.recommended-item-control i,.searchform button,.nav-tabs  li.active  a, .nav-tabs  li.active  a:hover, .nav-tabs  li.active  a:focus,button.add-to-cart:hover,.searchform button:hover,.category-tab ul li a:hover,.category-tab ul li a:hover{
                background-color: rgb(78, 156, 80);
            }
            .product-information span span,.left-sidebar h2, .brands_products h2,.productinfo h2,h2.title,.mainmenu ul li a:hover, .mainmenu ul li a.active, .shop-menu ul li a.active,.shop-menu ul li a:hover,.companyinfo h2  span,.footer-bottom p span a{
                color:rgb(78, 156, 80);
            }


            #similar-product img{
                width:85px;
                height: 84px;
            }
            .category-tab ul{
                border-bottom: 1px solid  #009688;
            }



            ul{
                list-style: none outside none;
                padding-left: 0;
                margin: 0;
            }
            .demo .item{
                margin-bottom: 60px;
            }
            .content-slider li{
                background-color: #ed3020;
                text-align: center;
                color: #FFF;
            }
            .content-slider h3 {
                margin: 0;
                padding: 70px 0;
            }
            .demo{
                width: 100%;
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
                <script>
                    $(function () {
                        $('#iframe1').click(function () {
                            $(window).scroll(function () {
                                return false;
                            });
                            pageTracker._trackPageview('/onclick/emailquote');
                        });
                    });
                </script>

                <div class="header-middle"><!--header-middle-->
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-4">
                                <div class="logo pull-left">
                                    <a href="${pageContext.request.contextPath }/home"><img src="${pageContext.request.contextPath }/resources/images/home/logochange.gif" alt="" ></a>
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
    <section>
        <div class="container" ng-controller="ctrl">
            <div class="row" ng-init="getAuction_detail(${id})"> 
                <div class="col-sm-12 padding-right">
                    <div class="product-details"><!--product-details-->
                        <div class="col-sm-6" style="margin-top:50px;">

                            <div id="jssor_1" style="position: relative; margin: 0 auto; top: 0px; left: 0px; width: 800px; height: 600px; overflow: hidden; visibility: hidden; background-color: white;">
                                <!-- Loading Screen -->
                                <div data-u="loading" style="position: absolute; top: 0px; left: 0px;">
                                    <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
                                    <div style="position:absolute;display:block;background:url('${pageContext.request.contextPath }/resources/img/loading.gif') no-repeat center center;top:0px;left:0px;width:100%;height:100%;"></div>
                                </div>
                                <div  data-u="slides" style="cursor: default; position: relative; top: 0px; left: 0px; width: 800px; height: 550px; overflow: hidden;" >
                                    <div ng-repeat="auc in auc_detail.images" my-filter data-p="144.50" style="display: none;">
                                        <img  data-u="image" src="http://localhost:9999/resources/{{auc.img_path}}">                     
                                    </div>
                                </div>
                            </div>

                        </div>

                        <div class="col-sm-6">
                            <div class="product-information"><!--/product-information-->
                                <!-- <img src="images/product-details/new.jpg" class="newarrival" alt="" /> -->              
                                <h2>{{auc_detail.name}}</h2>

                                <span>
                                    <span>{{auc_detail.current_price}} $</span>
                                    <security:authorize access="isAuthenticated()">
                                        <span ng-init="getCus(<security:authentication property="principal.id" />);"></span>  
                                        <a  class="btn btn-fefault cart" ng-click="bidding(auc_detail.auc_id)">
                                            <i class="fa fa-shopping-cart"></i>
                                            Bid
                                        </a>    
                                    </security:authorize>
                                    <security:authorize access="isAnonymous()">
                                        <a  class="btn btn-fefault cart" href="/login">
                                            <i class="fa fa-shopping-cart"></i>
                                            Bid
                                        </a>
                                    </security:authorize>
                                    
                                    <button type="button" class="btn btn-fefault cart">
                                        <i class="fa fa-shopping-cart"></i>
                                        Buy now
                                    </button> 
                                </span>
                                <p><b>ចំនួននៃការ bid:</b> {{auc_detail.number_of_bids}} bids</p>
                                <!--<p><b>ចំនួនៃថ្ងដែលនៅសល់:</b> {{(auc_detail.end_date - date) / (1000 * 60 * 60) % 24 | number:0}} ម៉ោង</p>-->
                                <p><b>ចំនួនៃថ្ងដែលនៅសល់:</b>{{auc_detail.remainingTime | durationview}}</p>
                                <p><b>ស្ថានភាព:</b> {{auc_detail.product_condition}}</p>
                                <p><b>ថ្ងៃចាប់ផ្ដើម:</b> {{auc_detail.start_date| date:'yyyy-MM-dd'}}</p>       
                                <p><b>ថ្ងៃបញ្ចប់:</b> {{auc_detail.end_date| date:'yyyy-MM-dd'}}</p>  
                                <a href=""><img src="${pageContext.request.contextPath }/resources/images/product-details/share.png" class="share img-responsive"  alt="" /></a>
                            </div><!--/product-information-->
                        </div>
                    </div><!--/product-details-->


                    <div class="category-tab shop-details-tab"><!--category-tab-->
                        <div class="col-sm-12">
                            <ul class="nav nav-tabs">
                                <li><a href="#details" data-toggle="tab">Details</a></li>
                                <li><a href="#companyprofile" data-toggle="tab">Company Profile</a></li>
                            </ul>
                        </div>
                        <div class="tab-content">
                            <div class="tab-pane fade" id="details" >
                                <p>{{auc_detail.pro_info}}</p>
                            </div>

                            <div class="tab-pane fade" id="companyprofile" >
                                <p>ឈ្មោះម្ចាស់ផលិតផល: {{auc_detail.lastname}}  {{auc_detail.firstname}}</p>
                                <p>{{auc_detail.company_profile}}</p>

                            </div>		
                        </div>
                    </div><!--/category-tab-->

                    <div class="recommended_items"><!--recommended_items-->
                        <h2 class="title text-center">ផលិតផលថ្មី</h2>

                        <div id="recommended-item-carousel" class="carousel slide" data-ride="carousel">
                            <div class="carousel-inner">
                                <div class="item active">	
                                    <div class="col-sm-4" ng-repeat="auc in New_auctions | limitTo : 3 : 0">
                                                <div class="product-image-wrapper">
                                                    <div class="single-products">
                                                        <div class="productinfo text-center" >
                                                            <a href="${pageContext.request.contextPath }/product-details/{{auc.auc_id}}"><img src="http://localhost:9999/resources/{{auc.images[0].img_path}}" alt="" width="200" height="200"/></a>
                                                            <h2>$ {{auc.current_price}}</h2>
                                                            <p>{{auc.name}}</p>
                                                            <security:authorize access="isAuthenticated()">
                                                                <span ng-init="getCus(<security:authentication property="principal.id" />);"></span>    
                                                                <a ng-click="bidding(auc.auc_id)" class="btn btn-success add-to-cart"><i class="fa fa-hand-paper-o"></i>Bid</a>
                                                            </security:authorize>

                                                            <security:authorize access="isAnonymous()">
                                                                <a href="${pageContext.request.contextPath }/login" class="btn btn-success add-to-cart"><i class="fa fa-hand-paper-o"></i>Bid</a>
                                                            </security:authorize>  
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                </div>
                                <div class="item">	
                                    <div class="col-sm-4" ng-repeat="auc in New_auctions | limitTo : 3 : 3">
                                                <div class="product-image-wrapper">
                                                    <div class="single-products">
                                                        <div class="productinfo text-center" >
                                                            <a href="${pageContext.request.contextPath }/product-details/{{auc.auc_id}}"><img src="http://localhost:9999/resources/{{auc.images[0].img_path}}" alt="" width="200" height="200"/></a>
                                                            <h2>$ {{auc.current_price}}</h2>
                                                            <p>{{auc.name}}</p>
                                                            <security:authorize access="isAuthenticated()">
                                                                <span ng-init="getCus(<security:authentication property="principal.id" />);"></span>    
                                                                <a ng-click="bidding(auc.auc_id)" class="btn btn-success add-to-cart"><i class="fa fa-hand-paper-o"></i>Bid</a>
                                                            </security:authorize>

                                                            <security:authorize access="isAnonymous()">
                                                                <a href="${pageContext.request.contextPath }/login" class="btn btn-success add-to-cart"><i class="fa fa-hand-paper-o"></i>Bid</a>
                                                            </security:authorize>  
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                </div>
                            </div>
                            <a class="left recommended-item-control" href="#recommended-item-carousel" data-slide="prev">
                                <i class="fa fa-angle-left"></i>
                            </a>
                            <a class="right recommended-item-control" href="#recommended-item-carousel" data-slide="next" >
                                <i class="fa fa-angle-right"></i>
                            </a>			
                        </div>
                    </div><!--/recommended_items-->
                </div>
            </div>
        </div>

    </section>

    <script src="${pageContext.request.contextPath }/resources/js/momentjs/moment.js"></script> 
    
    <script src="${pageContext.request.contextPath }/resources/js/jquery.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/price-range.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/jquery.scrollUp.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/jquery.prettyPhoto.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/main.js"></script>

    <!--slider-->
    <script type="text/javascript" src="${pageContext.request.contextPath }/resources/jsslide/jssor.slider.min.js"></script>
    <!--<script src="${pageContext.request.contextPath }/resources/jsslide/myjs.js"></script>-->
    <script src="${pageContext.request.contextPath }/resources/js/angular.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/product_detail_app.js"></script>
    
    <script src="${pageContext.request.contextPath }/resources/admin/js/sweetalert/sweetalert.min.js"></script>
</body>
</html>