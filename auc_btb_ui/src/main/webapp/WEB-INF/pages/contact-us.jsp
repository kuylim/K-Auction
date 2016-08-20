

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>ទំនាក់ទំនង | K-Auction</title>
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
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/contactUs.css">

        <style>
            body{
                color: black;
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

    <div id="contact-page" class="container">
        <div class="bg">
            <div class="row">    		
                <div class="col-sm-12">    			   			
                    <h2 class="title text-center">ទំនាក់ទំនងមកកាន់ <strong>យើងខ្ញុំ</strong></h2>    			    				    				
                    <div id="gmap" class="contact-map">
                    </div>
                </div>			 		
            </div>    	
            <div class="row">  	
                <div class="col-sm-8">
                    <div class="contact-form">
                        <h2 class="title text-center">ព័ត៌មានរបស់លោកអ្នក</h2>
                        <div class="status alert alert-success" style="display: none"></div>
                        <form id="main-contact-form" class="contact-form row" name="contact-form" method="post">
                            <div class="form-group col-md-6">
                                <input type="text" name="name" class="form-control" required="required" placeholder="ឈ្មោះ">
                            </div>
                            <div class="form-group col-md-6">
                                <input type="text" name="phone" class="form-control" required="required" placeholder="លេខទូរស័ព្ទ">
                            </div>
                            <div class="form-group col-md-12">
                                <input type="Email" name="phone" class="form-control" required="required" placeholder="Email">
                            </div>
                            <div class="form-group col-md-12">
                                <input type="text" name="subject" class="form-control" required="required" placeholder="គោលបំណង">
                            </div>
                            <div class="form-group col-md-12">
                                <textarea name="message" id="message" required class="form-control" rows="8" placeholder="មតិយោបលរបស់លោកអ្នក"></textarea>
                            </div>                        
                            <div class="form-group col-md-12">
                                <input type="submit" name="submit" class="btn btn-primary pull-right" value="បញ្ជូនទៅ">
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="contact-info">
                        <h2 class="title text-center">ព័ត៌មានសម្រាប់ទំនាក់ទំនង</h2>
                        <address>
                            <p><strong>K-Auction</strong></p>
                            <p>ផ្ទះលេខ ១២៣​ មហាវិថីសហព័ន្ធរុស្ស៊ី សង្កាត់ទឹកថ្លា ខ័ណ្ឌសែនសុខ រាជធានីភ្នំពេញ</p>
                            <p>លេខទូរស័ព្ទ៖ +855 92 391 577</p>
                            <p>Email: kuylim.tith@gmail.com</p>
                        </address>
                        <div class="social-networks">
                            <h2 class="title text-center">បណ្ដាញសង្គម</h2>
                            <ul>
                                <li>
                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                </li>
                                <li>
                                    <a href="#"><i class="fa fa-twitter"></i></a>
                                </li>
                                <li>
                                    <a href="#"><i class="fa fa-google-plus"></i></a>
                                </li>
                                <li>
                                    <a href="#"><i class="fa fa-youtube"></i></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>    			
            </div>  
        </div>	
    </div><!--/#contact-page-->

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
                    <!-- <div class="col-sm-2">
                            <div class="single-widget">
                                    <h2>Quock Shop</h2>
                                    <ul class="nav nav-pills nav-stacked">
                                            <li><a href="">T-Shirt</a></li>
                                            <li><a href="">Mens</a></li>
                                            <li><a href="">Womens</a></li>
                                            <li><a href="">Gift Cards</a></li>
                                            <li><a href="">Shoes</a></li>
                                    </ul>
                            </div>
                    </div> -->
                    <div class="col-sm-2">
                        <div class="single-widget">
                            <h2>គោលការណ៍</h2>
                            <ul class="nav nav-pills nav-stacked">
                                <li><a href="">របៀបចូលរួមដេញថ្លៃ</a></li>
                                <li><a href="">ដាក់ផលិតផលដេញថ្លៃ</a></li>
                                <li><a href="">សេវាកម្ម</a></li>
                                <!-- <li><a href="">Refund Policy</a></li>
                                <li><a href="">Billing System</a></li>
                                <li><a href="">Ticket System</a></li> -->
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-2">
                        <div class="single-widget">
                            <h2>អំពីយើងខ្ញុំ</h2>
                            <ul class="nav nav-pills nav-stacked">
                                <li><a href="">គេហទំព័ររបស់យើងខ្ញុំ</a></li>
                                <li><a href="">ការផ្លស់ប្តូរ</a></li>
                                <!-- <li><a href="">មុខងារ និងតួនាទី</a></li> -->
                                <li><a href="https://www.google.com.kh/maps/place/Korea+Software+HRD+Center/@11.575766,104.889167,15z/data=!4m5!3m4!1s0x0:0x2c2974b77cdaff4b!8m2!3d11.575766!4d104.889167">ទីតាំង</a></li>
                                <!-- <li><a href="">Affillate Program</a></li> -->
                                <!-- <li><a href="">Copyright</a></li> -->
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-3 col-sm-offset-1">
                        <div class="single-widget">
                            <h2>អំពីលោកអ្នក</h2>
                            <form action="#" class="searchform">
                                <input type="text" placeholder="Email របស់លោកអ្នក" />
                                <button type="submit" class="btn btn-default"><i class="fa fa-arrow-circle-o-right"></i></button>
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



    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=true"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/gmaps.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/contact.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/price-range.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/jquery.scrollUp.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/jquery.prettyPhoto.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/main.js"></script>

    <script src="http://maps.googleapis.com/maps/api/js"></script>

    <script>
        var myCenter = new google.maps.LatLng(11.575768, 104.889166);
        var marker;

        function initialize()
        {
            var mapProp = {
                center: myCenter,
                zoom: 18,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };

            var map = new google.maps.Map(document.getElementById("gmap"), mapProp);

            var marker = new google.maps.Marker({
                position: myCenter,
                animation: google.maps.Animation.BOUNCE
            });

            marker.setMap(map);
        }

        google.maps.event.addDomListener(window, 'load', initialize);
    </script>
</body>
</html>