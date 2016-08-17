

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


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

        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/images/motor/myslide.css">

        <style>

            .cart,.view-product h3,.item-control i ,a#scrollUp,.recommended-item-control i,.searchform button,.nav-tabs  li.active  a, .nav-tabs  li.active  a:hover, .nav-tabs  li.active  a:focus,button.add-to-cart:hover,.searchform button:hover,.category-tab ul li a:hover,.category-tab ul li a:hover{
                background-color:  #009688;
            }
            .product-information span span,.left-sidebar h2, .brands_products h2,.productinfo h2,h2.title,.mainmenu ul li a:hover, .mainmenu ul li a.active, .shop-menu ul li a.active,.shop-menu ul li a:hover,.companyinfo h2  span,.footer-bottom p span a{
                color:#009688;
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
    <section>
        <div class="container" ng-controller="ctrl">
            <div class="row" ng-init="getAuction_detail(${id})">

                <div class="col-sm-12 padding-right">
                    <div class="product-details"><!--product-details-->
                        <div class="col-sm-6" style="margin-top:50px;">

                            <div id="jssor_1" style="position: relative; margin: 0 auto; top: 0px; left: 0px; width: 800px; height: 456px; overflow: hidden; visibility: hidden; background-color: white;">
                                <!-- Loading Screen -->
                                <div data-u="loading" style="position: absolute; top: 0px; left: 0px;">
                                    <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
                                    <div style="position:absolute;display:block;background:url('${pageContext.request.contextPath }/resources/img/loading.gif') no-repeat center center;top:0px;left:0px;width:100%;height:100%;"></div>
                                </div>
                                <div data-u="slides" style="cursor: default; position: relative; top: 0px; left: 0px; width: 800px; height: 356px; overflow: hidden;" ng-repeat="image in auc_detail.images">
                                    <div data-p="144.50" style="display: none;">
                                        <img src="http://localhost:9999/resources/{{image.img_path}}" width="640" height="480">
                                        <img  src="http://localhost:9999/resources/{{image.img_path}}" data-u="thumb" />
                                    </div>
                                    <!--<div data-p="144.50" style="display: none;">
                                        <img data-u="image" src="${pageContext.request.contextPath }/resources/images/motor/Untitled-2-Recovered.jpg"/>
                                        <img data-u="thumb" src="${pageContext.request.contextPath }/resources/images/motor/Untitled-2-Recovered.jpg" />
                                    </div>
                                    <div data-p="144.50" style="display: none;">
                                        <img data-u="image" src="${pageContext.request.contextPath }/resources/images/motor/Untitled-3-Recovered.jpg" />
                                        <img data-u="thumb" src="${pageContext.request.contextPath }/resources/images/motor/Untitled-3-Recovered.jpg" />
                                    </div>
                                    <div data-p="144.50" style="display: none;">
                                        <img data-u="image" src="${pageContext.request.contextPath }/resources/images/motor/Untitled-4-Recovered.jpg" />
                                        <img data-u="thumb" src="${pageContext.request.contextPath }/resources/images/motor/Untitled-4-Recovered.jpg"/>
                                    </div>-->



                                    <!--<a data-u="add" href="http://www.jssor.com" style="display:none">Jssor Slider</a>-->

                                </div>
                                <!-- Thumbnail Navigator -->
                                <div data-u="thumbnavigator" class="jssort01" style="position:absolute;left:0px;bottom:0px;width:800px;height:100px;" data-autocenter="1">
                                    <!-- Thumbnail Item Skin Begin -->
                                    <div data-u="slides" style="cursor: default;">
                                        <div data-u="prototype" class="p">
                                            <div class="w">
                                                <div data-u="thumbnailtemplate" class="t"></div>
                                            </div>
                                            <div class="c"></div>
                                        </div>
                                    </div>
                                    <!-- Thumbnail Item Skin End -->
                                </div>
                                <!-- Arrow Navigator -->
                                <span data-u="arrowleft" class="jssora05l" style="top:158px;left:8px;width:40px;height:40px;"></span>
                                <span data-u="arrowright" class="jssora05r" style="top:158px;right:8px;width:40px;height:40px;"></span>
                            </div>

                        </div>

                        <div class="col-sm-6">
                            <div class="product-information"><!--/product-information-->
                                <!-- <img src="images/product-details/new.jpg" class="newarrival" alt="" /> -->              
                                <h2>{{auc_detail.name}}</h2>

                                <span>
                                    <span>{{auc_detail.current_price}} $</span>
                                    <a  class="btn btn-fefault cart" ng-click="bidding(auc_detail.auc_id)">
                                        <i class="fa fa-shopping-cart"></i>
                                        Bid
                                    </a>
                                    <button type="button" class="btn btn-fefault cart">
                                        <i class="fa fa-shopping-cart"></i>
                                        Buy now
                                    </button>
                                    <button type="button" class="btn btn-fefault cart">
                                        <i class="fa fa-shopping-cart"></i>
                                        Add to wishlist
                                    </button>
                                </span>
                                <p><b>ចំនួននៃការ bid:</b> {{auc_detail.number_of_bids}} bids</p>
                                <p><b>ចំនួនៃថ្ងដែលនៅសល់:</b> {{(auc_detail.end_date - date) / (1000 * 60 * 60) % 24 | number:0}} ម៉ោង</p>
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
                        <h2 class="title text-center">ផលិតផលពេញនិយម</h2>

                        <div id="recommended-item-carousel" class="carousel slide" data-ride="carousel">
                            <div class="carousel-inner">
                                <div class="item active">	
                                    <div class="col-sm-2">
                                        <div class="product-image-wrapper">
                                            <div class="single-products">
                                                <div class="productinfo text-center">
                                                    <img src="${pageContext.request.contextPath }/resources/images/GalaxyS5/s-l501(1).jpg" alt="" />
                                                    <h2>$280</h2>
                                                    <p>ទូរស័ព្ទ Galaxy S5</p>
                                                    <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-plus-square"></i>ដាក់ចូល wishlist</a>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-2">
                                        <div class="product-image-wrapper">
                                            <div class="single-products">
                                                <div class="productinfo text-center">
                                                    <img src="${pageContext.request.contextPath }/resources/images/WaterProof/s-l1604 (1).jpg" alt="" />
                                                    <h2>$80</h2>
                                                    <p>នាឡិកា WaterProof</p>
                                                    <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-plus-square"></i>ដាក់ចូល wishlist</a>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-2">
                                        <div class="product-image-wrapper">
                                            <div class="single-products">
                                                <div class="productinfo text-center">
                                                    <img src="${pageContext.request.contextPath }/resources/images/Plugin/s-l5010.jpg" alt="" />
                                                    <h2>$11</h2>
                                                    <p>កាស BOBO</p>
                                                    <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-plus-square"></i>ដាក់ចូល wishlist</a>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-2">
                                        <div class="product-image-wrapper">
                                            <div class="single-products">
                                                <div class="productinfo text-center">
                                                    <img src="${pageContext.request.contextPath }/resources/images/WaterProof/s-l1604 (1).jpg" alt="" />
                                                    <h2>$80</h2>
                                                    <p>នាឡិកា WaterProof</p>
                                                    <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-plus-square"></i>ដាក់ចូល wishlist</a>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-2">
                                        <div class="product-image-wrapper">
                                            <div class="single-products">
                                                <div class="productinfo text-center">
                                                    <img src="${pageContext.request.contextPath }/resources/images/OEMAppleAdapter/s-l500.jpg" alt="" />
                                                    <h2>$16</h2>
                                                    <p>ឆ្នាំសាក IPhone 4/4s</p>
                                                    <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-plus-square"></i>ដាក់ចូល wishlist</a>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-2">
                                        <div class="product-image-wrapper">
                                            <div class="single-products">
                                                <div class="productinfo text-center">
                                                    <img src="${pageContext.request.contextPath }/resources/images/OEMAppleAdapter/s-l500.jpg" alt="" />
                                                    <h2>$16</h2>
                                                    <p>ឆ្នាំសាក IPhone 4/4s</p>
                                                    <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-plus-square"></i>ដាក់ចូល wishlist</a>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">	

                                    <div class="col-sm-2">
                                        <div class="product-image-wrapper">
                                            <div class="single-products">
                                                <div class="productinfo text-center">
                                                    <img src="${pageContext.request.contextPath }/resources/images/eyeClass/s-l1600.jpg" alt="" />
                                                    <h2>$15</h2>
                                                    <p>វែនតា Sun Protection</p>
                                                    <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-plus-square"></i>ដាក់ចូល wishlist</a>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-2">
                                        <div class="product-image-wrapper">
                                            <div class="single-products">
                                                <div class="productinfo text-center">
                                                    <img src="${pageContext.request.contextPath }/resources/images/Asus/s-l500.jpg" alt="" />
                                                    <h2>$450</h2>
                                                    <p>កុំព្យូទ័រ Asus N4532</p>
                                                    <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-plus-square"></i>ដាក់ចូល wishlist</a>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-2">
                                        <div class="product-image-wrapper">
                                            <div class="single-products">
                                                <div class="productinfo text-center">
                                                    <img src="${pageContext.request.contextPath }/resources/images/Asus/s-l500.jpg" alt="" />
                                                    <h2>$450</h2>
                                                    <p>កុំព្យូទ័រ Asus N4532</p>
                                                    <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-plus-square"></i>ដាក់ចូល wishlist</a>
                                                </div>

                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-sm-2">
                                        <div class="product-image-wrapper">
                                            <div class="single-products">
                                                <div class="productinfo text-center">
                                                    <img src="${pageContext.request.contextPath }/resources/images/Asus/s-l500.jpg" alt="" />
                                                    <h2>$450</h2>
                                                    <p>កុំព្យូទ័រ Asus N4532</p>
                                                    <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-plus-square"></i>ដាក់ចូល wishlist</a>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-2">
                                        <div class="product-image-wrapper">
                                            <div class="single-products">
                                                <div class="productinfo text-center">
                                                    <img src="${pageContext.request.contextPath }/resources/images/Asus/s-l500.jpg" alt="" />
                                                    <h2>$450</h2>
                                                    <p>កុំព្យូទ័រ Asus N4532</p>
                                                    <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-plus-square"></i>ដាក់ចូល wishlist</a>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-2">
                                        <div class="product-image-wrapper">
                                            <div class="single-products">
                                                <div class="productinfo text-center">
                                                    <img src="${pageContext.request.contextPath }/resources/images/Asus/s-l500.jpg" alt="" />
                                                    <h2>$450</h2>
                                                    <p>កុំព្យូទ័រ Asus N4532</p>
                                                    <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-plus-square"></i>ដាក់ចូល wishlist</a>
                                                </div>

                                            </div>
                                        </div>
                                    </div>

                                    <
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

    <script src="${pageContext.request.contextPath }/resources/js/angular.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/main_app.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/jquery.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/price-range.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/jquery.scrollUp.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/jquery.prettyPhoto.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/main.js"></script>

    <!--slider-->
    <script type="text/javascript" src="${pageContext.request.contextPath }/resources/jsslide/jssor.slider.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/jsslide/myjs.js"></script>

    <script>
        jssor_1_slider_init();
    </script>
</body>
</html>