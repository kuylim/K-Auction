
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Login | K-Auction</title>
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

	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/colorbox.css" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/jquery.colorbox.js"></script>


	 <script src="${pageContext.request.contextPath }/resources/js/jquery.js"></script>
	<script src="${pageContext.request.contextPath }/resources/js/price-range.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/jquery.scrollUp.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/jquery.prettyPhoto.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/main.js"></script>
	

<link href="http://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="ws-lightbox.js" type="text/javascript"></script>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/resources/ws-lightbox.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/mystyle.css">


<div class="jquery-script-ads"><script type="text/javascript"><!--
google_ad_client = "ca-pub-2783044520727903";

google_ad_slot = "2780937993";
google_ad_width = 728;
google_ad_height = 90;
//-->
</script>
<script type="text/javascript"
src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
</script></div>
<script type="text/javascript">
	$(document).ready(function(){
		$(".youtube-video").click(function(){
			var params = {};
			params.type = 'youtube';
			params.src = 'https://www.youtube.com/embed/vFT8HXJlvfA';
			params.height = 400;
			params.width = 600;
			ws_lightbox.open(params);

		});
	});
</script>
</head><!--/head-->

<body>
	<header id="header"><!--header-->
		<div class="header_top"><!--header_top-->
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<div class="contactinfo">
							<ul class="nav nav-pills">
								<li><a href=""><i class="fa fa-phone"></i> +2 95 01 88 821</a></li>
								<li><a href=""><i class="fa fa-envelope"></i> info@domain.com</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="social-icons pull-right">
							<ul class="nav navbar-nav">
								<li><a href=""><i class="fa fa-facebook"></i></a></li>
								<li><a href=""><i class="fa fa-twitter"></i></a></li>
								<li><a href=""><i class="fa fa-linkedin"></i></a></li>
								<li><a href=""><i class="fa fa-dribbble"></i></a></li>
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
							<a href="index"><img src="${pageContext.request.contextPath }/resources/images/home/logochange.gif" alt="" /></a>
						</div>
						
					</div>
					<div class="col-sm-8">
						<div class="shop-menu pull-right">
							<ul class="nav navbar-nav">
								<li><a href="account"><i class="fa fa-user"></i> គណនីយ</a></li> 
								<li><a href="wishlist"><i class="fa fa-star"></i> របស់ដែលអ្នកប្រាថ្នា</a></li>
								
								<li><a href="cart"><i class="fa fa-shopping-cart"></i> កន្រ្តក</a></li>
								<li><a href="login" class="active"><i class="fa fa-lock"></i> ចូលទៅកាន់</a></li>
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
								<li><a href="index">ទំព័រដើម</a></li>
								<li class="dropdown"><a href="#">K-Auction<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                        <li><a href="shop.html">ផលិតផល</a></li>
										 
										<li><a href="login" class="active">ចូលទៅកាន់</a></li> 
                                    </ul>
                                </li> 
								<li><a href="contact-us">ទំនាក់ទំនង</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="search_box pull-right">
							<input type="text" placeholder="Search"/>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header-bottom-->
	</header><!--/header-->
	
	<section id="form"><!--form-->
		<div class="container">
			<div class="row">
				<div class="col-sm-4 col-sm-offset-1">
					<div class="login-form"><!--login form-->
						<h2>ចូលទៅ​កាន់គណនីយ របស់អ្នក</h2>
						<form action="#">
							<input type="text" placeholder="Username or Email" />
							<input type="password" placeholder="Password" />
							<span>
								<input type="checkbox" class="checkbox"> 
								Keep me signed in
							</span>
							<button type="submit" class="btn btn-default">ចូលទៅកាន់</button>
						</form>
					</div><!--/login form-->
				</div>
				<div class="col-sm-1">
					<h2 class="or">ឬ</h2>
				</div>
				<div class="col-sm-4">
					<div class="signup-form"><!--sign up form-->
						<h2>បង្កើត គណនីយថ្មី!</h2>
						<form action="#">
							<input type="text" placeholder="First Name"/>
							<input type="email" placeholder="Last Name"/>
                                                                                                                               <input type="text" placeholder="User Name"/>
                                                                                                                               <input type="email" placeholder="Email"/>
                                                                                                                               <input type="password" placeholder="Password"/>
                                                                                                                                 <input type="password" placeholder="Comfirm Password"/>
                                                                                                                                <input type="text" placeholder="Address"/>
                                                                                                                                <input type="text" placeholder="Phone Number"/>
                                                                                                                              
							<button type="submit" class="btn btn-default" >បង្កើត</button>
						</form>
					</div><!--/sign up form-->
				</div>
			</div>
		</div>
	</section><!--/form-->
	
	
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
								<li><a href="contact-us">ទំនាក់ទំនងយើងខ្ញុំ</a></li>
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


	

  
   

	
</body>
</html>