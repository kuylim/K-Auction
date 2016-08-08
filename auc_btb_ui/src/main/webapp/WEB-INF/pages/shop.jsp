<%-- 
    Document   : shop
    Created on : Aug 1, 2016, 10:30:21 PM
    Author     : V C
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
 
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>ផលិតផល | K-Auction</title>
    <link href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/css/font-awesome.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/css/prettyPhoto.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/css/price-range.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/css/animate.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath }/resources/css/main.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath }/resources/css/responsive.css" rel="stylesheet">
       
    <link rel="shortcut icon" href="../resources/images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="${pageContext.request.contextPath }/resources/images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="${pageContext.request.contextPath }/resources/images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="${pageContext.request.contextPath }/resources/images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath }/resources/images/ico/apple-touch-icon-57-precomposed.png">

	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/navyColor.css">
    </head><!--/head-->

<body>
	<header id="header"><!--header-->
		<div class="header_top"><!--header_top-->
			<div class="container">
				<div class="row">
					<div class="col-sm-6 ">
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
								<li><a href="wishlist.html"><i class="fa fa-star"></i> របស់ដែលប្រាថ្នា</a></li>
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
								<li><a href="index.html">ទំព័រដើម</a></li>
								<li class="dropdown"><a href="#" class="active">K-Auction<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                        <li><a href="shop.html">ផលិតផល</a></li> 
										<li><a href="login.html">ចាកចេញ</a></li> 
                                    </ul>
                                </li>
                                <li><a href="contact-us.html">ទំនាក់ទំនង</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="search_box pull-right">
							<input type="text" placeholder="ស្វែងរក"/>
						</div>
					</div>
				</div>
				</div>
			</div>
	</header>
