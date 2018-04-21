<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html lang="en" ng-app="app" ng-cloak="cloak">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>ទំព័រដើម | K-Auction</title>
        <link href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath }/resources/css/font-awesome.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath }/resources/css/prettyPhoto.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath }/resources/css/price-range.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath }/resources/css/animate.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath }/resources/css/main.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath }/resources/css/responsive.css" rel="stylesheet">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/colorbox.css" />

        <link rel="shortcut icon" href="${pageContext.request.contextPath }/resources/images/ico/favicon.ico">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="${pageContext.request.contextPath }/resources/images/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="${pageContext.request.contextPath }/resources/images/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="${pageContext.request.contextPath }/resources/images/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath }/resources/images/ico/apple-touch-icon-57-precomposed.png">

        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/mystyle.css">
        
        <link href="${pageContext.request.contextPath }/resources/admin/js/sweetalert/sweetalert.css" rel="stylesheet">

        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/fonts/font/khmer/auction.css">

        <link href="${pageContext.request.contextPath }/resources/css/cloakstyle.css" rel="stylesheet">
        
        <style type="text/css">
            .choose ul li a,.productinfo p{
                color: black;
            }
            .add-to-cart{
                color:white;
            }
            .productinfo{
                border:1px solid #8BC34A ;
            }
            .choose ul li a,.productinfo p,.category-products .panel-default .panel-heading .panel-title a,.brands-name .nav-stacked li a,.shop-menu ul li a,.mainmenu ul li a{
                color: black;
            }
            .add-to-cart{
                color:white;
            }
        </style>


    </head><!--/head-->

    <body>
        <div >


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
                            <div class="col-sm-5">
                                <div class="input-group">
                                    <input type="text" ng-model="pro_name" class="form-control" placeholder="ស្វែងរក ផលិតផល">
                                    <span class="input-group-btn">
                                        <a class="btn btn-default" href="${pageContext.request.contextPath }/auction/search/{{pro_name}}">
                                            <span class="glyphicon glyphicon-search"></span>
                                        </a>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!--/header-bottom-->
            </header><!--/header-->

            <section id="slider"><!--slider-->
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12">
                            <div id="slider-carousel" class="carousel slide" data-ride="carousel">
                                <ol class="carousel-indicators">
                                    <li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
                                    <li data-target="#slider-carousel" data-slide-to="1"></li>
                                    <li data-target="#slider-carousel" data-slide-to="2"></li>
                                </ol>

                                <div class="carousel-inner">
                                    <div class="item active">
                                        <div class="col-sm-6">
                                            <h1><span>K</span>-AUCTION</h1>
                                            <h2>គេហទំព័រដេញថ្លៃ ទំនិញដំបូងគេបង្អស់នៅកម្ពុជា</h2>
                                            <p>ធ្វើការលក់ផលិតផល ក្នុងតម្លៃមួយដែលោកអ្នកនឹកស្មានមិនដល់ </p>

                                        </div>
                                        <div class="col-sm-6">
                                            <img src="${pageContext.request.contextPath }/resources/images/home/girl1.jpg" class="girl img-responsive" alt="" />
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="col-sm-6">
                                            <h1><span>K</span>-AUCTION</h1>
                                            <h2>គេហទំព័រដេញថ្លៃ ទំនិញដំបូងគេបង្អស់នៅកម្ពុជា</h2>
                                            <p>ធ្វើការលក់ផលិតផល ក្នុងតម្លៃមួយដែលោកអ្នកនឹកស្មានមិនដល់ </p>

                                        </div>
                                        <div class="col-sm-6">
                                            <img src="${pageContext.request.contextPath }/resources/images/home/girl2.jpg" class="girl img-responsive" alt="" />
                                        </div>
                                    </div>

                                    <div class="item">
                                        <div class="col-sm-6">
                                            <h1><span>K</span>-AUCTION</h1>
                                            <h2>គេហទំព័រដេញថ្លៃ ទំនិញដំបូងគេបង្អស់នៅកម្ពុជា</h2>
                                            <p>ធ្វើការលក់ផលិតផល ក្នុងតម្លៃមួយដែលោកអ្នកនឹកស្មានមិនដល់ </p>	
                                        </div>
                                        <div class="col-sm-6">
                                            <img src="${pageContext.request.contextPath }/resources/images/home/girl3.jpg" class="girl img-responsive" alt="" />
                                        </div>
                                    </div>

                                </div>

                                <a href="#slider-carousel" class="left control-carousel hidden-xs" data-slide="prev" >
                                    <i class="fa fa-angle-left" ></i>
                                </a>
                                <a href="#slider-carousel" class="right control-carousel hidden-xs" data-slide="next">
                                    <i class="fa fa-angle-right"></i>
                                </a>
                            </div>

                        </div>
                    </div>
                </div>
            </section><!--/slider-->

            <section>
                <div class="container" ng-controller="ctrl">
                    <div class="row">
                        <div class="col-sm-3">
                            <div class="left-sidebar">

                                <h2>ប្រភេទមុខទំនិញ</h2>

                                <div class="panel-group category-products" id="accordian"><!--category-productsr-->
                                    <div class="panel panel-default" ng-repeat="x in categories" ng-show="x.parent_id == 0">
                                        <div class="panel-heading">
                                            <h4 class="panel-title">
                                                <a data-toggle="collapse" data-parent="#accordian" href= "#_{{x.name}}">
                                                    <span class="badge pull-right"><i class="fa fa-plus"></i></span>
                                                    <!--គ្រឿងអេឡិចត្រូនិច-->
                                                    {{x.name}}
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="_{{x.name}}"   ng-show="x.parent_id == 0" class="panel-collapse collapse">
                                            <div class="panel-body" >
                                                <ul ng-repeat = "y in categories" ng-show = "y.parent_id == x.cat_id">
                                                    <li><a href="${pageContext.request.contextPath }/auction/category/{{y.cat_id}}">{{y.name}}</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title"><a href="#">ផ្សេងៗ</a></h4>
                                        </div>
                                    </div>
                                </div><!--/category-products-->

                                <div class="brands_products"><!--brands_products-->
                                    <h2>ម៉ាកផលិតផល</h2>
                                    <div class="brands-name">
                                        <ul class="nav nav-pills nav-stacked">
                                            <li ng-repeat=" br in brand"><a href="${pageContext.request.contextPath }/auction/brand/{{br.brand_id}}"> <span class="pull-right">({{br.number_of_brand}})</span>{{br.name}}</a></li>
                                        </ul>
                                    </div>
                                </div><!--/brands_products-->


                            </div>
                        </div>

                        <div class="col-sm-9 padding-right">
                            <div class="features_items"><!--features_items-->
                                <h2 class="title text-center">ផលិតផល ដែលពេញនិយម</h2>
                                <div ng-repeat=" auc in auctions" class="col-sm-4">
                                    <div  class="product-image-wrapper">
                                        <div class="single-products">
                                            <div class="productinfo text-center">
                                                <a href="${pageContext.request.contextPath }/product-details/{{auc.auc_id}}"><img src="http://localhost:9999/resources/{{auc.images[0].img_path}}" alt="" width="256" height="256"/></a>
                                                <h2>{{auc.current_price}} $</h2>
                                                <p>{{auc.name}}</p>

                                                <security:authorize access="isAuthenticated()">
                                                    <span ng-init="getCus(<security:authentication property="principal.id" />);"></span>    
                                                    <a ng-click="bidding(auc.auc_id)" class="btn btn-success add-to-cart"><i class="fa fa-hand-paper-o"></i>Bid</a>
                                                </security:authorize>

                                                <security:authorize access="isAnonymous()">
                                                    <a href="/login" class="btn btn-success add-to-cart"><i class="fa fa-hand-paper-o"></i>Bid</a>
                                                </security:authorize>      
                                            </div>
                                        </div>
                                        <div class="choose">
                                            <ul class="nav nav-pills nav-justified">
                                                <li><a href="#"><i class="fa fa-plus-square"></i>ដាក់ចូល wishlist</a></li>
                                                <li><a href="#"><i class="fa fa-money"></i>ទិញឥឡូវនេះ</a></li>
                                            </ul>
                                        </div>
                                        <div class="choose">
                                            <ul class="nav nav-pills nav-justified">
                                                <li><a>{{auc.number_of_bids}} bids</a></li>        
                                                <li><a>{{auc.remainingTime | durationview}}</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>

                                <div id="pagination" class="pull-right"></div>

                            </div><!--features_items-->
                            

                            <div class="recommended_items"><!--recommended_items-->
                                <h2 class="title text-center">ផលិតផលថ្មី</h2>

                                <div id="recommended-item-carousel" class="carousel slide" data-ride="carousel">
                                    <div class="carousel-inner">
                                        <div class="item active">	
                                            <div class="col-sm-4" ng-repeat=" auc in New_auctions | limitTo : 3 : 0">
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
                                            <div class="col-sm-4" ng-repeat=" auc in New_auctions | limitTo : 3 : 3">
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
                                                            

            <footer id="footer"><!--Footer-->
                <div class="footer-top">

                </div>

                <div class="footer-widget">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-2">
                                <div class="single-widget">
                                    <h2>សេវាកម្ម</h2>
                                    <ul class="nav nav-pills nav-stacked">
                                        <li><a href="">Online Help</a></li>
                                        <li><a href="contact-us.html">ទំនាក់ទំនងយើងខ្ញុំ</a></li>
                                        <!-- <li><a href="">កម្មង់</a></li> -->
                                        <li><a href="">ផ្លាស់ប្ដូរការដេញថ្លៃ</a></li>

                                        <!-- <li><a href="">FAQ’s</a></li> -->
                                    </ul>
                                </div>
                            </div>
                            
                            <div class="col-sm-2">
                                <div class="single-widget">
                                    <h2>គោលការណ៍</h2>
                                    <ul class="nav nav-pills nav-stacked">
                                        <li><a href="">របៀបចូលរួមដេញថ្លៃ</a></li>
                                        <li><a href="">ដាក់ផលិតផលដេញថ្លៃ</a></li>
                                        <li><a href="">សេវាកម្ម</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-sm-2">
                                <div class="single-widget">
                                    <h2>អំពីយើងខ្ញុំ</h2>
                                    <ul class="nav nav-pills nav-stacked">
                                        <li><a href="">គេហទំព័ររបស់យើងខ្ញុំ</a></li>
                                        <li><a href="">ការផ្លស់ប្តូរ</a></li>
                                        <li><a href="https://www.google.com.kh/maps/place/Korea+Software+HRD+Center/@11.575766,104.889167,15z/data=!4m5!3m4!1s0x0:0x2c2974b77cdaff4b!8m2!3d11.575766!4d104.889167">ទីតាំង</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-sm-3 col-sm-offset-1">
                                <div class="single-widget">
                                    <h2>អំពីលោកអ្នក</h2>
                                    <form action="#" class="searchform">
                                        <input type="text" placeholder="Email របស់លោកអ្នក" />
                                        <button type="submit" class="btn btn-success"><i class="fa fa-arrow-circle-o-right"></i></button>
                                        <p>ទទួលបានការកែប្រែថ្មីៗរបស់<br />គេហទំព័ររបស់យើងខ្ញុំ </p>
                                    </form>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

                <div class="footer-bottom">
                    <div class="container">
                        <div class="row">
                            <p class="pull-left">Copyright © 2016 K-Auction. All rights reserved.</p>

                        </div>
                    </div>
                </div>

            </footer><!--/Footer-->
        </div>
                                                            
                                                            <noscript><h2 style="color: #ff0000">Seems your browser doesn't support Javascript! Websocket relies on Javascript being enabled. Please enable
    Javascript and reload this page!</h2></noscript>
                                                            
        <script src="${pageContext.request.contextPath }/resources/js/sockjs-0.3.4.js"></script>
        <script src="${pageContext.request.contextPath }/resources/js/stomp.js"></script>
        
        <script type="text/javascript">
             alert(2220000);
        var stompClient = null;
        
        function setConnected(connected) {
//            document.getElementById('connect').disabled = connected;
//            document.getElementById('disconnect').disabled = !connected;
//            document.getElementById('conversationDiv').style.visibility = connected ? 'visible' : 'hidden';
//            document.getElementById('response').innerHTML = '';
        }
        
        function connect() {
            alert("connect");
            var socket = new SockJS('/hello');
            stompClient = Stomp.over(socket);            
            stompClient.connect({}, function(frame) {
                setConnected(true);
                console.log('Connected: ' + frame);
                stompClient.subscribe('/topic/greetings', function(greeting){
                	alert("KE SEND MOK HOUY...");
                    showGreeting(JSON.parse(greeting.body).content);
                });
            });
        }
        
        function disconnect() {
            alert(stompClient);
            if (stompClient != null) {
                stompClient.disconnect();
            }
            setConnected(false);
            alert("Disconnected");
            console.log("Disconnected");
        }
        
        function sendName() {
            var name = document.getElementById('name').value;
            stompClient.send("/app/hello", {}, JSON.stringify({ 'name': name }));
        }
        