<section>
	<div class="container">
			<div class="row">
				<div class="col-sm-3">
					<div class="left-sidebar">
						<h2>ប្រភេទ</h2>
						<div class="panel-group category-products" id="accordian"><!--category-productsr-->
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordian" href="#sportswear">
											<span class="badge pull-right"><i class="fa fa-plus"></i></span>
											គ្រឿងអេឡិចត្រូនិច
										</a>
									</h4>
								</div>
								<div id="sportswear" class="panel-collapse collapse">
									<div class="panel-body">
										<ul>
                                        	<li><a href="#">កុំព្យូទ័រ </a></li>
                                            <li><a href="#">ទូរស័ព្ទ</a></li>
											<li><a href="#">ទូរទស្សន៍ </a></li>
											<li><a href="#">ទូរទឹកកក </a></li>
											<li><a href="#">ម៉ាស៊ីនត្រជាក់ </a></li>
											<li><a href="#">ម៉ាស៊ីនបោកខោអាវ </a></li>
											<li><a href="#">ម៉ាស៊ីនបូមធូលី </a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordian" href="#mens">
											<span class="badge pull-right"><i class="fa fa-plus"></i></span>
											គ្រឿងយន្ដ
										</a>
									</h4>
								</div>
								<div id="mens" class="panel-collapse collapse">
									<div class="panel-body">
										<ul>
											<li><a href="#">រថយន្ដ</a></li>
											<li><a href="#">ម៉ូតូ</a></li>
										</ul>
									</div>
								</div>
							</div>
							
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordian" href="#womens">
											<span class="badge pull-right"><i class="fa fa-plus"></i></span>
											អចលនទ្រព្យ
										</a>
									</h4>
								</div>
								<div id="womens" class="panel-collapse collapse">
									<div class="panel-body">
										<ul>
											<li><a href="#">ដី</a></li>
											<li><a href="#">ផ្ទះ</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title"><a href="#">កាបួបនារី</a></h4>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title"><a href="#">ស្បែកជើង</a></h4>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title"><a href="#">ផ្សេងៗ</a></h4>
								</div>
							</div>
						</div><!--/category-productsr-->
					
						<div class="brands_products"><!--brands_products-->
							<h2>ម៉ាកផលិតផល</h2>
							<div class="brands-name">
								<ul class="nav nav-pills nav-stacked">
									<li><a href="#"> <span class="pull-right">(99)</span>Samsung</a></li>
									<li><a href="#"> <span class="pull-right">(20)</span>Honda</a></li>
									<li><a href="#"> <span class="pull-right">(27)</span>Panasonic</a></li>
									<li><a href="#"> <span class="pull-right">(10)</span>LG</a></li>
									<li><a href="#"> <span class="pull-right">(5)</span>Dell</a></li>
									<li><a href="#"> <span class="pull-right">(9)</span>KIA</a></li>
									<li><a href="#"> <span class="pull-right">(3)</span>Hitachi</a></li>
                                    <li><a href="#"> <span class="pull-right">(30)</span>ផ្សេងៗ</a></li>
								</ul>
							</div>
						</div><!--/brands_products-->
						
						<div class="shipping text-center"><!--shipping-->
							<img src="${pageContext.request.contextPath }/resources/images/home/wing1 (2).jpg" alt="" />
						</div><!--/shipping-->
						
					</div>
				</div>
				
				<div class="col-sm-9 padding-right">
					<div class="features_items"><!--features_items-->
						<h2 class="title text-center">មុខទំនិញ</h2>
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<a href="product-details.html"><img src="${pageContext.request.contextPath }/resources/images/motorcycle/motorcycle-8.jpg" alt="" /></a>
										<h2>$10,000</h2>
										<p>Second hand car</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-hand-paper-o"></i>Bid</a>
									</div>
								</div>
								<div class="choose">
									<ul class="nav nav-pills nav-justified">
										<li><a href=""><i class="fa fa-plus-square"></i>ដាក់ទៅកាន់ wishlist</a></li>
										<li><a href=""><i class="fa fa-shopping-cart"></i>ទិញឥឡូវនេះ</a></li>
									</ul>
								</div>
                                <div class="choose">
									<ul class="nav nav-pills nav-justified">
										<li><a>5 bids</a></li>
										<li><a>នៅសល់ ៧ ថ្ងៃទៀត</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<a href=""><img src="${pageContext.request.contextPath }/resources/images/motorcycle/Honda-dream-014.jpg" alt="" /></a>
										<h2>$56</h2>
										<p>Easy Polo Black Edition</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-hand-paper-o"></i>Bid</a>
									</div>
								</div>
								<div class="choose">
									<ul class="nav nav-pills nav-justified">
										<li><a href=""><i class="fa fa-plus-square"></i>ដាក់ទៅកាន់ wishlist</a></li>
										<li><a href=""><i class="fa fa-shopping-cart"></i>ទិញឥឡូវនេះ</a></li>
									</ul>
								</div>
                                <div class="choose">
									<ul class="nav nav-pills nav-justified">
										<li><a>5 bids</a></li>
										<li><a>នៅសល់ ៧ ថ្ងៃទៀត</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<a href=""><img src="${pageContext.request.contextPath }/resources/images/motorcycle/scoopy-pink_full.jpg" alt="" /></a>
										<h2>$56</h2>
										<p>Easy Polo Black Edition</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-hand-paper-o"></i>Bid</a>
									</div>
								</div>
								<div class="choose">
									<ul class="nav nav-pills nav-justified">
										<li><a href=""><i class="fa fa-plus-square"></i>ដាក់ទៅកាន់ wishlist</a></li>
										<li><a href=""><i class="fa fa-shopping-cart"></i>ទិញឥឡូវនេះ</a></li>
									</ul>
								</div>
                                <div class="choose">
									<ul class="nav nav-pills nav-justified">
										<li><a>5 bids</a></li>
										<li><a>នៅសល់ ៧ ថ្ងៃទៀត</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<a href=""><img src="${pageContext.request.contextPath }/resources/images/car/CHRY_200_2015.png" alt="" /></a>
										<h2>$10,000</h2>
										<p>ឡានទាន់សម័យ</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-hand-paper-o"></i>Bid</a>
									</div>
									<img src="${pageContext.request.contextPath }/resources/images/home/new.png" class="new" alt="" />
								</div>
								<div class="choose">
									<ul class="nav nav-pills nav-justified">
										<li><a href=""><i class="fa fa-plus-square"></i>ដាក់ទៅកាន់ wishlist</a></li>
										<li><a href=""><i class="fa fa-shopping-cart"></i>ទិញឥឡូវនេះ</a></li>
									</ul>
								</div>
                                <div class="choose">
									<ul class="nav nav-pills nav-justified">
										<li><a>5 bids</a></li>
										<li><a>នៅសល់ ៧ ថ្ងៃទៀត</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<a href=""><img src="${pageContext.request.contextPath }/resources/images/car/TOYO_RAV4_2014.png" alt="" /></a>
										<h2>$20,000</h2>
										<p>ឡានទាន់សម័យ</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-hand-paper-o"></i>Bid</a>
									</div>
									<img src="${pageContext.request.contextPath }/resources/images/home/sale.png" class="new" alt="" />
								</div>
								<div class="choose">
									<ul class="nav nav-pills nav-justified">
										<li><a href=""><i class="fa fa-plus-square"></i>ដាក់ទៅកាន់ wishlist</a></li>
										<li><a href=""><i class="fa fa-shopping-cart"></i>ទិញឥឡូវនេះ</a></li>
									</ul>
								</div>
                                <div class="choose">
									<ul class="nav nav-pills nav-justified">
										<li><a>5 bids</a></li>
										<li><a>នៅសល់ ៧ ថ្ងៃទៀត</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<a href=""><img src="${pageContext.request.contextPath }/resources/images/car/34.png" alt="" /></a>
										<h2>$15,000</h2>
										<p>ឡានទាន់សម័យ</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-hand-paper-o"></i>Bid</a>
									</div>
								</div>
								<div class="choose">
									<ul class="nav nav-pills nav-justified">
										<li><a href=""><i class="fa fa-plus-square"></i>ដាក់ទៅកាន់ wishlist</a></li>
										<li><a href=""><i class="fa fa-shopping-cart"></i>ទិញឥឡូវនេះ</a></li>
									</ul>
								</div>
                                <div class="choose">
									<ul class="nav nav-pills nav-justified">
										<li><a>5 bids</a></li>
										<li><a>នៅសល់ ៧ ថ្ងៃទៀត</a></li>
									</ul>
								</div>
							</div>
						</div>
						
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<a href=""><img src="${pageContext.request.contextPath }/resources/images/watch/watch2.jpg" alt="" /></a>
										<h2>$30</h2>
										<p>នាឡិកាទំនើប</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-hand-paper-o"></i>Bid</a>
									</div>
								</div>
								<div class="choose">
									<ul class="nav nav-pills nav-justified">
										<li><a href=""><i class="fa fa-plus-square"></i>ដាក់ទៅកាន់ wishlist</a></li>
										<li><a href=""><i class="fa fa-shopping-cart"></i>ទិញឥឡូវនេះ</a></li>
									</ul>
								</div>
                                <div class="choose">
									<ul class="nav nav-pills nav-justified">
										<li><a>5 bids</a></li>
										<li><a>នៅសល់ ៧ ថ្ងៃទៀត</a></li>
									</ul>
								</div>
							</div>
						</div>
						
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<a href=""><img src="${pageContext.request.contextPath }/resources/images/watch/wa.jpg" alt="" /></a>
										<h2>$40</h2>
										<p>នាឡិកាទំនើប</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-hand-paper-o"></i>Bid</a>
									</div>
								</div>
								<div class="choose">
									<ul class="nav nav-pills nav-justified">
										<li><a href=""><i class="fa fa-plus-square"></i>ដាក់ទៅកាន់ wishlist</a></li>
										<li><a href=""><i class="fa fa-shopping-cart"></i>ទិញឥឡូវនេះ</a></li>
									</ul>
								</div>
                                <div class="choose">
									<ul class="nav nav-pills nav-justified">
										<li><a>5 bids</a></li>
										<li><a>នៅសល់ ៧ ថ្ងៃទៀត</a></li>
									</ul>
								</div>
							</div>
						</div>
						
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<a href=""><img src="${pageContext.request.contextPath }/resources/images/watch/watch.jpg" alt="" /></a>
										<h2>$56</h2>
										<p>នាឡិកាទំនើប</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-hand-paper-o"></i>Bid</a>
									</div>
								</div>
								<div class="choose">
									<ul class="nav nav-pills nav-justified">
										<li><a href=""><i class="fa fa-plus-square"></i>ដាក់ទៅកាន់ wishlist</a></li>
										<li><a href=""><i class="fa fa-shopping-cart"></i>ទិញឥឡូវនេះ</a></li>
									</ul>
								</div>
                                <div class="choose">
									<ul class="nav nav-pills nav-justified">
										<li><a>5 bids</a></li>
										<li><a>នៅសល់ ៧ ថ្ងៃទៀត</a></li>
									</ul>
								</div>
							</div>
						</div>
						
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<a href=""><img src="${pageContext.request.contextPath }/resources/images/shop/bag/s-l1600.jpg" alt="" /></a>
										<h2>$10</h2>
										<p>កាបូបស្រស់ស្អាត</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-hand-paper-o"></i>Bid</a>
									</div>
								</div>
								<div class="choose">
									<ul class="nav nav-pills nav-justified">
										<li><a href=""><i class="fa fa-plus-square"></i>ដាក់ទៅកាន់ wishlist</a></li>
										<li><a href=""><i class="fa fa-shopping-cart"></i>ទិញឥឡូវនេះ</a></li>
									</ul>
								</div>
                                <div class="choose">
									<ul class="nav nav-pills nav-justified">
										<li><a>5 bids</a></li>
										<li><a>នៅសល់ ៧ ថ្ងៃទៀត</a></li>
									</ul>
								</div>
							</div>
						</div>
						
						
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<a href=""><img src="${pageContext.request.contextPath }/resources/images/shop/bag1/s-l500.jpg" alt="" /></a>
										<h2>$15</h2>
										<p>កាបូបស្រស់ស្អាត</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-hand-paper-o"></i>Bid</a>
									</div>
								</div>
								<div class="choose">
									<ul class="nav nav-pills nav-justified">
										<li><a href=""><i class="fa fa-plus-square"></i>ដាក់ទៅកាន់ wishlist</a></li>
										<li><a href=""><i class="fa fa-shopping-cart"></i>ទិញឥឡូវនេះ</a></li>
									</ul>
								</div>
                                <div class="choose">
									<ul class="nav nav-pills nav-justified">
										<li><a>5 bids</a></li>
										<li><a>នៅសល់ ៧ ថ្ងៃទៀត</a></li>
									</ul>
								</div>
							</div>
						</div>
						
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<a href=""><img src="${pageContext.request.contextPath }/resources/images/Bags/Pretty-Life-Modern-Pure-Color-Grid-Handbags-1.jpg" alt="" /></a>
										<h2>$20</h2>
										<p>កាបូបស្រស់ស្អាត</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-hand-paper-o"></i>Bid</a>
									</div>
								</div>
								<div class="choose">
									<ul class="nav nav-pills nav-justified">
										<li><a href=""><i class="fa fa-plus-square"></i>ដាក់ទៅកាន់ wishlist</a></li>
										<li><a href=""><i class="fa fa-shopping-cart"></i>ទិញឥឡូវនេះ</a></li>
									</ul>
								</div>
                                <div class="choose">
									<ul class="nav nav-pills nav-justified">
										<li><a>5 bids</a></li>
										<li><a>នៅសល់ ៧ ថ្ងៃទៀត</a></li>
									</ul>
								</div>
							</div>
						</div>
						
						<ul class="pagination">
							<li class="active"><a href="">1</a></li>
							<li><a href="">2</a></li>
							<li><a href="">3</a></li>
							<li><a href="">&raquo;</a></li>
						</ul>
					</div><!--features_items-->
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
	<script src="js/price-range.js"></script>
    <script src="js/jquery.scrollUp.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/main.js"></script>
</body>
</html>