//        function showGreeting(message) {
//            var response = document.getElementById('response');
//            var p = document.createElement('p');
//            p.style.wordWrap = 'break-word';
//            p.appendChild(document.createTextNode(message));
//            response.appendChild(p);
//        }
        //disconnect();
        connect();
        
        
    </script>

        <script src="${pageContext.request.contextPath }/resources/js/momentjs/moment.js"></script> 
        <script src="${pageContext.request.contextPath }/resources/js/angular.min.js"></script>                                                                                                     

        <script src="${pageContext.request.contextPath }/resources/js/jquery.js"></script>
        <script src="${pageContext.request.contextPath }/resources/js/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath }/resources/js/jquery.scrollUp.min.js"></script>
        <script src="${pageContext.request.contextPath }/resources/js/price-range.js"></script>
        <script src="${pageContext.request.contextPath }/resources/js/jquery.prettyPhoto.js"></script>
        <script src="${pageContext.request.contextPath }/resources/js/main.js"></script>
        <!-- boot page -->
        <script src="${pageContext.request.contextPath }/resources/js/jquery.bootpag.min.js"></script>
        <!-- main app -->
        

        <!--pop up product detail-->
        <script src="${pageContext.request.contextPath }/resources/js/jquery.colorbox.js"></script>
        <script src="${pageContext.request.contextPath }/resources/admin/js/sweetalert/sweetalert.min.js"></script>
        
<!--        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.0-rc.0/angular.min.js"></script>
        <script src="https://js.pusher.com/3.2/pusher.min.js"></script>-->
<!--        <script src ="${pageContext.request.contextPath }/resources/js/pusher-angular.min.js"></script>-->
        <script src="${pageContext.request.contextPath }/resources/js/main_app.js"></script>
        

        
    </body>
</html>